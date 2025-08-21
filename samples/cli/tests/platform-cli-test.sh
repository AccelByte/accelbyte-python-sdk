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
platform-update-dlc-item-config '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "cqsuGKHhMRWLVd3D", "rewards": [{"currency": {"currencyCode": "lhLuIpomM8sm1Mia", "namespace": "I1mX2tJoARtdbBe7"}, "item": {"itemId": "udsMrok0WvGYYnx4", "itemName": "V709xbnGezKsDwG2", "itemSku": "omOR2nvYI9TVqJdv", "itemType": "zcWbfUpaXp5JMl5L"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "4bTxBmZjdrrIxsB0", "namespace": "NRsB1fPqqRRulpqp"}, "item": {"itemId": "ymDkQhtrHWwRVnwV", "itemName": "BOqOHi8pWGd1juYh", "itemSku": "iqjRJOqB5F93zFQb", "itemType": "JndUDpdONneAczbB"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZnqAQUoY1GjlIIk0", "namespace": "iKoTTS1j02o7JjTX"}, "item": {"itemId": "AQN0qdskdQV0TqI8", "itemName": "EFnmDbxIxi4YKlON", "itemSku": "k2Q5Y4Jvaizwiila", "itemType": "tuUjjt9lIMGql5El"}, "quantity": 62, "type": "CURRENCY"}], "rvn": 1}, {"autoUpdate": false, "enableRevocation": false, "id": "EIIlGcHB3CfR3ncD", "rewards": [{"currency": {"currencyCode": "lwi3v3MFFJ1KesKo", "namespace": "ELCpobBEG8X645xp"}, "item": {"itemId": "dXpai0rYaT5hOPja", "itemName": "f3H0tYighU0VUfcY", "itemSku": "HJbBfAKSiPW3VgsZ", "itemType": "XiR1DJ7HVWqMkNSa"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "WDFJvJBWic7UkBeI", "namespace": "XuqDuAXI66bQ71w0"}, "item": {"itemId": "deoV9Lx5RDA1l2Xc", "itemName": "rciYNEzvSZIPkhSg", "itemSku": "ORcz5S5BvmgBLxh4", "itemType": "ijFnE3Tam69qSZ7P"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "6f6QkmZXElW9YfRS", "namespace": "se6AAz3S4czz0QKF"}, "item": {"itemId": "lAVmVLu4AOec0z8e", "itemName": "Beeoip68J1nsv4W2", "itemSku": "OJhtafxMSJlHeb34", "itemType": "sZKHcl5LLLOexL4f"}, "quantity": 31, "type": "ITEM"}], "rvn": 90}, {"autoUpdate": true, "enableRevocation": true, "id": "ND2tcBFpX8lNtFEJ", "rewards": [{"currency": {"currencyCode": "7tnkY6Mca5afj12K", "namespace": "2IzrBvvWm4udE0OX"}, "item": {"itemId": "udXgNne8kJATwlc6", "itemName": "esUp6Sw1I98jeZQ7", "itemSku": "hfxnhLd3Knaknoed", "itemType": "9DHhLOqQGhCUr6iT"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "j0riFc5HTHQIoVsG", "namespace": "o7dwV9DBqFKHQkET"}, "item": {"itemId": "JyTlUrwDTnoujQD4", "itemName": "IEiH9Z5qXn3aoRtl", "itemSku": "qOECohViHA5CzgFS", "itemType": "y8X1A3PrIfapq5AA"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"currencyCode": "H3mtgWgU4pCAKxeE", "namespace": "70CaunQNxot371W9"}, "item": {"itemId": "G4AvQkqsGnmyo5JJ", "itemName": "TUVmb8GEXFTlEMEs", "itemSku": "FzYqwgK1Np5nodqp", "itemType": "Lm7FhJBNXzAFdO0K"}, "quantity": 16, "type": "CURRENCY"}], "rvn": 34}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config '{"data": [{"platform": "PSN", "platformDlcIdMap": {"f6kiTdSGv2LFjAKY": "7CbgsWqFWZX7kPBo", "m8F9GLLTG8phc3n4": "iLoIllKlpO2pqiXJ", "F3WGRaoQomSJC4Dd": "rKF7SUQPLG59e0k5"}}, {"platform": "PSN", "platformDlcIdMap": {"zcswwVeMK6MbGIVI": "u8vvwLc7KY3uVoJX", "TIMtpgkieDyF97lG": "dMiHKxbWCYzo8yO2", "KTK9tmmOnYnOpas6": "ghP1y4Zi7s7QBlk4"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"Z44B1GZgKg4uKxaC": "gcGLuC3brWdTYCfH", "kIySok5DiXZtLW87": "rGysryod3dNQrmsA", "pRA6HX3RwrKt2eco": "zL0TOg54vCE48L5o"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "LF6M4lNa4JUMSHNg", "endDate": "1979-06-15T00:00:00Z", "grantedCode": "RqCV7usamANkZlOX", "itemId": "9Sfo95HgXqKhTPkw", "itemNamespace": "fLM9uSybRzWek2gZ", "language": "Ksw-SUOB", "metadata": {"c6bWvgpVyW9dD1kO": {}, "mvrAejcq2LgkQuaS": {}, "7RBx3vim02jBOxrZ": {}}, "origin": "Steam", "quantity": 100, "region": "yvpcLYOWA8NjxOna", "source": "REFERRAL_BONUS", "startDate": "1980-04-30T00:00:00Z", "storeId": "9Sk4lq2faBcAXXKl"}, {"collectionId": "hvyH8paOJtxqMPpc", "endDate": "1995-09-19T00:00:00Z", "grantedCode": "fRwNj547fH0XrKED", "itemId": "pEY8VnocGAjci0V3", "itemNamespace": "tBf2jnHGKXphn50c", "language": "Uqog-DJnH", "metadata": {"qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}, "oGH1XEfY6QAYn6WQ": {}}, "origin": "Playstation", "quantity": 95, "region": "Y6vSkVFWdsbYuVEG", "source": "ACHIEVEMENT", "startDate": "1983-06-17T00:00:00Z", "storeId": "YheR3j5mNZ6vwv7K"}, {"collectionId": "8Asvt1j1Rx59hesN", "endDate": "1995-11-08T00:00:00Z", "grantedCode": "y2NvZ85DDKDAF8KD", "itemId": "sBZOuYQJ03BAHZ7c", "itemNamespace": "53q7akMpcmnnx6RV", "language": "RSK-WQ", "metadata": {"7aZK3h65hbN15zfQ": {}, "SfQrtfF3TQN0OcND": {}, "Lr36vzohZyjMQAg5": {}}, "origin": "Nintendo", "quantity": 69, "region": "PYhrLTyU8OhgfY9J", "source": "REWARD", "startDate": "1990-09-14T00:00:00Z", "storeId": "yvfvHEsJKQQewVLM"}], "userIds": ["meGelYF5wWaDhukU", "affoflEIByYqeKN0", "UoAnaRcYp7FUjfIG"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["4khGG4vZFTYnPkmS", "u4PWam1jxR7SETWj", "teoc8fgvZDDhoO05"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'oKqymxLD1Lcvw6T6' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "mZEiwxxElpMYSWIe", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "MjhTHeh94TSenE5h"}, {"amountConsumed": 59, "clientTransactionId": "wi0RY2VN4ZONJREd"}, {"amountConsumed": 96, "clientTransactionId": "2Zsrh90ETtYmGukz"}], "entitlementId": "3MnlrjcHp6B8Vj7r", "usageCount": 36}, {"clientTransaction": [{"amountConsumed": 64, "clientTransactionId": "x9Ns8eLzYEvwSWTa"}, {"amountConsumed": 78, "clientTransactionId": "3QhjCMW64f4XhIjS"}, {"amountConsumed": 29, "clientTransactionId": "Xn77AtYoFzLAATPY"}], "entitlementId": "8P8P3cfoivvQxeve", "usageCount": 5}, {"clientTransaction": [{"amountConsumed": 95, "clientTransactionId": "Ww7Rry0KK5rgAGO0"}, {"amountConsumed": 6, "clientTransactionId": "BEv3aevq6iohU1cg"}, {"amountConsumed": 21, "clientTransactionId": "W1IS3Uv1BpWoJBaq"}], "entitlementId": "dg2FHcunsS1lnaO2", "usageCount": 24}], "purpose": "yn50sigBVZxiKdV5"}, "originalTitleName": "7GvRyd9UuL02Le8H", "paymentProductSKU": "SCslsDd4M1F5qRIb", "purchaseDate": "lS7Nz81GRazPAANj", "sourceOrderItemId": "fBoldFOyqA2clJ5g", "titleName": "EOaCgM6Yn6RugbNE"}, "eventDomain": "IpGBFUjOn5mM7k8n", "eventSource": "bLzvtCIW5ynMKquU", "eventType": "icAeIVXtoWAXhMlW", "eventVersion": 99, "id": "tLqX7OICf5oD1e6o", "timestamp": "I9FmYel0kOw72o8Z"}' --login_with_auth "Bearer foo"
platform-mock-xbl-clawback-event --body '{"data": {"eventDate": "kgk0jS6rDWUwfhKv", "eventState": "rf2AaH4yCWrHSppn", "lineItemId": "IZkNnTn3rzH5NvAt", "orderId": "cvNedgS1fUfKmihD", "productId": "bmu8ePWlQMVDXEHe", "productType": "iGTnwyEw6hIWDZrp", "purchasedDate": "P7rz3ISW510kHr4i", "sandboxId": "sTKWjmv67nuHCXWf", "skuId": "wnwGioVwVzmmBVVF", "subscriptionData": {"consumedDurationInDays": 10, "dateTime": "M9I6nEwnZhsjwJeG", "durationInDays": 45, "recurrenceId": "YBo4FUTH7CGfKSyx"}}, "datacontenttype": "gRR1DiCqSMzpqIFG", "id": "LkDs7ACC1RgBfoNr", "source": "HlFi2qJLgmBLE35Y", "specVersion": "hyiDV90SeI5yppBH", "subject": "oytVznCgNyx9fbT6", "time": "3ShEh8PbGikLjgjc", "traceparent": "j34uulU6FYBZsWFb", "type": "r3RSP0W9nBhvhf8Q"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 3, "bundleId": "DtJMcYQdN66bswAg", "issuerId": "t65X4N1LQZmB61JM", "keyId": "dtwCVUrYQue84dwm", "password": "bwFEnAZaWsQJtRYo", "version": "V1"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "ixhtAoKiVm6URT95"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "XhnUcvWB28Mpusuh", "notificationTokenAudience": "hDJ5slzgiWZEtyd5", "notificationTokenEmail": "6LfxnbY97jjYgXch", "packageName": "CbkXX26uEdCfQaMA", "serviceAccountId": "QuTKfC0I2kNjCMDt"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "DMrentgn3DhqciwI", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"vTkQQgB7exYvmHMx": "r5hPCJJztJBg0tTJ", "g46IewOXE2AkCh3Q": "IZsUf8lGFXcmwTER", "HclOdxIwqejxe18r": "Ndb8Otq6j1mqUav7"}}, {"itemIdentity": "k05HAQltnSojV4jT", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"5yclX2FtAz0vJjFI": "YWOaNdsimmkW2miH", "3xRHAKy4QxZkaXZ7": "vmiEd0JPxVyQpsha", "DwNqTbbFMXAMfVXe": "0GZeMgsRsmH1EQrY"}}, {"itemIdentity": "mkPKTPOlhTtSiZNC", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"WIYN2NVL70Iw157g": "00jr9b8MuYmmeKTm", "BNvGYxEQdf3ewoGG": "oY7xmFNAmjDDCvs7", "8mcMdiS76YApGJ9u": "fwLYkqIgLuZS6hsQ"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "ryiEtOAbpeUNf26U", "appSecret": "qkCfgCUYBn2xaOBd"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "PF0JmX8qwU1cTuHH", "backOfficeServerClientSecret": "PB5S3DvPRCzBrVUx", "enableStreamJob": false, "environment": "0kABeGs9yxahld1p", "streamName": "O0Gyf5PO3COyMvcz", "streamPartnerName": "gEpzZ3FbtxfhcRC7"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "IVYa6iZ5uFRYNn3S", "backOfficeServerClientSecret": "HiWxF0YbuU5ar5qT", "enableStreamJob": false, "environment": "WUCy0Afgc050XIZR", "streamName": "W491e94mQjVOOBnI", "streamPartnerName": "WhunElqZUodp3Iht"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "CSHy1ei1fIrPvfHn", "env": "LIVE", "publisherAuthenticationKey": "6EjRwEQlNapJRfk4", "syncMode": "INVENTORY"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "HLtwtVOaxgP6Jbct", "clientSecret": "8puMybYGxD9IPmms", "organizationId": "Lmu3kaPj0O4zd8Tb"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": true, "entraAppClientId": "cUNGPTBxiFFCrn7d", "entraAppClientSecret": "jjs69FTFVGUVhvKh", "entraTenantId": "JCmeisql14mUHVbM", "relyingPartyCert": "PimNhcZsU3VAdMDc"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-abnormal-transactions --login_with_auth "Bearer foo"
platform-admin-get-steam-job-info --login_with_auth "Bearer foo"
platform-admin-reset-steam-job-time '{"env": "LIVE", "lastTime": "1994-05-11T00:00:00Z"}' --login_with_auth "Bearer foo"
platform-admin-refund-iap-order '2amU7syGlElXdEAO' --login_with_auth "Bearer foo"
platform-query-steam-report-histories --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'rVSnLocLVVYamQc4' --login_with_auth "Bearer foo"
platform-download-invoice-details 'wcG5nDBLJoJHbiQ5' 'duE5p4cfs2E41cK8' 'QTwiIAvxSvNDlmM5' 'COINS' '9BzupBsFpYc77GtR' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'UcCFeY5g4XgBsbfz' 'qxBPNe8ae1Il4aAt' 'Ebu4IjGdqthRxTjQ' 'BUNDLE' 'vLh3u6EDsUmrV6kH' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "4OotKwG3UC6XCnnZ", "targetItemId": "xF8CmQr17W65br34", "targetNamespace": "rBBN9tU6TDm5GloF"}' 'SKWM1eym5ydC6p25' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "xCWTqUOYZENJ1QHZ", "appType": "SOFTWARE", "baseAppId": "GZ0TBujELAUK6mQ5", "boothName": "iZgbwwm5iGzXtckn", "categoryPath": "rgidKupvXO6aj4hC", "clazz": "mTC34jxW4pIDwdqX", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"CpoBCbyJsF5IjF1c": {}, "0W338HS6CBgVRyih": {}, "YNZ84CVhziXV8HwS": {}}, "features": ["jOuSYht83AdvBaag", "TiRJ8daGTVX3Bb7j", "mvcvcDKF19yVRafC"], "flexible": false, "images": [{"as": "um7izxe7NPzjOa8E", "caption": "7wY76PxLv9HBEUe8", "height": 11, "imageUrl": "AwEw1HO4FnKtx4XL", "smallImageUrl": "KAmlDr19uJ3nq6Ve", "width": 36}, {"as": "X2poMfZ1hDHtbh4H", "caption": "tMlFgvh2Dp2SoiIP", "height": 32, "imageUrl": "Q5xF9wwbvMZyeDeR", "smallImageUrl": "nVfPUa6xVVBcq3wZ", "width": 32}, {"as": "A6jEtcqsnzoVILjk", "caption": "wW61duF87aUyrdt4", "height": 59, "imageUrl": "SpWBAetsanzqP8ox", "smallImageUrl": "frtbECD1CYPwaiBA", "width": 47}], "inventoryConfig": {"customAttributes": {"INPXppPNO3AfmXcg": {}, "wC3IN6tvKgLB9QmJ": {}, "IOq9dP5szG71utjs": {}}, "serverCustomAttributes": {"Q4CrRb9gUCeVz7fW": {}, "bZIdhevfZvyV7Aco": {}, "dcZwKjYDdmJOlzwm": {}}, "slotUsed": 92}, "itemIds": ["CMgKAOG5iDcCR5Pb", "CvDLil8wj9cKM3Ar", "6MF35hCER4nGmWGg"], "itemQty": {"TJfHlJl4tHGa4XfZ": 4, "A3r0u4q1bTHXIjfJ": 74, "sWEUl07bhwntCVqi": 30}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"f5KwMZQjzvjSozv6": {"description": "CTRDl0zp9CzHFwin", "localExt": {"kBNi4gvqgl6TZ9TG": {}, "VPmv34h6T7Esufmf": {}, "xKYB4LM6H6QXmpZ9": {}}, "longDescription": "X3fUSR1l9xLPBsmA", "title": "UrD9L1IiD6MlcEPh"}, "MDFzjHZ3sIhzOx2C": {"description": "XKlvIomU3pIxM9n8", "localExt": {"D2eLMe3lt9qfx2UD": {}, "cgVE7L9FK6e0MrPc": {}, "4vtxk9hVKlG56Hlz": {}}, "longDescription": "Gr7XjdyRJunZPkp6", "title": "ccIBnWyPw8mj7gyQ"}, "7XdIszGRj46COPip": {"description": "H1MWVTHG0qHJCWEf", "localExt": {"OJpZm9yEYWNGMy2p": {}, "gSGSUOK68eqGJtWf": {}, "1Ybgg8rdwY9bmrvH": {}}, "longDescription": "mO07KNqX9LM2IwEs", "title": "dOGBXBwnzDX8v3xg"}}, "lootBoxConfig": {"rewardCount": 58, "rewards": [{"lootBoxItems": [{"count": 9, "duration": 66, "endDate": "1990-02-03T00:00:00Z", "itemId": "QdXfFBii2RAMEX5R", "itemSku": "MjBFVZGYzQqV8d9m", "itemType": "DdUIoiIJFNxuNOmU"}, {"count": 91, "duration": 100, "endDate": "1986-07-01T00:00:00Z", "itemId": "n3wYowBdkaZ3y6i3", "itemSku": "8XQjLDRqkpiFK5Bt", "itemType": "iQ272Uo9UBJWodpd"}, {"count": 47, "duration": 69, "endDate": "1980-07-21T00:00:00Z", "itemId": "X1jorcyR0x3YiHF8", "itemSku": "ITGPRQBCgIs1Q2lz", "itemType": "xl0yF5m77TTh4gUo"}], "name": "j8u2WRcLiEtzVlnk", "odds": 0.08639208825677591, "type": "PROBABILITY_GROUP", "weight": 27}, {"lootBoxItems": [{"count": 10, "duration": 67, "endDate": "1976-12-31T00:00:00Z", "itemId": "7pHY48F1dl1q92m3", "itemSku": "iRlfnBAk0CwiAsR6", "itemType": "5yQ9ssuHdGmxncCE"}, {"count": 36, "duration": 33, "endDate": "1998-04-19T00:00:00Z", "itemId": "KcgeqzGbruNB72HH", "itemSku": "MkjzyBB4UFKiaoV0", "itemType": "VOem2yqPsMFxKybP"}, {"count": 22, "duration": 2, "endDate": "1981-05-29T00:00:00Z", "itemId": "S6x9cLJ1APnNlsa2", "itemSku": "bRBr27fVMWuAfDqL", "itemType": "MR919IZPKOKiAVQX"}], "name": "XOmqFHLbyXmgCNiX", "odds": 0.5345777789328109, "type": "REWARD_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 9, "duration": 42, "endDate": "1977-09-28T00:00:00Z", "itemId": "bC5CphgMweexsIAP", "itemSku": "5vHLjBJ9iqMcBL4B", "itemType": "zhDUjhKPwbwcvQU5"}, {"count": 21, "duration": 41, "endDate": "1987-11-27T00:00:00Z", "itemId": "8bXGFmPAnOkDiJq4", "itemSku": "xQye7HqnVK3YVeOW", "itemType": "s9mfVQh3jLBtn9px"}, {"count": 32, "duration": 63, "endDate": "1971-08-18T00:00:00Z", "itemId": "nrNSleywHbHig6IK", "itemSku": "WVZ77KeRWdECaFGz", "itemType": "fZ2hxcJ2Fnemn7M2"}], "name": "3SzUo4hNBDh9ZFP1", "odds": 0.6578324228748681, "type": "PROBABILITY_GROUP", "weight": 32}], "rollFunction": "CUSTOM"}, "maxCount": 5, "maxCountPerUser": 73, "name": "OErQPS4VsRoYIK69", "optionBoxConfig": {"boxItems": [{"count": 50, "duration": 14, "endDate": "1981-12-12T00:00:00Z", "itemId": "ADCGiXaLs2xjHkin", "itemSku": "OD975nARHCmhNHSX", "itemType": "uqIHsxvaUoXDmwWs"}, {"count": 41, "duration": 28, "endDate": "1976-03-18T00:00:00Z", "itemId": "xncuD3QxCXMd00YB", "itemSku": "WCaVVmM45mfIZsWh", "itemType": "kS476dGGJwJ00UH1"}, {"count": 34, "duration": 80, "endDate": "1983-10-16T00:00:00Z", "itemId": "I0rYsWucAkXsVJbX", "itemSku": "i7eRZa7WwIc895Im", "itemType": "qK6tVsaUq3stUh5J"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 57, "fixedTrialCycles": 82, "graceDays": 17}, "regionData": {"VIs7NRen2Y3Ns0QJ": [{"currencyCode": "QeaWytPfds1BYx0E", "currencyNamespace": "aURydf8ZyyZeHAWG", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1989-11-14T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1994-01-08T00:00:00Z", "expireAt": "1991-12-09T00:00:00Z", "price": 73, "purchaseAt": "1987-12-22T00:00:00Z", "trialPrice": 79}, {"currencyCode": "iHDT8QbF7gHPTPQb", "currencyNamespace": "vLt2NRqJGIKzLyH1", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1999-10-30T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1998-04-12T00:00:00Z", "expireAt": "1999-04-04T00:00:00Z", "price": 84, "purchaseAt": "1973-05-23T00:00:00Z", "trialPrice": 70}, {"currencyCode": "nyx34luLdvtsTKXM", "currencyNamespace": "jiw6gYPvfn2Qt9iy", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1991-05-25T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1976-10-10T00:00:00Z", "expireAt": "1978-12-12T00:00:00Z", "price": 4, "purchaseAt": "1998-06-15T00:00:00Z", "trialPrice": 76}], "2Z3eDHH9WaVO4iKh": [{"currencyCode": "DcJ7TCcNIsQ3Pupp", "currencyNamespace": "UxDSK8aOTGMudcxl", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1989-01-26T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1975-11-21T00:00:00Z", "expireAt": "1997-01-05T00:00:00Z", "price": 73, "purchaseAt": "1993-09-23T00:00:00Z", "trialPrice": 89}, {"currencyCode": "Q57lPdinpjS2DRfG", "currencyNamespace": "t9GlyZVQ4X67tPZS", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1974-05-16T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-11-30T00:00:00Z", "expireAt": "1983-05-16T00:00:00Z", "price": 19, "purchaseAt": "1994-05-19T00:00:00Z", "trialPrice": 54}, {"currencyCode": "ElvvDgw0ag7kSWE0", "currencyNamespace": "Hiqm5IuLryiEXqvU", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1975-08-25T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1987-03-22T00:00:00Z", "expireAt": "1986-08-29T00:00:00Z", "price": 98, "purchaseAt": "1998-03-14T00:00:00Z", "trialPrice": 55}], "VZw1ToLuPakQN1Mp": [{"currencyCode": "Os1RVFrcg2CXxepx", "currencyNamespace": "78fvsyhE2BKtyTDS", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1978-03-25T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-05-24T00:00:00Z", "expireAt": "1981-06-06T00:00:00Z", "price": 59, "purchaseAt": "1971-04-15T00:00:00Z", "trialPrice": 72}, {"currencyCode": "sh4US8o4jfMANPpm", "currencyNamespace": "ZDdMiCxmuCCVuFjS", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1998-01-22T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1971-06-20T00:00:00Z", "expireAt": "1977-04-22T00:00:00Z", "price": 56, "purchaseAt": "1982-08-01T00:00:00Z", "trialPrice": 43}, {"currencyCode": "nYBTxaTIz0jcgDI8", "currencyNamespace": "Pkz96vd80msqIm5b", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1973-11-25T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1994-08-10T00:00:00Z", "expireAt": "1985-05-11T00:00:00Z", "price": 60, "purchaseAt": "1980-05-09T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "LeqhwVhjnnjKMEmt", "price": 2}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "sAQHbMrKYi0Zxs5S", "stackable": false, "status": "INACTIVE", "tags": ["HtADUQ9zimQTQT95", "4f15NohXu6opxQGR", "pFJUAJsyAfeKOufV"], "targetCurrencyCode": "t6PqlkL0diRhLC10", "targetNamespace": "ih2EQfY3XCv4hdOa", "thumbnailUrl": "6FdZhNMd1onFjGRb", "useCount": 48}' 'UBRmMhAbUWmFhdYL' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'WzMuv3zkUY0n0BAZ' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'kwbYkBLyO6A0Fqfh' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'naB3YxKNdOTacCcJ' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'fIfXshuLUk5Wdpxj' --login_with_auth "Bearer foo"
platform-get-estimated-price 'Zx5noXPhPUTKbono' 'ucNmzwOZOK56sDkc' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'i5rZ8iMlOuksQJCi' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'RFiZWwJ7NrTb1XTB' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["9YQzUJ9XlYJ8BzP6", "EUmUXGM5anIloyj9", "lhbvuQdW2jwKUckc"]}' '794ryY91lX8DD4MY' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'XlrJ81lHvv9rqvEo' --body '{"changes": [{"itemIdentities": ["M8YmVjAkO3HKsEp6", "KlqwW4djrexcbHdE", "toQvpV344RctmToz"], "itemIdentityType": "ITEM_SKU", "regionData": {"HzYviTgYmx82JVBR": [{"currencyCode": "LPZ6Iz8tne5dbguB", "currencyNamespace": "F6Gsvvdl8jHz9x7X", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1995-04-25T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1988-10-29T00:00:00Z", "discountedPrice": 33, "expireAt": "1981-03-30T00:00:00Z", "price": 47, "purchaseAt": "1991-05-01T00:00:00Z", "trialPrice": 77}, {"currencyCode": "hTLEEBGTtZyTjdKN", "currencyNamespace": "KgYazujsmSmylT1Y", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1983-11-12T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1999-05-08T00:00:00Z", "discountedPrice": 100, "expireAt": "1995-12-02T00:00:00Z", "price": 1, "purchaseAt": "1982-11-10T00:00:00Z", "trialPrice": 44}, {"currencyCode": "b48jISd97KORRhxS", "currencyNamespace": "WLWLNfHRD3V15QaG", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1993-08-15T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1974-06-17T00:00:00Z", "discountedPrice": 49, "expireAt": "1997-10-14T00:00:00Z", "price": 94, "purchaseAt": "1987-05-29T00:00:00Z", "trialPrice": 2}], "beqWBdQuWfgBAKx2": [{"currencyCode": "7MSBqabUXOGkkoMU", "currencyNamespace": "Zn1YXj5zFZeOCOR9", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1993-08-14T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-12-06T00:00:00Z", "discountedPrice": 65, "expireAt": "1993-04-19T00:00:00Z", "price": 73, "purchaseAt": "1997-12-03T00:00:00Z", "trialPrice": 56}, {"currencyCode": "OIKrRBrYVzi9ui3l", "currencyNamespace": "vozTt9TsH7A0TuU2", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1992-01-07T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1984-03-22T00:00:00Z", "discountedPrice": 53, "expireAt": "1976-03-14T00:00:00Z", "price": 56, "purchaseAt": "1998-11-22T00:00:00Z", "trialPrice": 39}, {"currencyCode": "HEAj1cT3u6Zc2Fbr", "currencyNamespace": "TFznTgDIwZIRWf6T", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1980-03-28T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1993-03-16T00:00:00Z", "discountedPrice": 90, "expireAt": "1991-08-19T00:00:00Z", "price": 95, "purchaseAt": "1972-04-23T00:00:00Z", "trialPrice": 92}], "FKLc0xcTjqjdcEfU": [{"currencyCode": "61OJYMnW49rWynp1", "currencyNamespace": "ck1vT90C6o86cSRL", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1993-02-22T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1971-01-08T00:00:00Z", "discountedPrice": 95, "expireAt": "1977-10-21T00:00:00Z", "price": 42, "purchaseAt": "1976-04-06T00:00:00Z", "trialPrice": 39}, {"currencyCode": "he98oaFKlQicdrxV", "currencyNamespace": "hrtwSd9QWVMYz7TU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1993-07-09T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-11-11T00:00:00Z", "discountedPrice": 59, "expireAt": "1992-02-23T00:00:00Z", "price": 17, "purchaseAt": "1993-01-19T00:00:00Z", "trialPrice": 23}, {"currencyCode": "HyKKz5nyI6ulKNKo", "currencyNamespace": "Xa0dgx1JgjC56pda", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1975-04-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1983-12-14T00:00:00Z", "discountedPrice": 29, "expireAt": "1983-05-03T00:00:00Z", "price": 58, "purchaseAt": "1973-10-14T00:00:00Z", "trialPrice": 78}]}}, {"itemIdentities": ["n7QqXBDXJcrqKmXD", "woEV6tCdrxw1KOPh", "uvHuYrGWDK41uMOC"], "itemIdentityType": "ITEM_ID", "regionData": {"mRvSoaGk4ktF5wnJ": [{"currencyCode": "Dg9Q3WXiydCOInVo", "currencyNamespace": "lsr6CHmj763vLwtY", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1989-04-12T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1973-09-15T00:00:00Z", "discountedPrice": 17, "expireAt": "1979-06-25T00:00:00Z", "price": 19, "purchaseAt": "1981-01-22T00:00:00Z", "trialPrice": 61}, {"currencyCode": "Y5ZPkv90lyKSTWLx", "currencyNamespace": "SFZ0LpupEi5DbkVs", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1982-09-14T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1994-08-17T00:00:00Z", "discountedPrice": 17, "expireAt": "1992-02-11T00:00:00Z", "price": 39, "purchaseAt": "1989-04-27T00:00:00Z", "trialPrice": 11}, {"currencyCode": "0Wj1WfzIvc3VlSXr", "currencyNamespace": "A3XUGud4tVjmxEf4", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1995-03-23T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1987-10-09T00:00:00Z", "discountedPrice": 72, "expireAt": "1994-08-28T00:00:00Z", "price": 48, "purchaseAt": "1979-09-16T00:00:00Z", "trialPrice": 56}], "HITBg9x4unq3eOMH": [{"currencyCode": "IKeTyBG5dCUoExnK", "currencyNamespace": "fV3869IN4V1OdhH4", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1979-07-11T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-03-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1977-10-12T00:00:00Z", "price": 4, "purchaseAt": "1985-07-07T00:00:00Z", "trialPrice": 58}, {"currencyCode": "iLjLyZrXr9Bhtzn8", "currencyNamespace": "jAdTn6xBhrciryLm", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1998-01-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1988-06-14T00:00:00Z", "price": 28, "purchaseAt": "1996-03-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "1SLjCPrFa05Xl5TP", "currencyNamespace": "C5GODS44bmm7jPdK", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-01-24T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-01-29T00:00:00Z", "discountedPrice": 92, "expireAt": "1980-12-04T00:00:00Z", "price": 96, "purchaseAt": "1999-05-14T00:00:00Z", "trialPrice": 100}], "jXVzW1QqxnWR5she": [{"currencyCode": "LgsAF4ctv5guycGi", "currencyNamespace": "q9j2EyIknfLDpgHn", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1986-04-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1972-10-04T00:00:00Z", "discountedPrice": 9, "expireAt": "1974-01-25T00:00:00Z", "price": 9, "purchaseAt": "1997-10-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "9sde7Ryt4udIv22M", "currencyNamespace": "18uux9xBomQFPFWy", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1996-11-15T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1992-04-29T00:00:00Z", "discountedPrice": 72, "expireAt": "1983-01-04T00:00:00Z", "price": 58, "purchaseAt": "1987-04-30T00:00:00Z", "trialPrice": 78}, {"currencyCode": "etqgfOJDUT0uKAPr", "currencyNamespace": "ARya2IMlNiXpF4qv", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1995-03-08T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-10-02T00:00:00Z", "discountedPrice": 9, "expireAt": "1979-03-14T00:00:00Z", "price": 5, "purchaseAt": "1999-12-14T00:00:00Z", "trialPrice": 93}]}}, {"itemIdentities": ["O30lpzcBQMAEcNcJ", "qrKxnMzSYoc4ZjiM", "Y4H34B6wVd8ipcKD"], "itemIdentityType": "ITEM_SKU", "regionData": {"HbrryHB6GO9zP3Fa": [{"currencyCode": "epA3b3YJ9nJM6vtT", "currencyNamespace": "27xv85K5MU2qmbeq", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1983-02-03T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1977-12-12T00:00:00Z", "discountedPrice": 71, "expireAt": "1992-11-16T00:00:00Z", "price": 6, "purchaseAt": "1972-12-11T00:00:00Z", "trialPrice": 57}, {"currencyCode": "wOtEuWBSO2jJepUn", "currencyNamespace": "EEgja2mIE2kLTnJw", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1978-05-02T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1974-03-26T00:00:00Z", "discountedPrice": 58, "expireAt": "1977-06-18T00:00:00Z", "price": 9, "purchaseAt": "1990-11-18T00:00:00Z", "trialPrice": 99}, {"currencyCode": "BFp62xlXvVcJerTP", "currencyNamespace": "W02PWsHiKYArAxnK", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1973-05-05T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-12-06T00:00:00Z", "discountedPrice": 61, "expireAt": "1987-04-04T00:00:00Z", "price": 35, "purchaseAt": "1974-12-14T00:00:00Z", "trialPrice": 59}], "QuAc10DjjwMv4vrI": [{"currencyCode": "PRtvhQIyLarjaLOK", "currencyNamespace": "nX51yAB8Pa3uNGKh", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1990-04-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1989-01-19T00:00:00Z", "discountedPrice": 53, "expireAt": "1984-10-17T00:00:00Z", "price": 80, "purchaseAt": "1975-04-26T00:00:00Z", "trialPrice": 67}, {"currencyCode": "JIIgsAVmaGYxUX1B", "currencyNamespace": "9oVuzG2CnYX2YBF2", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1994-02-21T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1987-06-09T00:00:00Z", "discountedPrice": 61, "expireAt": "1984-03-01T00:00:00Z", "price": 62, "purchaseAt": "1976-10-03T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Uodh3iUfBthbepUC", "currencyNamespace": "TWiZ1uqh7GAi4FEI", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-09-19T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1979-11-11T00:00:00Z", "discountedPrice": 45, "expireAt": "1997-11-02T00:00:00Z", "price": 90, "purchaseAt": "1983-05-01T00:00:00Z", "trialPrice": 41}], "lYqlpq03BGdIk4oE": [{"currencyCode": "ogFVGR71rJOBy6ls", "currencyNamespace": "j1AKGBjnHmaAu4YK", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1987-01-09T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1977-08-09T00:00:00Z", "discountedPrice": 100, "expireAt": "1994-01-18T00:00:00Z", "price": 59, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 5}, {"currencyCode": "UOIzVcy9k3ie64Vn", "currencyNamespace": "wa0ClGQJultJe32A", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1982-10-02T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1985-01-01T00:00:00Z", "discountedPrice": 6, "expireAt": "1974-09-10T00:00:00Z", "price": 30, "purchaseAt": "1989-10-10T00:00:00Z", "trialPrice": 85}, {"currencyCode": "VmprwPsa9YD92CX0", "currencyNamespace": "rITajpwHITGeHTnq", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1984-12-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1993-08-10T00:00:00Z", "discountedPrice": 48, "expireAt": "1978-09-20T00:00:00Z", "price": 34, "purchaseAt": "1974-10-25T00:00:00Z", "trialPrice": 56}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'bQ3Fj1umx4ItzkMJ' '7cudf4r916GPrhn2' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'etVIQvRkQJAtDUH9' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "tx60AehGz1ermJYX", "appType": "GAME", "baseAppId": "1QC7FKe0fnHUlmU1", "boothName": "unGKM0tgfeWy47bb", "categoryPath": "wMI4gGmvK9gW596F", "clazz": "wBNrFXt3TAuKBwBc", "displayOrder": 60, "entitlementType": "DURABLE", "ext": {"12ae6r3hHwya4Npd": {}, "Ozg3hr6ucHf7dbh2": {}, "iKNUl0qJqzoKMRMG": {}}, "features": ["NXLMUaDSwwQlnNRZ", "JHBSB4fZWEFIZs28", "541PAiNjULsx4SnK"], "flexible": false, "images": [{"as": "mj8YRvae4f4lhBPb", "caption": "arbWEm8bVtZcfVCP", "height": 6, "imageUrl": "1keYXJvtggDdXjbd", "smallImageUrl": "jMBahFZZGMTcqnWr", "width": 70}, {"as": "ZpfcFBUsnnDJlmD1", "caption": "iEokbUiYzCQh2iNT", "height": 45, "imageUrl": "utLf6IrvZoBGQbO4", "smallImageUrl": "S3rURGWUzPAE6SdV", "width": 21}, {"as": "D5jftRl9rZmtQUvr", "caption": "o8TWwXWsz9TVmdMK", "height": 62, "imageUrl": "fERXdvgD1Qf7Ot2D", "smallImageUrl": "kUt3yexZBRvxYnEB", "width": 14}], "inventoryConfig": {"customAttributes": {"zT0qj0ltsqfiZrth": {}, "VvyX0OCKDJE3RMUd": {}, "dwSSgxCu8zru1DhG": {}}, "serverCustomAttributes": {"AYOHR5BWa9VzIkaQ": {}, "El1iUProNB6hI6Ip": {}, "GcToWgFvdRhG9NwV": {}}, "slotUsed": 20}, "itemIds": ["zDuqVlVTypcYPK8I", "xrSZuxWl0Je4fJIy", "FAm3DQht4JwnPS2u"], "itemQty": {"rJqerobWMZGVL5KL": 94, "5qb8NhWWwaxyMchk": 40, "OOPXM6XTUh2dJ90y": 33}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"3NCo9yXlbQ52FTHT": {"description": "Cj6SEAzT7TOpyiuv", "localExt": {"vQUm29Iacq4XRLaA": {}, "643nTMtXSAyejnny": {}, "0Ju13b6o5uB2XM6I": {}}, "longDescription": "Hy7EEvHyLmcvrZZO", "title": "dwe1x8RjU6Bi8JXE"}, "52sUBBq2SimQQoLb": {"description": "e5YOJvxGRxUzrTwa", "localExt": {"gH7BMT1IZKTdNFVB": {}, "Q1crBXAupATO8uXs": {}, "qVpdiWo8SjDAM0Ri": {}}, "longDescription": "w8wLYW3n4F3LD1ED", "title": "wBXw5uBYeQZOzATN"}, "SV9E9yyNb7yaLXzA": {"description": "VYymOuhCkZu4htrs", "localExt": {"f8eIFSovTGXaMsq8": {}, "ePN1oco2jx8Upe8S": {}, "jMvpqM8puggOEdG4": {}}, "longDescription": "7gD5i2Ni6AnWn3Nd", "title": "EPhNHSH7eKDfRcng"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 42, "duration": 32, "endDate": "1971-07-15T00:00:00Z", "itemId": "nRUQr3RLOM1vEx4g", "itemSku": "qDY6jwyKRxhkLe5z", "itemType": "ohg9s9utRQt28b6o"}, {"count": 74, "duration": 14, "endDate": "1985-05-17T00:00:00Z", "itemId": "OF74tz6aeXZOYwbw", "itemSku": "jMNdxKWlBfnRyFS0", "itemType": "Ed7gTM5AVrtBQiDT"}, {"count": 5, "duration": 82, "endDate": "1991-04-16T00:00:00Z", "itemId": "HDPTUEDPN1Kb4UTP", "itemSku": "WDXTSb55g8LSTs7N", "itemType": "f95lGlPrf6obIdnI"}], "name": "6Ag7eUYcYJ4QzXCm", "odds": 0.2710945008235953, "type": "REWARD", "weight": 11}, {"lootBoxItems": [{"count": 57, "duration": 14, "endDate": "1981-04-12T00:00:00Z", "itemId": "BSKLSQ4GvLtz50D3", "itemSku": "rpBfBovqLwXBuT30", "itemType": "EYeRj17xGhaBKoUf"}, {"count": 17, "duration": 58, "endDate": "1988-03-14T00:00:00Z", "itemId": "jGmCyPsKCJTv1ic9", "itemSku": "gvagF2cSuztsJ5tj", "itemType": "64gV7nmDk29mcjSu"}, {"count": 52, "duration": 27, "endDate": "1982-12-06T00:00:00Z", "itemId": "bNStqPtQmQN6eKAG", "itemSku": "iZFCftT0RWECdjWY", "itemType": "rnulxcCKAru8pOaA"}], "name": "VLDB4k3JwkdaxR7G", "odds": 0.5659951090685484, "type": "PROBABILITY_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 36, "duration": 25, "endDate": "1988-06-12T00:00:00Z", "itemId": "9J7BoysmaORLkP5h", "itemSku": "c2Fh04JTsqDTynCe", "itemType": "wqJligLlRxOelKyk"}, {"count": 70, "duration": 58, "endDate": "1983-12-27T00:00:00Z", "itemId": "xsBFrUs9BYp6TgCe", "itemSku": "jBd5o7iTST7R3Kbb", "itemType": "QGERMNpqWb51y5RU"}, {"count": 52, "duration": 57, "endDate": "1982-05-17T00:00:00Z", "itemId": "MfTkPy0fGvTGgfLK", "itemSku": "sg0b1Bq78cE5O5pm", "itemType": "PnbiPJ9j4vxmbH3r"}], "name": "VaauufxkPHElug48", "odds": 0.7294363608440348, "type": "PROBABILITY_GROUP", "weight": 91}], "rollFunction": "CUSTOM"}, "maxCount": 1, "maxCountPerUser": 80, "name": "AylsmLYe2phYOgT5", "optionBoxConfig": {"boxItems": [{"count": 22, "duration": 71, "endDate": "1986-10-27T00:00:00Z", "itemId": "TyPl3dKF7NXEjrJM", "itemSku": "ki8jvc3P8Gwjg3IO", "itemType": "H0SDHgYKqxJiFJdr"}, {"count": 25, "duration": 35, "endDate": "1975-07-27T00:00:00Z", "itemId": "5vhzgsJwex7wq8ZP", "itemSku": "lXNaUNgdY2vfJuje", "itemType": "5cPnmGjTvYa5Pqx1"}, {"count": 75, "duration": 65, "endDate": "1974-05-14T00:00:00Z", "itemId": "i9j2XMh9WpifqjNj", "itemSku": "LOtNQts2yxf6MLZJ", "itemType": "2jZfZbpTJezzriCD"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 91, "graceDays": 90}, "regionData": {"5x2CPVYYG9WvoGmA": [{"currencyCode": "mvaVV5YfxnUNcwjr", "currencyNamespace": "7gSGhnfuF4WZiQVI", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1995-12-19T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1971-07-29T00:00:00Z", "expireAt": "1972-12-13T00:00:00Z", "price": 95, "purchaseAt": "1982-11-09T00:00:00Z", "trialPrice": 60}, {"currencyCode": "08gMXhdf3juXW4Jp", "currencyNamespace": "rIb3CJCAtvSG8Cfa", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1989-07-30T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1991-01-25T00:00:00Z", "expireAt": "1989-08-31T00:00:00Z", "price": 65, "purchaseAt": "1987-11-02T00:00:00Z", "trialPrice": 59}, {"currencyCode": "bZEHxsDxeR6d7r1S", "currencyNamespace": "Qw80JfMpPrSqYypR", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1979-05-13T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1976-12-13T00:00:00Z", "expireAt": "1986-04-28T00:00:00Z", "price": 94, "purchaseAt": "1998-02-01T00:00:00Z", "trialPrice": 20}], "CUYG9ccTt7Wxw8OQ": [{"currencyCode": "13t3uTw6zQuoZcXQ", "currencyNamespace": "poTOxe8y1jorNsg9", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1979-05-30T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1993-10-21T00:00:00Z", "expireAt": "1993-04-28T00:00:00Z", "price": 78, "purchaseAt": "1988-02-06T00:00:00Z", "trialPrice": 91}, {"currencyCode": "e3TcJ7DQIi45aCDH", "currencyNamespace": "N9mVug2zkVf6KgpK", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1977-01-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-11-07T00:00:00Z", "expireAt": "1981-09-01T00:00:00Z", "price": 2, "purchaseAt": "1992-06-09T00:00:00Z", "trialPrice": 93}, {"currencyCode": "axvagSlpGgVTF6Ve", "currencyNamespace": "DAPOGBwweyFfXEOE", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1986-08-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-01-12T00:00:00Z", "expireAt": "1972-01-09T00:00:00Z", "price": 23, "purchaseAt": "1974-10-26T00:00:00Z", "trialPrice": 32}], "gBgyCd5vjkfz3eR4": [{"currencyCode": "DtNp129hzBw3xLUc", "currencyNamespace": "CEt0DzmkJq1sml5b", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1989-08-10T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1991-06-01T00:00:00Z", "expireAt": "1983-03-09T00:00:00Z", "price": 28, "purchaseAt": "1983-02-24T00:00:00Z", "trialPrice": 67}, {"currencyCode": "iR9434WpKKdzxouf", "currencyNamespace": "CNlFoOcWQQy4bjmQ", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1986-01-18T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1994-02-02T00:00:00Z", "expireAt": "1972-04-28T00:00:00Z", "price": 95, "purchaseAt": "1985-06-09T00:00:00Z", "trialPrice": 68}, {"currencyCode": "5UGkInFGpuUsdtq4", "currencyNamespace": "dOwNESzCEW9dUVhZ", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1990-04-12T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-08-21T00:00:00Z", "expireAt": "1976-05-30T00:00:00Z", "price": 17, "purchaseAt": "1985-03-24T00:00:00Z", "trialPrice": 71}]}, "saleConfig": {"currencyCode": "CpLCqPD9CeDEdCnn", "price": 78}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "aFr8CDapjwNOl4k8", "stackable": true, "status": "ACTIVE", "tags": ["FMqXCQMAqQ2ZRGzN", "tz7EFvowPgIGuetx", "Nrm8drv8QD2JOe2N"], "targetCurrencyCode": "trThFa9XU8moslui", "targetNamespace": "HZJ7O8sAQ32wj9ua", "thumbnailUrl": "Dzsr9xYiWRuuzQJi", "useCount": 77}' 'NypF6MMqWpdEJsPo' 'aIbYz8cK5jlpJdre' --login_with_auth "Bearer foo"
platform-delete-item '5ur6yvWJDdvM7T7P' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 15, "orderNo": "2vamIRZHzsIYOCUo"}' 'iCXNjrdQL2jdx1eI' --login_with_auth "Bearer foo"
platform-get-app 'ba1sB0HsJ06Dzfbz' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "RYt4OVUyumBeIqdQ", "previewUrl": "GZC5kM03HHijsQRj", "thumbnailUrl": "7N8IAjmsonjj0ZR5", "type": "video", "url": "g5m4axDV5uTcYsoa", "videoSource": "generic"}, {"alt": "8zgZVl4gIF7v3qbZ", "previewUrl": "u9M3OxqVAT4H1lRZ", "thumbnailUrl": "9Z1JBrHRzEOtIxzP", "type": "video", "url": "RjD7jmQJeFPghqam", "videoSource": "youtube"}, {"alt": "rsKgzCsMulpB8HZU", "previewUrl": "tVVaJCiLgKOwrSfW", "thumbnailUrl": "hT5B4WedopzwSluB", "type": "video", "url": "PXI2v0prR3OEey0M", "videoSource": "generic"}], "developer": "S6u9FHuv1M3qfch4", "forumUrl": "SqIV6LQPHlaeYl4c", "genres": ["Indie", "Simulation", "Racing"], "localizations": {"q65cU66yJaj4ovoK": {"announcement": "WE4EW0sw8v5peiux", "slogan": "oBJATauyD3XCXVMi"}, "yEvMf9yilUEujk6o": {"announcement": "qYo1HQYTFzwdOMdu", "slogan": "pwD4O3uNbcIDcIyv"}, "ZbOy1T4hfwkuVykH": {"announcement": "4RpfmjIXFGZ5PKdb", "slogan": "abJIkNnt9P1Tkm08"}}, "platformRequirements": {"luh4dpPRMDbUXBWT": [{"additionals": "bpAogG2wlZkLhuU5", "directXVersion": "FI8NijFI0GKwJ3vf", "diskSpace": "XlsAMy2Zp2UAGxHn", "graphics": "mSxvkG9UR5q9neoW", "label": "6JBcGp9Rx2RfcRhX", "osVersion": "pmeeHdvphas9S7iv", "processor": "HEoLbUMM47f1UreU", "ram": "pxEkXIbE1ETzRJZK", "soundCard": "Mavu4Ul2IaieEbPS"}, {"additionals": "E7TGkeHsYsW9oGBN", "directXVersion": "1pYMBwbPZTlMlUvF", "diskSpace": "EiGprcNSQ9kEeXBZ", "graphics": "6FVrBzyhyhoS6a9o", "label": "e0JaXFpff28uYbe4", "osVersion": "Cf2HEHvVevhISjbt", "processor": "BJUK5fE3OufPSX3P", "ram": "dOU2V9yw94oa8UJ3", "soundCard": "4TIedV3HyoX4VnO2"}, {"additionals": "LpBU08wfnlHBXFIq", "directXVersion": "FUmgUSMM5au8GJT0", "diskSpace": "mkVPI6zUtf3QaJPG", "graphics": "rTNcXXTUIggoH89Q", "label": "NmI17UDb19R6H7r1", "osVersion": "ta3m7jK5pxe82pgF", "processor": "iAS6piIzmc8rKrKE", "ram": "PGSAcong6eNERUf8", "soundCard": "kjci1Ctccv9Gv4tO"}], "cbnuCqf0lm6WBkIz": [{"additionals": "joSV31tvmMB6jzrp", "directXVersion": "RGESmooHiCV4GUOn", "diskSpace": "XpapXQGRakUbcG7P", "graphics": "cR4eiU3Idi55jNrG", "label": "NT2VHTKuIT5FwwHj", "osVersion": "0Ur5F2PWGTTD81xh", "processor": "NP4t6kYBUjyXAn3b", "ram": "WQF6QcAiJpXIrgro", "soundCard": "ixptZhckUTGkcBOE"}, {"additionals": "4qMcH1Kyi8ZFvGcV", "directXVersion": "8DY0XOkDstxZcY1H", "diskSpace": "gAnZV4IOglVLqb9l", "graphics": "GAJUg21Lt7JwgwMU", "label": "SuC3Bajy3BcEMCtQ", "osVersion": "s2FcEcvVAyId6Cp8", "processor": "5HVDsZBQgOnXuXsG", "ram": "ThYZrmm0wrFMnPpW", "soundCard": "grQD4hEk0OLjYsni"}, {"additionals": "gnE7KcMF7fuDbzRR", "directXVersion": "YMNXWUsp1tOibJY9", "diskSpace": "aL9ie6vvMbiNURrl", "graphics": "m88QlKyuoya4Jgak", "label": "ZyUV7t73VnSFbuxd", "osVersion": "4KYZ0jk0UZdhtnKu", "processor": "9oTc8pVkiyGsj5Jd", "ram": "XzRxfNEjUMTs8WIO", "soundCard": "bJBTsvsw76uISRX0"}], "bKVoWtoUW1P7ocuB": [{"additionals": "AldDSUS7Haa6unq1", "directXVersion": "yQOSRvyiLBRVtIDi", "diskSpace": "2piIQFVmzMidw70K", "graphics": "SahpYZdKZRyR9AX7", "label": "JjxvNZhM84DiZk6y", "osVersion": "SrB9SVFctW7YS0Ok", "processor": "L78XeEAtALFI3v8y", "ram": "ha4pd5A7MYcpBD6l", "soundCard": "KNb8RxvN2u5J7baO"}, {"additionals": "eLH19fqBwNbNe1ff", "directXVersion": "YRtIvQaKyevWYtZj", "diskSpace": "K6J29v8MpBSpo3AK", "graphics": "RmnJkzJHAckUyBks", "label": "YQfDm0RNFwiz70tR", "osVersion": "VLMlHi8i9gOVqajU", "processor": "WrgEsWDtaKzn8dZw", "ram": "nnGeZsZVgbPzPFbr", "soundCard": "OMZMgWkFN7Tpkx6G"}, {"additionals": "cfyOg6ZUrrp9ubg9", "directXVersion": "mndW2JKmQafUs2bx", "diskSpace": "YztOEyVbKIf1Zbzg", "graphics": "Uwd8DHoCQykmXHYm", "label": "kRlg7gYs6unPYQ9j", "osVersion": "NQN1di1ldhOh6Hvj", "processor": "nYuV7NfC4A2ODiZh", "ram": "bfb8QqCyK1XH9D6v", "soundCard": "l5eFdFfgK46GjCWa"}]}, "platforms": ["MacOS", "IOS", "Android"], "players": ["CrossPlatformMulti", "LocalCoop", "Single"], "primaryGenre": "Indie", "publisher": "mnq3FGQn3Ahu5wxq", "releaseDate": "1972-05-04T00:00:00Z", "websiteUrl": "v9z75SzoCV8ZMi2o"}' '1nR482D6gNClk9c8' '7hosaPFC5zBW3ZgV' --login_with_auth "Bearer foo"
platform-disable-item 'ZCj9ObVGT0Scwl4k' 'NmCi15XTJTgCNNH7' --body '{"featuresToCheck": ["REWARD", "IAP", "DLC"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '2X78hxJgaVfw5Vny' --login_with_auth "Bearer foo"
platform-enable-item 'q8OzTE89WDNoMcOm' 'bfJrCJQIj1haAosK' --login_with_auth "Bearer foo"
platform-feature-item 'glqaCXE9ytpIO8bt' 'O3OwNEGSW5TaW4to' '7QCY2NGGvi9kg3rM' --login_with_auth "Bearer foo"
platform-defeature-item 'IzNmhJTNQjKlwjfJ' '3TJ2xVpge70WsLfg' 'bZieRvJI5sT9DH3D' --login_with_auth "Bearer foo"
platform-get-locale-item 'fLCv8q4Thmq09bBg' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 69, "code": "YxrBE9jlnTgtgW33", "comparison": "isLessThan", "name": "c43atCuCFxbfbz4a", "predicateType": "StatisticCodePredicate", "value": "oM6FoqCYw7AlxO6q", "values": ["lSlCQMDji329PfVr", "dFpc71sSck3ggZWJ", "vMEPtpsSNcpK1QkB"]}, {"anyOf": 11, "code": "Sy8Ww79LVeVskqeU", "comparison": "isNot", "name": "EvdRF9bqMj4ro5B1", "predicateType": "EntitlementPredicate", "value": "VE838c7OydVw0zCq", "values": ["kk5PxsjqbCKpMv2Y", "oMZvpIOO97DmQ5ZO", "zx6iCJTu60IifzMh"]}, {"anyOf": 21, "code": "z9C05YabFX4FCK5u", "comparison": "excludes", "name": "JKG3rqBmILhtWm8R", "predicateType": "StatisticCodePredicate", "value": "vRUbUDSiefGEdLuc", "values": ["rtO2gCQD057DrDlg", "3q6JRHcn7KaoCEkR", "C2nzS9SiGUjVAw4v"]}]}, {"operator": "and", "predicates": [{"anyOf": 53, "code": "o6qHYIZWnXqQ1oHF", "comparison": "includes", "name": "9Q0vqsL9SomqWsGA", "predicateType": "SeasonPassPredicate", "value": "6yxi0QzZWfmP2sx0", "values": ["KO5bEJaPnAFjsody", "JQVVBrShGbIIuqK8", "C403HgoXCR6XOMXw"]}, {"anyOf": 75, "code": "QGPCxwEdkyuT3Mgz", "comparison": "excludes", "name": "eRq0112ISArROIod", "predicateType": "EntitlementPredicate", "value": "nxD1OXkxShFVQTRe", "values": ["brQKmb01yA7U7dGM", "jupZkZQY8CNyT4k3", "kLfjmy8zosRCRgVw"]}, {"anyOf": 61, "code": "iTxK63OHpnUCGBVf", "comparison": "isGreaterThanOrEqual", "name": "SgxpKWtdtdtVW9an", "predicateType": "StatisticCodePredicate", "value": "1J5euLAbBgejqc0a", "values": ["lAyvIslt7N1qcxKs", "4nlf1MfqUZXkjHvc", "pxqZ209BySn8aUaG"]}]}, {"operator": "or", "predicates": [{"anyOf": 82, "code": "2xUKLNWSmYyVvyel", "comparison": "isGreaterThanOrEqual", "name": "J8QgaLMqi836ULa7", "predicateType": "EntitlementPredicate", "value": "ce8NDMErA82FrR1G", "values": ["h3l2gAJOTCbx7J3g", "SogkewIzTOqKkcjR", "NLIlTk3Bpclrk4hI"]}, {"anyOf": 90, "code": "BhoUg4LsGP6KLPXk", "comparison": "isLessThan", "name": "HEP5l94s7CbIJ7eH", "predicateType": "SeasonPassPredicate", "value": "PlLitytGka7Kv5Ta", "values": ["1G4kKooSNNUZuiyn", "cQKF4OlRGdmXxETL", "EQrr3KCAV9alq3hK"]}, {"anyOf": 98, "code": "64IwncZPk82GF3eT", "comparison": "isNot", "name": "03INGIyEfRBEj7qm", "predicateType": "SeasonTierPredicate", "value": "9OHgfHumyfuBNise", "values": ["Mr7ImwCwGqOf0bNs", "97KvKyj3MqS7Dcmt", "cYbcOpR45VDlvSc0"]}]}]}}' 'fh50eObbrmgjhWK0' 'x0ZidAJ1CU1eD1La' --login_with_auth "Bearer foo"
platform-query-item-references '16Bw3JbUnUDh5yGj' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "jv4Mwrv2vancmR6Z"}' '7rb21A2E9pX0BWCM' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "qPsRk5htdM5T3fDS", "name": "rSHrkoqv2mM6soMa", "status": "INACTIVE", "tags": ["vQq2a9YdFNtRVSO0", "js0hG9xmSnzd7zgU", "xAogcnGkXk17QPkJ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'HRhmLKQuQVFSKiXl' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "8G2uf6E8EajXLSAS", "name": "8MKMaxQ1QyJCpKed", "status": "ACTIVE", "tags": ["CiTNAxq26gZrPqCs", "SDspvgM16sZ6rjnk", "H4ExObppC6CMYDm5"]}' 'ge659UDEOF6gp5Uf' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'mjtiVbqJnZcrqrPy' --login_with_auth "Bearer foo"
platform-list-keys 'e7fCwi7Il2wIFlHm' --login_with_auth "Bearer foo"
platform-upload-keys '9N6owMHMtJy1Oqn5' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '9tEGm9NYeUT5P0nx' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "8TqSZdZ5C8mFI9Tn"}' 'vzEqBNMF9CZvPxT5' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["zbreMc9fBoU3RHND", "FjLKFrepy56eW1km", "b15QeIQF51c4MqJz"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "DSvELgBe6dboSdhk", "currencyNamespace": "BzAzPkt1efGJeJax", "customParameters": {"yHYutgXucx85vHA0": {}, "09FAb21jxeWXk80y": {}, "9uxgVLGgK8aVSCN6": {}}, "description": "oCETQ8gIDRdD2wwM", "extOrderNo": "XwKVXGPhEJsc7rZp", "extUserId": "xaPHc9r8eToFmkHJ", "itemType": "INGAMEITEM", "language": "Nqn-579", "metadata": {"guCqlMHiQN3HWJw9": "zIWsiP2JQ24meDrw", "EuTyM2qohglzO8AE": "l6A9sh2x2ur2ccp7", "R7OqPqIjS4i0N9yt": "b3c8pVZ8GlU8962e"}, "notifyUrl": "6gtn5pUARJM1T8Qw", "omitNotification": true, "platform": "NOAzXmyHEV4g9P6a", "price": 27, "recurringPaymentOrderNo": "80S5RNB5dVCsB7xL", "region": "4axSPgPCiwLxCFLD", "returnUrl": "ixZwVtt3RVTl0tR0", "sandbox": true, "sku": "oQgcHdGGK3x76U1E", "subscriptionId": "IcklttmrpgF5szl0", "targetNamespace": "sMY8es36r1FgR70e", "targetUserId": "NLHkVrEFd8xArWJu", "title": "CAIfNBSHgpFNw9K9"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'pmAIc6VSfE9nbE2P' --login_with_auth "Bearer foo"
platform-get-payment-order 'Mv12ZSRJkujxbCu1' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "HFaj6Vxs3GuA4S1d", "paymentMethod": "S7H7yIS7b5TSDRIo", "paymentProvider": "XSOLLA"}' 'g7Dc5APzfzXDELJF' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "aIaEMW5bhJyL72WD"}' 'yhBsCCbnfihnXKxG' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 47, "currencyCode": "1RJTTy9JrNz1K5M1", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 68, "vat": 65}' 'Qh8I9xk3sFl0cbuC' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'RM69XKkLwioRaKnW' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "hlh80BhYe2fJDS6T", "serviceLabel": 72}' '5Q4ulonMFjmYqE1w' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "JhfogWg2Apm0sUy1", "sandboxId": "8aWn65Co0vdCk8so"}' '6JSaZAIadKDEZywo' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Nintendo' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Oculus", "Playstation", "Oculus"]}' 'Oculus' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Epic", "Epic", "Other"]}' 'IOS' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Oculus' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "gBVUUeKKlPKtE6gn"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "D2bTcgaKoccaSwWc"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "uwWrCQt86Jrg8tLA", "eventTopic": "JWpcyNkUvqn6eXr6", "maxAwarded": 64, "maxAwardedPerUser": 87, "namespaceExpression": "NbKJ05Orya6LSSUl", "rewardCode": "ugIAknXcSaVYcAYp", "rewardConditions": [{"condition": "7qSiDvsfMUOpWv46", "conditionName": "sXvpOjrpRo4mYrCe", "eventName": "QUnYoID2UqO0iAXA", "rewardItems": [{"duration": 23, "endDate": "1972-06-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0ZwosKhDlLfTKxpV", "quantity": 83, "sku": "EAj3dbRTI0i6dO3z"}, {"duration": 22, "endDate": "1972-09-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "B0sL2xt6fX9j7rhZ", "quantity": 58, "sku": "qVUaWMJBjrV0p9A7"}, {"duration": 39, "endDate": "1986-01-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rV0MbJGr4drgkDuW", "quantity": 91, "sku": "Ox6yrIw37pKOLrF5"}]}, {"condition": "i3gr3Cc4M2O7NrTQ", "conditionName": "O7KLdZDGwqx7T3l1", "eventName": "ut2oyolliYsTJUmp", "rewardItems": [{"duration": 39, "endDate": "1972-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MraDLrwh3d0ykRGk", "quantity": 12, "sku": "nacA34xmIOjFLgKR"}, {"duration": 77, "endDate": "1996-03-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EWhOScvtQ92iD02Y", "quantity": 78, "sku": "NiPPjpSAlZwFGpea"}, {"duration": 49, "endDate": "1992-01-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BB49Km4ClIQmkIdL", "quantity": 58, "sku": "aSot7aohFYy4VxwH"}]}, {"condition": "IJ9gzxqAw4vBGQAe", "conditionName": "h0VTiTP4PSrXUS6j", "eventName": "YI9lsQFD43Df5qUZ", "rewardItems": [{"duration": 84, "endDate": "1997-09-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zpFd6b5Jc5TETHcu", "quantity": 32, "sku": "jFZgF3erw7UsyHq4"}, {"duration": 2, "endDate": "1985-12-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Hget5hzB52BDFopx", "quantity": 96, "sku": "769zLJdKMexeJc7N"}, {"duration": 45, "endDate": "1986-02-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SgKjCxZjKf8NA4cG", "quantity": 97, "sku": "SRy8GgVk77fd1GS5"}]}], "userIdExpression": "YkyhAiAItnWUmD22"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'oH6opK5DSO8JyX4I' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "E1z3rDwZ1HKsOpyq", "eventTopic": "8agQuz86nc6jLF9D", "maxAwarded": 71, "maxAwardedPerUser": 28, "namespaceExpression": "W2ncJJKpqmgvUTr8", "rewardCode": "XAtpOqUQxzqJZiWi", "rewardConditions": [{"condition": "3KQffT5Tn61A1xW6", "conditionName": "okIqmd87ir9op4Yf", "eventName": "GTno5oHzqY3DgykA", "rewardItems": [{"duration": 50, "endDate": "1984-09-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Smo4KX9TPO3K1k5Z", "quantity": 80, "sku": "YoSXbn6l5xAzc1nc"}, {"duration": 8, "endDate": "1984-09-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "m950dtVAo7w4e3v5", "quantity": 25, "sku": "oai2oDm9FaP0HJ98"}, {"duration": 39, "endDate": "1979-09-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4UyoQg0b0sGOkzxV", "quantity": 39, "sku": "SfW9OutADrNGBWSJ"}]}, {"condition": "1zQKxVmRTawjiZPM", "conditionName": "oZZcyGEHxAKDQher", "eventName": "3usApPdJPn9eIdhI", "rewardItems": [{"duration": 57, "endDate": "1982-03-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "upABJ4RwH3EdKmYt", "quantity": 3, "sku": "7gIKBc7OYTylFRAJ"}, {"duration": 74, "endDate": "1997-07-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nC0cfPl3Z2zSBbs4", "quantity": 85, "sku": "Y5YI0jeO2zMDSy4k"}, {"duration": 51, "endDate": "1995-05-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UcYzswAGpXqQxctu", "quantity": 98, "sku": "iXu3iNvn7vLZ7h6a"}]}, {"condition": "lhJNGZF07lsPP5Of", "conditionName": "HbXzWnVO2U4uyzZo", "eventName": "1rj0ZrLQjk4VoYfI", "rewardItems": [{"duration": 22, "endDate": "1973-05-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "th24cZBpdDFfvzeU", "quantity": 14, "sku": "iqhx6zv7EURTNIoG"}, {"duration": 51, "endDate": "1986-07-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "X1tfW488oYUT4jyC", "quantity": 97, "sku": "ZS7snx0Q2Gd8m7Y3"}, {"duration": 45, "endDate": "1975-11-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "loJfey3HXL6SjljN", "quantity": 85, "sku": "JkjCVpZKMxkFkBtX"}]}], "userIdExpression": "MU6KRIm5xBoIi99c"}' 'tgFXasxp5h780ktj' --login_with_auth "Bearer foo"
platform-delete-reward 'Qw2yXzaQWaF2PqUf' --login_with_auth "Bearer foo"
platform-check-event-condition 'bpMpRl6xRyV19cbo' --body '{"payload": {"rUHeCpqnZ5NW623W": {}, "Wn2ZJY3QvRa7CDRT": {}, "csAHzD3dZyyWbUQp": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "bcv3IwmL7a1K3zIU", "userId": "YJmdF1YtWNSQlcMz"}' 'xfppNCrscDPbklTH' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 55, "endDate": "1977-01-15T00:00:00Z", "ext": {"gXsrVj3Mjml6BpCO": {}, "DWGOLMmCZUeelXYy": {}, "NrXweiCnDldRPRfd": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 25, "itemCount": 25, "rule": "SEQUENCE"}, "items": [{"id": "0GTJwEjoZrRtaeWK", "sku": "MC8wsOByQAMAgqFE"}, {"id": "zEt8umj5XhKnw7MH", "sku": "DwFVKUC2ecnpUDqv"}, {"id": "LQixPKVSmWa8TGko", "sku": "16XTqHc0cM7ixq8T"}], "localizations": {"jnxp5Cl8ggaEmCcu": {"description": "K2hHviBEWpbusO6E", "localExt": {"yVqstpgZpbz77y88": {}, "rUFum2ZcA8iKcF0b": {}, "kfjcTEFXcTwEtnHx": {}}, "longDescription": "P5pVtN4jNVIdruEA", "title": "39uCJzsE8WObt6t0"}, "w8LOBxE15JYj4IqW": {"description": "K09l4wkrzahXR1sD", "localExt": {"EDVKDINE3HjCiVR1": {}, "dQ8kuhb4pUwnGptH": {}, "UplxzaDa9PDwhu31": {}}, "longDescription": "d8eOdtrfq6ECDD6O", "title": "GkuLs9gNpNon6DKW"}, "9A6AmnQTNFidImWO": {"description": "NTvCPMGLdbYEknHP", "localExt": {"KrZ7TiNBE0HRsE0G": {}, "HDOFjrfqJcyxT2a7": {}, "fCFAUzLELiM573Td": {}}, "longDescription": "tWjfVciuLnLsBKGs", "title": "ALPuCOyphUUAV957"}}, "name": "08zaP0wpZgQEvFzo", "rotationType": "FIXED_PERIOD", "startDate": "1984-06-29T00:00:00Z", "viewId": "yUonirH4URx3NkKQ"}' 'BYrlUaMiFEWUT8cA' --login_with_auth "Bearer foo"
platform-purge-expired-section 'FO5zEw8GENEJYPKx' --login_with_auth "Bearer foo"
platform-get-section 'xOw7xNQ98IEbc9YI' --login_with_auth "Bearer foo"
platform-update-section '{"active": false, "displayOrder": 20, "endDate": "1980-11-18T00:00:00Z", "ext": {"P2AGeidXRRnIAJfK": {}, "VjOn6rtILNJVv2DL": {}, "LUyBt5hDs45siG30": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 90, "itemCount": 17, "rule": "SEQUENCE"}, "items": [{"id": "Ga5mkZjnRXVcg6AB", "sku": "yNpBo2JYkwLdmR97"}, {"id": "u9MVUii4KpYcb1AU", "sku": "sESaBOTHnbX9tC9P"}, {"id": "QlFAGbMtEybfcAl0", "sku": "mnsAkRT2k0AzdgIu"}], "localizations": {"nRkTxsGdrpNELM8L": {"description": "fkut0wnT24wh59RG", "localExt": {"SbBMh7jpszuVk6iP": {}, "dJ2boQqCCyJfThvC": {}, "JieqRSGN8Mm74HlS": {}}, "longDescription": "Zzp4aEW4GkHG5OIV", "title": "uGv47XJpkMiopQrV"}, "L3ZZTVxqa9XM2gY1": {"description": "4iWk12Jffk8dwKNP", "localExt": {"UOHNZxML3yoBM9qx": {}, "d6PWz7sVnMxge2in": {}, "L8fBFP1ABaIKrEt8": {}}, "longDescription": "d3o7cTS9OIIMErnN", "title": "TLXHrsOFsbhRow4i"}, "aYKy0IjsDgbJ37DN": {"description": "2lDvdh7okHl1wMht", "localExt": {"2Izq7TCUJhDsDefA": {}, "S09VyQB1vR1mx6K1": {}, "7GL1CrO4ZuoGZSxT": {}}, "longDescription": "zm8oMSPIHPtqzIWI", "title": "zg8pbjnt1iBV8Dpb"}}, "name": "jGts4UZDTfhAyZKh", "rotationType": "FIXED_PERIOD", "startDate": "1990-03-07T00:00:00Z", "viewId": "C7V8BEphnRXnSpCz"}' 'yb8FkoxQbrPngi87' 'K58pQswqKLutINus' --login_with_auth "Bearer foo"
platform-delete-section 'Osa92F6iwkJIYOLa' 'rmpWyvib9CDW21AN' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "rlpuXD9H1u1CvzWP", "defaultRegion": "cZwkj1l6bf2F9EXO", "description": "Bj7v8LHYivmD0eky", "supportedLanguages": ["cMKlwJTNL2UCWUta", "AD7ZZx1iefATWcDS", "qGYRMdz07xEJ40ep"], "supportedRegions": ["ssgJJC3CX0hpB1ZG", "MMo5DSozCuFsrBMt", "oOeLfMCYxSeeJOlx"], "title": "a395rghZwGhdZJkk"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'VIEW' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "APP", "fieldsToBeIncluded": ["hYvXYMIyaEMEqOpw", "etb82b96rsH73hRf", "Dgl29GWKpItMt4Gs"], "idsToBeExported": ["zRufkDFLYyNBPlMr", "kse9SGcMuV5phhU3", "15LUC6HSMQ32UznX"], "storeId": "Nd6ve29lqqtcLJW9"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'eTJvKNDFrx6LabyD' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "nqXjXKPIcxh0x7T6", "defaultRegion": "RQGnnW4ugGX6mKBb", "description": "gTD9xL07ZzzIs3Jk", "supportedLanguages": ["e34ZAUuLP897ooML", "nemwKAvgDXNrFEE4", "Jf4hQpsLOcLtZw0e"], "supportedRegions": ["fmEVcW7mxbS5UOoI", "CxQMit8555Niy4NN", "FpRE5pS85yTIRWvL"], "title": "Ry58UKWPv3F7S0wC"}' 'VlYQi9cfMCeNnu6O' --login_with_auth "Bearer foo"
platform-delete-store 'IG1PPLRDEXLXZWXv' --login_with_auth "Bearer foo"
platform-query-changes 'qNCHvNpeMjMzguq6' --login_with_auth "Bearer foo"
platform-publish-all 'HFIqaqwH9J6JLb5f' --login_with_auth "Bearer foo"
platform-publish-selected '3SBMyJUdwEBRrHAW' --login_with_auth "Bearer foo"
platform-select-all-records 'UFqTooGGnPEgY0t7' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'QQWl42byOwXgKyPh' --login_with_auth "Bearer foo"
platform-get-statistic 'Xmcysae8HpWH4xiz' --login_with_auth "Bearer foo"
platform-unselect-all-records '3fWthJSu2pUIIuPL' --login_with_auth "Bearer foo"
platform-select-record 'FAtcWhjAP57QbWvS' 'Sp71zEPPfmAQiqRR' --login_with_auth "Bearer foo"
platform-unselect-record 'C2caquMRtQOILcaD' 'qUITBHQR5ISNoFR3' --login_with_auth "Bearer foo"
platform-clone-store 'GUxdMuvmL0UBfwza' --login_with_auth "Bearer foo"
platform-query-import-history 'aeP3Wd0Wrb8s3GW0' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'CY0vAfbq8xoCurq4' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'lpHXrbVBh60NUA2a' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'KQwnXrmi6ya8u4sQ' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "Pvaf1AcweR7tJW3M"}' 'LMob1hUnIzIpUM8K' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'K1kGFN0NUNGKxdlA' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 96, "orderNo": "JZluTekDMCGUJvER"}' 'xNg8djSb4Vt2vKQ5' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 24, "currencyCode": "TnsZioDiBgprzahP", "expireAt": "1985-08-25T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "M0dgozmco41750xd", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "eePkqg6Zt1Lr5BlO", "entitlementOrigin": "Twitch", "itemIdentity": "YGumTKOlDOy5vhSk", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "TogG0N7Hvnuq1kJ1"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 31, "currencyCode": "mGdWl0wpj5tVfKU3", "expireAt": "1986-04-28T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "ZuEjY0rNBbbB9txA", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "tRQvqJacXR2Rf4no", "entitlementOrigin": "Nintendo", "itemIdentity": "DFaEUkPUBnB0ZEJH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "bM71Tg922xiBgHSk"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 86, "currencyCode": "qRBeSc5uShoj3dGH", "expireAt": "1990-02-02T00:00:00Z"}, "debitPayload": {"count": 24, "currencyCode": "oi5DBOsQ0Gax0iX0", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "HBzArbyW10NkJFQx", "entitlementOrigin": "Other", "itemIdentity": "mCe4txY0MsPc9EMg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "9JCJiEvhL8ZfwCVJ"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "MeNmRocp400RZe8B"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 56, "currencyCode": "x9aGEI22BTCZs97T", "expireAt": "1989-10-09T00:00:00Z"}, "debitPayload": {"count": 93, "currencyCode": "8GPrM24F3celFgM6", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "10ckMQVjKk3bWJ0Z", "entitlementOrigin": "Other", "itemIdentity": "6OGbn8vmfMYGLt1A", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "Khh3JMX7xSrz1EH6"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 75, "currencyCode": "xzsNrJzWBcdFlo7o", "expireAt": "1984-08-23T00:00:00Z"}, "debitPayload": {"count": 38, "currencyCode": "qxx24QM35bSkFrvG", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 18, "entitlementCollectionId": "P3r1a8KIJH33aKkP", "entitlementOrigin": "Other", "itemIdentity": "uz3c8pz63M0g4xXT", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "ROjSKFEuZo2ElXYS"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 10, "currencyCode": "yRNgjZkdDppvEJiU", "expireAt": "1975-01-30T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "hwmcH03yoMxzRR6x", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "9rTh3ureaIbxM3We", "entitlementOrigin": "Other", "itemIdentity": "tdJLdn3R2wo8beVQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "tuSJGQCrM7JEMRPk"}, "type": "CREDIT_WALLET"}], "userId": "sLmP70LxN0f3JA27"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 52, "currencyCode": "vUKMuIiz2MiAAKcv", "expireAt": "1984-07-29T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "nxnH0QIhoJRY807V", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 57, "entitlementCollectionId": "TqtMiQgi7Aj28qCR", "entitlementOrigin": "Epic", "itemIdentity": "ei0pXglJYnKkoCAZ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "olAWnxkImVbDP0QX"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 71, "currencyCode": "cX435TDYpkk2Gza6", "expireAt": "1986-10-06T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "Fe2bzr6qQw6fSESk", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 84, "entitlementCollectionId": "KnMlnKW9jiNMu9QV", "entitlementOrigin": "Oculus", "itemIdentity": "fhUaZGqjslu59GT2", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 87, "entitlementId": "AacmZRXZm626POXW"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 9, "currencyCode": "3KP1mX0iYHXBU3Uk", "expireAt": "1998-07-01T00:00:00Z"}, "debitPayload": {"count": 40, "currencyCode": "UpUDVLlTtuJJsHZV", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 53, "entitlementCollectionId": "G6izJZruOJvSRFLD", "entitlementOrigin": "Twitch", "itemIdentity": "dj8elbtHvDU91DmH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 34, "entitlementId": "wiqVPCJ5j18Ou3aY"}, "type": "DEBIT_WALLET"}], "userId": "WNKGhbLhjz1v0RBI"}], "metadata": {"O2rkJGmPaK6HEVIQ": {}, "Jd3930TGewjRyfo4": {}, "nWVZZbKFsKOmgEhj": {}}, "needPreCheck": false, "transactionId": "2wFzCpxxJLfAg5cF", "type": "T0gHAkltcR3eHFbi"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'AluHv7Hssd05pHBJ' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "X5ln8PZbYVD8RiaT", "value": 37}, {"id": "dupUHNu8abrVVOKx", "value": 35}, {"id": "AUXkw36cr2WJQqS7", "value": 94}], "steamUserId": "94Jy6yCSXBqJqjAb"}' 'VwSaoj1ugjr8mPkr' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '3tZ506ERSVy5M3rr' 'kxu0U9h9gCNVZxHG' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "xhZqNXJ6JXSh0Z3S", "percentComplete": 100}, {"id": "QXDNHto74GcmVf0f", "percentComplete": 3}, {"id": "LFQejNZJNF2hm0Tq", "percentComplete": 57}], "serviceConfigId": "G67g4W1eAmDxP23q", "titleId": "stMuikKc6VNU8570", "xboxUserId": "siWm3V9sirE0JOQx"}' 'WeHypqCWMDPRI2cC' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'k8zHR8VyCC0EQwE0' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'cXokXbwKDtVmrYQu' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment '7hZvHfiT9s9pK8Hu' --login_with_auth "Bearer foo"
platform-anonymize-integration 'UY1QQHQ0NCEddJtx' --login_with_auth "Bearer foo"
platform-anonymize-order '6GV01vD7lNLxlpvq' --login_with_auth "Bearer foo"
platform-anonymize-payment 'aB9P9GaukfCEIeSB' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'LhTfzigzHcRuJgYa' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'j4I8Dzyh1N0JEKNo' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'MtHvjM7X1fjzknv2' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'HZMIL2P2bh14LroF' 'XBOX' --login_with_auth "Bearer foo"
platform-get-user-dlc 'nAuujPeP9N0vdVB5' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'a2XkS3XQfMuzZh4A' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "hZRe2hgU56xtyJtn", "endDate": "1972-05-27T00:00:00Z", "grantedCode": "TDXu7FbleSP5PcdO", "itemId": "uq0m0rvakR8rcwoj", "itemNamespace": "LRjhcaJ56nGlYZ2t", "language": "YD-hzbv", "metadata": {"UJYnQ3jOGmROIqxq": {}, "Q0gcNeTflyvUh3w5": {}, "ZtfwmOCKpFSMF0tf": {}}, "origin": "System", "quantity": 18, "region": "IZCTNiIRc9fEjkZh", "source": "REFERRAL_BONUS", "startDate": "1978-05-07T00:00:00Z", "storeId": "T3t99HmcxzjDhTrc"}, {"collectionId": "BKtU956hOg8oukDV", "endDate": "1972-09-08T00:00:00Z", "grantedCode": "weG0sFHxTHa2k60S", "itemId": "zCqUgq1gLbcIMevT", "itemNamespace": "mC631p7q794bu49l", "language": "ioKg-bRzc_Cd", "metadata": {"Q2wV3ZbBTnNQnVUh": {}, "A5WnzVZdj8tsyzC4": {}, "QaLXp3o4TDraEEaD": {}}, "origin": "Xbox", "quantity": 33, "region": "JbVd20FVHevCjthJ", "source": "PURCHASE", "startDate": "1971-02-25T00:00:00Z", "storeId": "jKuMrFaoLulzp3sZ"}, {"collectionId": "xImVK5yh2LcM8LaM", "endDate": "1996-05-03T00:00:00Z", "grantedCode": "0ByjsRUrAHNRkIcC", "itemId": "4wNFzsbrtYvLh56A", "itemNamespace": "WXoMiowdWSs9DQ0V", "language": "Ajfz-PNAA", "metadata": {"TDzk66ix88sAUrXr": {}, "7MXxCvyy7caxz4MQ": {}, "rODLNlxiEjQBCZx9": {}}, "origin": "Steam", "quantity": 11, "region": "J4V97SJLlrwXmIGa", "source": "OTHER", "startDate": "1986-12-21T00:00:00Z", "storeId": "YLjTSNDf3zazm6p5"}]' 'Y1tkG9WwU4Ty6Ch5' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'QYyFjuBquE7xssm4' 'hxczskbSUbOZ9WNl' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '3apJmNAbl1g5ZmTT' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'YRbP4QVey9pEz1TV' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '5cUtPBsw01i5Mf7W' 'vbNSeeDNfUESLlwH' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'v3JgteOLyKp8a1Vq' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'xXnRhDd9TGkO6aIY' 'qftw1SrM2nhSEanf' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'UYrMU6A43UKGpvC1' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'cr5T1PSXhduTWchz' '["XDv3TAtBjP4HSuiY", "CbG0UyYUJmNL8p6A", "bdtU0CDrlQpKB8qo"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'el2QK3aSOYdmMDik' 'c3Fjm9HoQDemtiQv' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'URYZCeF30RT9rBgM' '8o7lxXq7TkdM7FVD' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'CBcvVegrZddP8lLQ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'o6tHj4z4cAM4LMJf' 'WNZIxAgBpeubprKX' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '68jTyRd3LrR1x6U1' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'v6zSLjm9zmzUW0vP' 'j90jmLTt5YQGawco' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'mPoiYoQ1f1AYq306' 'Pysv4VPaZWolXypw' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "ucUqqqff2iWi4yP3", "endDate": "1981-06-18T00:00:00Z", "nullFieldList": ["qNcig6YcDA8Z3g62", "oGYwkrjLI4EHJEEW", "gki9fbdvUMDZeO4U"], "origin": "Nintendo", "reason": "5wdCpVpnENiTc9NE", "startDate": "1994-12-01T00:00:00Z", "status": "INACTIVE", "useCount": 9}' 'lmV3kES0Hi88UYgS' 'V40OvY7apPCrN5bE' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"hmuHgKeWizEpw1zN": {}, "0mOYgGhHMz9dddLW": {}, "JWDuSYtCaIv4Lp91": {}}, "options": ["wYUJPbvzn8TYoMDA", "aUXSuBQdvdhJoT0W", "K5ngNUxDKfZYofPG"], "platform": "UbSaA00nKxQjYU6K", "requestId": "lavIiLxU2I1GyJS4", "useCount": 68}' 'ZLHW882riiPfRQ3r' 'J0f5lwXvRNDBnmL1' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'KQn77hiP1lzkzjYD' 'w6mLBordrJkD6vy6' --login_with_auth "Bearer foo"
platform-enable-user-entitlement '0uRMT1Xw9K9Yb68a' '8ygYx2TqkhlqMnE9' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'Wj90EQzOidrWnLrX' 'qImgDf3GaJsdCZND' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement '0wgYOilX1e1825ia' 'sunESjcgr2drXG5N' --body '{"metadata": {"kKCySLA8cKCs0dFY": {}, "RSa2OULZ0iOZJiOA": {}, "h1SpLhMF2Pav11Fu": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "U8iXCRz8KgqgwijY", "useCount": 48}' 'IBpYC4txul6VKYlN' 'YYlHPwKDpJmkeoAk' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'p3Z4pgyJYwclb4gd' '4QgQut2hiPuDdOPH' '4' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "8HlHbHnfs4tLVOYQ", "requestId": "CWMktmiKd9vLPP0w", "useCount": 72}' 'JRAZxMWdoleYNHXe' 'OpaRDwYLge851PbK' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 88, "endDate": "1990-12-27T00:00:00Z", "entitlementCollectionId": "FKvw5TWjAh4gy41L", "entitlementOrigin": "Twitch", "itemId": "ZDRNkk4DJUofJXK8", "itemSku": "RGS0zCYRVmbfzwUm", "language": "sy0stUmKdXiiTObN", "metadata": {"dqkWa13g3pgHx6uP": {}, "f6jQZcYerH933X7i": {}, "XEEM2KOusNEHcI95": {}}, "order": {"currency": {"currencyCode": "GGdJvucDbs6Udccu", "currencySymbol": "M2ykRj3WnyAaUaQB", "currencyType": "VIRTUAL", "decimals": 64, "namespace": "Y8nlBwGNHgfgwZwV"}, "ext": {"MvshGmsg6ZJYnkHD": {}, "nHTlRugM7a2UZgee": {}, "sipbP027okM5E8tA": {}}, "free": false}, "orderNo": "S861c0CJ7LzpFvOS", "origin": "System", "overrideBundleItemQty": {"xXEdloYZBkatNLc4": 8, "eq0O6VsXtOlQwj5x": 85, "hL75QboMHCtzEF9F": 92}, "quantity": 8, "region": "64dFpiv8o9Gw4QtK", "source": "EXPIRATION", "startDate": "1993-07-19T00:00:00Z", "storeId": "nWR30MdBZezfwc3H"}' '0qSbMq4GLj8aGsH0' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "qE5p601ak59yFSfd", "language": "ZWNj-Ou", "region": "iKT57rmbjEnimeR7"}' 'EFBz43E9FkOPVu2f' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "DtOjW1iSYQbcebBd", "itemSku": "5wb5H3qppoCiHMD4", "quantity": 17}' 'IbrJ2S5Pf1Lvg8kY' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "EVylINJpxFY8E6pU", "entitlementOrigin": "IOS", "metadata": {"eHjh0aTjIOaQt0sn": {}, "bE0yMvqF7TJ9uB0z": {}, "ypjJiu7BIimNuwB3": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "K8bihdw3prp0UHlW", "namespace": "UxkBefhxRtrqbv56"}, "item": {"itemId": "oqwnCLVc2qHZuued", "itemName": "bBOd19DqZJRYV1oq", "itemSku": "NLmPAUIMwa2wYq6D", "itemType": "sUq38bYvaWLoKzHn"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "yh0zsKhR60HZwUwk", "namespace": "48XK7MXHbEwAvvpE"}, "item": {"itemId": "eHhXiJcJqYSxVKUY", "itemName": "MimVLzAP6aOzsTqE", "itemSku": "FXUhGAwpYq1UqZyd", "itemType": "OB0MThZW6LwcAg57"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "BVCbi0ifdPyKf3Sw", "namespace": "HekWIz4rXlH5jw99"}, "item": {"itemId": "HxCjXWcaXBcfXXeV", "itemName": "7BXefsSgZxSYnVwX", "itemSku": "qF6K0WA76Kl2mHHo", "itemType": "z6qBQnEDgX49n1xT"}, "quantity": 60, "type": "CURRENCY"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "IaHSx5bClxUOBmMw"}' 'v5pmiIVnhlLoMems' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'p7o3F2LQw7Y2VdSx' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'gXez7VvS0C9JLVQQ' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'Pa7PPx4Zi6WaC8wk' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_SKU", "language": "jnmB_pJXw_373", "productId": "AaW5xz1c7ZuZXUCB", "region": "YnkY0LEBSYBdUSiT", "transactionId": "OrhB8hVs29WOKmZR", "type": "STADIA"}' 'lJ93CCGBXv4fP4VP' --login_with_auth "Bearer foo"
platform-admin-get-iap-order-line-items 'zhcH4UJrrCKvrOAi' '7lMgkVWJYzSCIDxW' --login_with_auth "Bearer foo"
platform-admin-sync-steam-abnormal-transaction 'UxgOzeRNHIqK5PT4' --login_with_auth "Bearer foo"
platform-admin-sync-steam-iap-by-transaction '{"orderId": "04mFw4HJv5T2kIQO"}' 'ecfLsYKTmUnKlrOs' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'JmEwjGYN8VNPXNsm' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'STADIA' 'SGQyTzhs9Asy4d62' '9N4YnolVWA2dWxBs' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'OCULUS' '6jkPCUuE1pgdHvlQ' 'KiR7SDQUDavOlKT5' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'EIHNhJQq94Re5IM1' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'akNKz9IltQUku3n3' '2atB0QPQPEp5UtwU' --login_with_auth "Bearer foo"
platform-get-subscription-history 'WGt6tooHP5kAww01' 'zalTddhAQ1pwqnyb' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'vUIfuulmeegRwPPb' 'n7lttd21cS6IVE4f' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'zwG3BHaRcZ8NK4gk' 'LmvEOaRcqTgF0xtQ' --login_with_auth "Bearer foo"
platform-sync-subscription 'AXoDoFkmA3fgzcwd' 'gJMjIyGfiNBQy41M' --login_with_auth "Bearer foo"
platform-query-user-orders '1gzGCbaxw33rNbE4' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "bbDU4FMTbQaANJOO", "currencyNamespace": "DGerDCWcl3VSJENQ", "discountCodes": ["GoUtmbWZbEjPyq35", "qnJUmfDmofxvN8pR", "opeHD6iKBGm5Cj7R"], "discountedPrice": 56, "entitlementPlatform": "Playstation", "ext": {"WDoc3qNcQFFyHv14": {}, "1NPqjRUMKSQjFdjq": {}, "TaZFsWzbqwTZQIN5": {}}, "itemId": "jC6a8mEVCXHmFnrS", "language": "L0PJcZQaCeNLYxMI", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 32, "quantity": 33, "region": "xFMD8tJQwZvUVIno", "returnUrl": "s5RK100yH89i8ZDP", "sandbox": true, "sectionId": "L8cbTAntB1STaab1"}' 'UeibXg7RCe5BtKcw' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'j6PqqOgCimr3ZQNB' 'BkrXu9czsYr3cFeV' --login_with_auth "Bearer foo"
platform-get-user-order 'w70xdNTuOdLKK0M2' 'B2hbqJin37P69t1K' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "DELETED", "statusReason": "pEhjTFYdzsUNvQAn"}' '2LuMjLqwmVz3zKsf' 'jz1mFkyxoUzfMFoX' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'COguSq2A4R3wDdSk' 'NfHJtA3QiX9Zvtyd' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'baVb0scd97A0GP6d' 'jn2Ps3IVT5hUZ3cn' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "Dq0ddZG0EpfGAqHK"}, "authorisedTime": "1972-06-29T00:00:00Z", "chargebackReversedTime": "1983-05-23T00:00:00Z", "chargebackTime": "1995-09-21T00:00:00Z", "chargedTime": "1972-08-30T00:00:00Z", "createdTime": "1997-02-20T00:00:00Z", "currency": {"currencyCode": "ZAWlvz3c3XALMres", "currencySymbol": "GFfsH4aXCDhshvEF", "currencyType": "REAL", "decimals": 36, "namespace": "vTZcvRKoaM4ozSAg"}, "customParameters": {"8FTLrByWOJhbocoG": {}, "lPzdfxcC3rpWhSpq": {}, "0InxMLpP7n7M3JXj": {}}, "extOrderNo": "Evsj5WcQ99M1yuXe", "extTxId": "qV31LX2ehcMnM6Qt", "extUserId": "jzQjDlUMCGnxZwak", "issuedAt": "1996-10-22T00:00:00Z", "metadata": {"Dokltgq2vXtUnY6U": "hDJ4pe0s0Cuhl3dU", "9b4seYCyiB4tDCWx": "3cEX8wTi1v2abpCW", "ytPEi9Ze0hL9rPkV": "5GkSrcl2O47XVzU7"}, "namespace": "qlNVk7qnmBS3XKDh", "nonceStr": "p1OkMcErmeH0lX1h", "paymentData": {"discountAmount": 19, "discountCode": "3XgTRTjI9oNBzgQ4", "subtotalPrice": 58, "tax": 11, "totalPrice": 90}, "paymentMethod": "zNjQ7IuMSY2epRDJ", "paymentMethodFee": 18, "paymentOrderNo": "KI5EVB9ZFzLNsjdC", "paymentProvider": "XSOLLA", "paymentProviderFee": 54, "paymentStationUrl": "tKY0KsxR0rCFkyiQ", "price": 57, "refundedTime": "1973-12-03T00:00:00Z", "salesTax": 80, "sandbox": false, "sku": "roN4UWbQaKFrTv4J", "status": "REQUEST_FOR_INFORMATION", "statusReason": "8VwFQnVco2oCn1Kv", "subscriptionId": "JmbjapW9UlEqtzDd", "subtotalPrice": 65, "targetNamespace": "SgxdxB5kvtM8ah9b", "targetUserId": "PsksceGUEX8ERZcK", "tax": 92, "totalPrice": 55, "totalTax": 62, "txEndTime": "1990-10-13T00:00:00Z", "type": "o6y7yJMowQ6LpHCv", "userId": "CYTgX9JQwErzjtuP", "vat": 31}' 'TY4v9NNfQSYLFKSl' '3FNFFJnt3rIwZdW0' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '2Su6aCnL816aH6gO' 'BUIMeL0GL3aefSDM' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "E8X2MxILI42BJMPk", "currencyNamespace": "Zmay4Csye3iJLtjs", "customParameters": {"u6ZJRCoDq3geuHFF": {}, "aZzPIjETqcKN1gaQ": {}, "4Bn0cPPtKaJlw31p": {}}, "description": "dDrXQ47WSGyDCKF0", "extOrderNo": "LLhO3lGZ7eGOPj2X", "extUserId": "oFug8BUQUmPHnPum", "itemType": "APP", "language": "ApaP-NVAw", "metadata": {"ZM28w4mnYvvlt1es": "7A4PFduN4gx0UC6e", "WKCFGS97Si6XyLVP": "rkUxyZ1OH5Nn4nMT", "8QOyTuUSD9ImtaPA": "ocOQcpBWSNrCjSNE"}, "notifyUrl": "AdojkCMmYyTGO07f", "omitNotification": false, "platform": "UJizF69PSsquWUaf", "price": 47, "recurringPaymentOrderNo": "4Q6XgICLgMHcP1eE", "region": "6sjWQllYsONpp6QG", "returnUrl": "W56CNiszHE69D1MM", "sandbox": false, "sku": "LFcHHcraLXR2n9JQ", "subscriptionId": "vq7NKWIHYsii3fCh", "title": "7sieJjZPAkiWumll"}' 'U31uXPwYxedGHCIk' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "mt4bfJOhNaIT0pv7"}' 'XeqO8gY3c4SryWB4' 'yRaDxvxwaLM8HkVO' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'W8PnLkgqkqYZWPZT' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "gKagTzdcYcko7U3g", "orderNo": "H239LhRx2Laa2Rdt"}' 'Vb6VgA5yFIH3s9Uy' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"eaFi8OE7BCK4FeVG": {}, "rl5NpUG9zblWEiHa": {}, "UjyTHb0sSlstb3sl": {}}, "reason": "Ue94NxhXsVcqTYi1", "requestId": "TMBMzaOrxuKvtUVt", "revokeEntries": [{"currency": {"balanceOrigin": "Oculus", "currencyCode": "kiU2jXSwsBBRopVl", "namespace": "38d4NZGtk6EmWxC7"}, "entitlement": {"entitlementId": "5M88TKhFYkA9aRND"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "V3yHurgOfba1XeoH", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "Rol84UlkxtP5Vok9", "namespace": "sNK1ORg3tChsS3fF"}, "entitlement": {"entitlementId": "paS1uq1mH3oYfPK2"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "I59Z9tfGVsglnOxO", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "gBLuglkd9LIoshGn", "namespace": "FSuHmrqej8PRppYY"}, "entitlement": {"entitlementId": "1vlV0M2g6oreqyBz"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "zCgMMWZuD6tmIR28", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 48, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "tpSKOfiIP3S6pypZ"}' 'qISn3msrykQFtW8Q' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "GKFZLrIfqrZuu7Iw", "payload": {"KcT7sAsv2TKCbYMV": {}, "kXEHmsHwIGGsusS0": {}, "zZRODEKPdudZsLaf": {}}, "scid": "8aZrXW84dt0TSTmy", "sessionTemplateName": "7XF26K2U7xttUz8n"}' 'WKJjv06PuffHghAQ' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'fAsYXVzBenLtaAoY' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'yRfiCWrm3s1Ah3TI' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 70, "itemId": "SNBaOlXfgsgBd7MY", "language": "LLoPZrkjRm5Ki0or", "reason": "hXrISEaPZHLQkTHv", "region": "ndQsCKAO2JRz3CGw", "source": "tujkzxidLcAQWGVR"}' 'g6DVso5TJCSugdo4' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'XTm8t1YTWqItjNWX' 'm9sraeMA78YSRS2f' --login_with_auth "Bearer foo"
platform-get-user-subscription 'Py5fpbbbMIu9lu18' 'jIMBUM77XmemN8LO' --login_with_auth "Bearer foo"
platform-delete-user-subscription '03mnFSq9jJTVFoFj' 'xZjh5qUR1Pq4a4ua' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": false, "reason": "okSWFwajRGUyklfL"}' 'VY6g3PO4hKAeF4GU' 'V5m96qcCJsVOWtu5' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 90, "reason": "O8xC4D0FsUo3IB2k"}' 'X5REQZsHyXzoIXNf' '0KbL9HyJttdgfLGO' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '3ummpllnV6B62P1K' 'azg73c6UpmA4ehxN' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "IIlcrZzgameT2mLk"}, "authorisedTime": "1976-06-27T00:00:00Z", "chargebackReversedTime": "1984-10-09T00:00:00Z", "chargebackTime": "1990-03-15T00:00:00Z", "chargedTime": "1974-10-08T00:00:00Z", "createdTime": "1995-07-16T00:00:00Z", "currency": {"currencyCode": "wguGgbLLN3O7CEYj", "currencySymbol": "xqElP5lA2FJ0iGLR", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "kNJCnDSrsSey2BqO"}, "customParameters": {"xgwCymCDYsuff3b7": {}, "G5FDX4mu0qPHb9Ll": {}, "2EFEb8GnsthmQ2Y6": {}}, "extOrderNo": "ZGOiqrg3lpqN5bOf", "extTxId": "nqJ5bzDRzbhMxfED", "extUserId": "E4TrtIHyyMq79EdB", "issuedAt": "1972-11-16T00:00:00Z", "metadata": {"7Mzjv1gSj8kcNhoq": "cRZRNATojM7daV0V", "wR3yNKDtMqMrAGpd": "yF6WDHn3ePBxQNz2", "IUEHMzl5jhwVDsuz": "wJ4v50eoaIBrTh0E"}, "namespace": "KkJioUpvGnkcHgCf", "nonceStr": "aWzPUvCnfqsPGgJZ", "paymentData": {"discountAmount": 51, "discountCode": "vrKMRPvwA9k6yJz0", "subtotalPrice": 32, "tax": 82, "totalPrice": 10}, "paymentMethod": "ETdywPqYerrpOm4M", "paymentMethodFee": 65, "paymentOrderNo": "pM4fIfcHBWZM50aH", "paymentProvider": "ADYEN", "paymentProviderFee": 11, "paymentStationUrl": "PXRns3qwYL6LwGlZ", "price": 66, "refundedTime": "1978-09-17T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "XQPLAcIL7FvAMWqh", "status": "DELETED", "statusReason": "YdJzf3TMhSaynVs0", "subscriptionId": "5nZC4Os7hqIH2NgA", "subtotalPrice": 88, "targetNamespace": "XBJPIZqZC5d6JuFd", "targetUserId": "cfiNf0DOHKwxDF5G", "tax": 73, "totalPrice": 41, "totalTax": 14, "txEndTime": "1971-08-28T00:00:00Z", "type": "DWh9JV5oc5IFQsrw", "userId": "HqFqwVA5mozeeOjI", "vat": 65}' 'btmQkwC8azx3IRWm' 'e3C6p2r4D3NQdjrj' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 22, "orderNo": "eIRXeoerZAxbDPXU"}' '5xJBhIpJ9b0Ap7Cm' 'SiKPjcwAw5GdxpvL' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'fa4b4hTaZBGdX66D' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": true, "amount": 50, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"TdurR3MYda0Y0BCO": {}, "4qPnvxERWjKasq5z": {}, "Q6uZNwKjnX7vDIqp": {}}, "reason": "cjmaq5KBCsHlwNrf"}' 'KJrkzwR40tfd9GFX' 'ChtxB10d4Q8nlBth' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'USu4WNfTvD5UcES1' 'eLMZs9lSQVDp16qV' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 72, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"jI232SjktijiNzTU": {}, "e8KdizXmrmK0sCUs": {}, "qxKocHomtjoU1kUq": {}}, "reason": "RedwIu1TSRr6r8mz", "walletPlatform": "GooglePlay"}' '7rIjGrxUMKbv60ix' 'UuUhopdqGrqRZ124' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 85, "expireAt": "1974-04-11T00:00:00Z", "metadata": {"PauXTrpWAjwatSvt": {}, "PbAFn8oWQcmFkkRX": {}, "6EqadAEIzxld80Yn": {}}, "origin": "Oculus", "reason": "vikslpyL9BYLVVzn", "source": "PURCHASE"}' 'MeJPCbs8jWmTteJh' 'wNbwHGG39YAZJ4Hu' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 77, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"feTfFBTOFFMJ9pq5": {}, "11jZcTK8zmMfyshY": {}, "k3b5cAFVo85r1b8Y": {}}, "reason": "p2QnuhQuIdvZdj6A", "walletPlatform": "Oculus"}' 'YlJElgJ8kx1WEeDb' 'ql13FtQMu41rnOzb' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 37, "metadata": {"NW1Yjfn8lY4DnYRx": {}, "Y8ZhHeb0CaPFDjrS": {}, "otKnpJWALpToj9rg": {}}, "walletPlatform": "Oculus"}' 'OCViHwunQwpC2eCF' 'UAHZaYSvsWiNJtqX' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 22, "localizations": {"xKOrfVfBRIfkStOq": {"description": "dXqhDMQ6tBLljC7g", "localExt": {"cT3M1DArk4L80aXF": {}, "Y7SQkym9KvKMHK5f": {}, "bqioeoRIplY0DIzR": {}}, "longDescription": "CNAO6ZpqXJmPJso6", "title": "M11LLZWKgWxn9YL1"}, "6HQdtAneXGgxNg33": {"description": "ZIUrIkfmdXVvaPQz", "localExt": {"zKdFg7N7piT8VcrX": {}, "LZnuMNpKEIs3GC9V": {}, "TK7tkJWFpHt7MdKu": {}}, "longDescription": "9Xwn5GHJDGatrYOM", "title": "O91CYEjX867n9PT9"}, "fR7mMuBXPDKCriRK": {"description": "zTZ7TXAVRnUVbxEJ", "localExt": {"cKHE764EwhQfxFKI": {}, "OGT1WKSmLoA0ILaE": {}, "SC1GJXsoBwqh0TQX": {}}, "longDescription": "a2j7v3zQJoQLTAlW", "title": "75icIKUpXazsFrma"}}, "name": "GNoi3RPTgWotLNz0"}' 'u8ySxA0yrjz4q7e0' --login_with_auth "Bearer foo"
platform-get-view 'EJnADXC2y0DY1E1S' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 80, "localizations": {"QukgQ94ZvPCWcMX0": {"description": "ov3U2sKjIeyFS97d", "localExt": {"YD7LkcTKYpCfl6HP": {}, "y5cJfAV5iOfzwt3b": {}, "pxRNt6lKoMjCPtEK": {}}, "longDescription": "eBWTm78Fn8TvZVTe", "title": "4L2lXrVPX6r5ZTcn"}, "VVOKMApTcWsFRUlW": {"description": "Bp4gBs9UufgsVbG6", "localExt": {"TUe3jbuQ7HMPO4oz": {}, "K705ykRqSPYZgPm4": {}, "JLsXVtBOEetHsxAJ": {}}, "longDescription": "8Ny1LRkPU9hrl5nk", "title": "pEdBe8bYWdok4UnU"}, "EOyP0cPZf5OvolfI": {"description": "0mqZctohLheRaQkf", "localExt": {"MLFW9B7jHZro4hhw": {}, "nANAGp8zGqNGrcQy": {}, "oA1TWPcy83iXfYXN": {}}, "longDescription": "dMkdg9TMwxNcQ6Ck", "title": "Vi8fqVPRqNbF5yLn"}}, "name": "YSa8xFLvcYexMMMi"}' 'DFh5RbW021cHN3Qb' 'zVuJZH3k54cExxWK' --login_with_auth "Bearer foo"
platform-delete-view 'tdGTW4FILotv5ycT' 'a0i6ifYP1zfgjsy3' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": true}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 90, "expireAt": "1982-03-15T00:00:00Z", "metadata": {"6K9h55mwUvhdBOgu": {}, "mV4wAsd4ifGd0bkW": {}, "rlhtfTywRW4fmg6b": {}}, "origin": "Other", "reason": "j73doCWxhubMXbxN", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "TOX5gBQlVDx9neFH", "userIds": ["AoUuVKneoO10ytPd", "WhDRJtyYEt7ygZle", "J8SY3qoogOxoPYvd"]}, {"creditRequest": {"amount": 71, "expireAt": "1984-08-15T00:00:00Z", "metadata": {"RKKPd6mjzLxllUrF": {}, "Yn7cSuO7NxKHUHg0": {}, "c4X7fHdITmN9opaF": {}}, "origin": "Other", "reason": "kh3pCRB3infEVxAr", "source": "PURCHASE"}, "currencyCode": "2Q0WwolQy037hJMO", "userIds": ["t0wrfWPXaI1Jb75o", "Ev5W0v25yAObZIbr", "A8XAKKWMDebehSjp"]}, {"creditRequest": {"amount": 80, "expireAt": "1983-09-17T00:00:00Z", "metadata": {"SoZbQUnUxS6m68WL": {}, "3HDL4yx5I0euBscc": {}, "HPA2v9XP9enfEX7l": {}}, "origin": "Nintendo", "reason": "IxL1OtleUBqBO0Ze", "source": "SELL_BACK"}, "currencyCode": "xLNnYUlGQsFpy9ZV", "userIds": ["Yn2z5cnbm7z2Aa24", "s9559ilm3cauhrw9", "lLIFwLgT78nootfU"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "yBTw3wfNGyWf3Vuj", "request": {"allowOverdraft": false, "amount": 20, "balanceOrigin": "Steam", "balanceSource": "ORDER_REVOCATION", "metadata": {"q5bcfPW4pPZB9YXl": {}, "tCxyztUnj17t3gHB": {}, "XvjvziexzOLbOWbt": {}}, "reason": "cJUxM3AWyDkA5LmA"}, "userIds": ["RT6kulpM4SRtUE5P", "QYycDH5we2Mx0sYC", "4kxmHtFbjqurHix0"]}, {"currencyCode": "nYPT4i4mxc14iRfz", "request": {"allowOverdraft": true, "amount": 76, "balanceOrigin": "IOS", "balanceSource": "IAP_REVOCATION", "metadata": {"mghdfVhjnjd66A1S": {}, "QmWGSQLAVPAJ7zX5": {}, "lB80k2smdkBS2MaI": {}}, "reason": "P7PjngEFggq91cpg"}, "userIds": ["rnEsxSE4vBzG7VK8", "bvxqa0K7VUbjUnzi", "voDBgYfLBdGNAZEv"]}, {"currencyCode": "sWEshmZf5fEdvjby", "request": {"allowOverdraft": false, "amount": 86, "balanceOrigin": "System", "balanceSource": "PAYMENT", "metadata": {"CF963CbsOawlRBQJ": {}, "H6fNekhk077gxaj5": {}, "5huTA6AvmW0567BF": {}}, "reason": "qbrPIuxKmBXLi6Gp"}, "userIds": ["nqAeMvg3w0FQ1520", "WM3TxWXSdTiKdva2", "UREoBSFtCLy2CqgC"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'G7JwJCDqkzOdFwLJ' 'pIPxzLE1V9U1NgpH' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["7Oc44yjRdfqZgv34", "GqqjelcN0GJmPwUT", "WMx0MiPAjnWIhFrq"], "apiKey": "Sn4erXEtU1CaD8Aq", "authoriseAsCapture": true, "blockedPaymentMethods": ["YDrZJvDLGvn6qtro", "Zcp16HKXX1ft5nBA", "9xNIJVuMz04evSdE"], "clientKey": "2FMcKd7c94rEmIYu", "dropInSettings": "AT5OAcUwYHGmG5rN", "liveEndpointUrlPrefix": "DBF1oU37vjfyX5YL", "merchantAccount": "aM0wmi0i1WABBbq8", "notificationHmacKey": "IzZsMFLX9ZhFXcFt", "notificationPassword": "fBS3ZIHofhwyM6Bw", "notificationUsername": "2sFGQ5DQoDwzrKPO", "returnUrl": "ZZnV3zR7YxSu6add", "settings": "ocg10Hy9jx7gBHTO"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "HHArjld0LnREsrrB", "privateKey": "2pJ7V8BSrucjO3zv", "publicKey": "SM5KeVNHU9GcOivI", "returnUrl": "fcCJt4U8VSgXoi9F"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "w25b9qXzlIK2G6AU", "secretKey": "jBCdf0Rp5e5IvFuN"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "1oUsCnBmGMx5F6Eh", "webhookSecretKey": "M3dKvIG9MR0hTINv"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "q1VR9SJUfQEX996M", "clientSecret": "h1sQ3Dw3uyjgQNAs", "returnUrl": "9188Qm3W1De2McGd", "webHookId": "10wefF0CJlH55RLE"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["geAsSpQdcmGHZuRV", "Q8tzwqMayP8A3HGN", "I3BfjkFd6MHo6gGQ"], "publishableKey": "5mChYoKD7yqCR03R", "secretKey": "ovQZhwfjkq9iyTby", "webhookSecret": "D3D01tRpuuyIagSS"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "zEL8H4euLufhQj2K", "key": "P3LLxl9Hs2L2wlpK", "mchid": "BVURxHefz77a9fnt", "returnUrl": "CNiHBRUNCPSre5Gm"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "ZzCQwilS3IxSjlyv", "flowCompletionUrl": "R9PxG9Lji2Vc88W8", "merchantId": 1, "projectId": 76, "projectSecretKey": "pY0011jSmHFTtfM2"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'mGUUpq3ix7Am7W1f' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["wJnV94BrMSP31wAk", "VH75UcmNXK5RqcIo", "9lpz9oM52vHPlwVV"], "apiKey": "3jlPKDEYahnlLJaL", "authoriseAsCapture": true, "blockedPaymentMethods": ["sJHNg6TvNGjwI4Tb", "TwBufUorJouduhCE", "J5XiKDIE9YugcupL"], "clientKey": "xVBcRkfhRuqkOTHS", "dropInSettings": "ia7oFd1fEmDuyAsQ", "liveEndpointUrlPrefix": "GzwJR5poI718RQnj", "merchantAccount": "4imu6XFfRcWDXhq1", "notificationHmacKey": "YmGeygr2S4Yw8NmP", "notificationPassword": "aBeryzX2hOPVVFqV", "notificationUsername": "qxjq1iG3TySOh8SI", "returnUrl": "75oXbyq8FBbur80Q", "settings": "wnlgAVfqz6gQJh8s"}' 'n0bVWRkvmAemh8li' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'oBR7xTXcEIFod3lC' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "zvjHzDHOrSJ1vbB7", "privateKey": "LRHd96dGLgkfrZve", "publicKey": "FMWAFT7l0l1jaOAM", "returnUrl": "CzbsoIgmKwwMDQPj"}' 'UIosq1l6xo0D4JRb' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'NqO6IuP2PY5hhX6u' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "Nah9JoHPj7jFWxSv", "secretKey": "1lYylYAiZ8c7Zd7E"}' 'UoezOLw8C1c5bBB3' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'XZ7ColKwlsNvtFuu' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "nQsvdXGlD40xxIyV", "webhookSecretKey": "wYjn6dlC9Kfh9gHu"}' 'loyce0cLJu4ljPWl' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'CWTuGO8MnfOQu3wd' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "T4Aodp95o1RkX7iW", "clientSecret": "7VpCngWAv5DAG8dP", "returnUrl": "dkKgQqjyzUZR2rFI", "webHookId": "AuALNhNCyscsMBRL"}' 'sWadk2OQ421q7Nb1' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'vrKthVvU5on065Ap' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["CkVN3QchuQ6pntxB", "648ss7rBnvQHAM8g", "SdIybKUByHBzfvgt"], "publishableKey": "RTPPzwJmKaLCx3gc", "secretKey": "idEALWe6RG5wWznu", "webhookSecret": "5AjwR1Z4fU7ICcaQ"}' 'tuuKUw3dUwWHhQW3' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'I1y9tjRLVOXBMa0J' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "iIe1AY0tUA7EKASk", "key": "3USNLhOBlxRBLgoh", "mchid": "p8ByTi2F6AyUX8w7", "returnUrl": "7riPlPgJcLbeQf9M"}' 'ICxX7xKyCfgwSPz1' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '4asyOdgn77gN8K1F' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'lNkgbFE8U4meK5gr' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "mPBsFH71VrhsISYt", "flowCompletionUrl": "egQbNA2WQrHTkJT1", "merchantId": 98, "projectId": 32, "projectSecretKey": "kChD3n0c1ryAkRvd"}' 'PR8gx2rX5dck8NFK' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'PgT6LMehg047axU5' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' 'NywRIvO2Sgz30hej' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "NEONPAY", "namespace": "tWIggmhfAzVdNYP7", "region": "Ao1z7FeJM2fWXGk7", "sandboxTaxJarApiToken": "JObSHksRkabpmvRs", "specials": ["ADYEN", "NEONPAY", "PAYPAL"], "taxJarApiToken": "YvXCT6m6mRZAlLBc", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "CHECKOUT", "namespace": "eil7GbG1ISBCkcnp", "region": "xKUxLjmxhBS6YypR", "sandboxTaxJarApiToken": "W7fNntaIEtDI6Mbh", "specials": ["WALLET", "CHECKOUT", "NEONPAY"], "taxJarApiToken": "dezbmf392ersoZ2K", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' 'Mb5jal0ruZmBXlGS' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'p85q6fuGfo5wSDHn' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "yabk493I3pvHKDaW", "taxJarApiToken": "hTN1qyxpUzWIZWJT", "taxJarEnabled": true, "taxJarProductCodesMapping": {"ZB1gMI1B8DXb37Df": "fTZ7yQz337LLNCjI", "ySe36SA5dxATLv5P": "kLvraRzChdjDGdlk", "2A2jHbAPNGInvbnf": "4ewKFFLoGggX4gQW"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'yZocvYfr0Rnl02R1' 'IVNnaK6KS71Xs1Bp' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'hA9BXpKYgF9OuigD' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'P0Vjmy7j2BrdCAm3' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'slCwaBqHpE55sjxB' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'XBOX' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'puRNeT1CULEMPaOU' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '5nukycAUlkUSZKUr' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'sxNRzF3NaUuCyQyz' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'e6zPKu5sE89JW8UU' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["0RsB6dvrpmInhHYz", "VVlHGFSwjby6rMYk", "VQnZDUAbINRKQsxU"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'O1YMxAndOj5O6IBw' 'XJjgQjgLoJyqwFVB' --login_with_auth "Bearer foo"
platform-public-get-app 'd1ZjaRXEdWgS12bS' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'bPgOCWUogizeWOPU' --login_with_auth "Bearer foo"
platform-public-get-item 'MrqgEIsMwNbfti0L' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "oTBcNzyoCSw1t653", "successUrl": "G3ydYmGzvx9bSqqy"}, "paymentOrderNo": "APha5b6PQTPTytHe", "paymentProvider": "ALIPAY", "returnUrl": "dhEVq3hbsApeASfR", "ui": "0ljKxqZcLuhwNDvV", "zipCode": "alv3bkoMXNzl1ywE"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'PiunixlEAHZzHs8x' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '5oPSkZFIV2feXnTR' --login_with_auth "Bearer foo"
platform-pay '{"token": "lzAJy9oFOHB2KEsI"}' 'dtozVltBhoXE4wgc' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'YT5CdjaJuUzFIeqa' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'r1CE1gu6cYuzC77J' --login_with_auth "Bearer foo"
platform-public-get-qr-code '4irvZ9tktWLtDdlm' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'VGK6iolEw6IIpDc9' 'X5ijmtDGvd9ESdY0' 'ALIPAY' 'rmQ2SaLd6M7TM3wn' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'JyExuo5z9RAcYgYZ' 'ADYEN' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'Pnbg7o1zYpqUsliP' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'yXZGYIW5ZDtWbdkz' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'PP47RcUIi2CoNj4E' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'G2emxKQk8cBrt5E8' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'k8rzDZ08j6ICP75c' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "m8YDChFi3zLvfQWC", "language": "oYR_551", "region": "gJB6a7uykADFpinF"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'cH2ZMSYijqEuMfuY' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'FUS079tOpZYM1XV0' --body '{"epicGamesJwtToken": "Op0damycnTUOoMkO"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'ppZNOkqxc42HKv5w' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'vtPJVsuzaBciSxwz' --body '{"serviceLabel": 42}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'DApeN5eAfRqSgH5x' --body '{"serviceLabels": [72, 41, 31]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "Zx5yMGIQ1ZxVIefY", "steamId": "lKBJyQMqUEfDikX6"}' 'yOlgZrn0I6T0hvcA' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'FTaSWR4VOGIY7hM6' --body '{"xstsToken": "uhonkAe0FdTSSElu"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'BxM47BTww3nBTVmB' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'FZ6TIs9bTi2m7eNs' 'YEqKkeuLWDfeFeEx' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'lOFjRh8mLFTJLveQ' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'ZR1HCkf2Sw78lLGK' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'jDHuXt358gzqRMuM' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'PrIekxq58fikq83h' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'qJ7HP63Se6kVW5fk' 'l60ImLBv6nUU0r1r' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'fX9stpvJUuyPdzx8' 'BM2wEgTtLRT5stwQ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'FUEbTPQ8p7VMlxEX' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'nqHwMyKpwphjUXvM' '1GqMkZ44UXgdBqtJ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'aRyDlP9qIZJ5Krx6' 'KkHagEugKJxkU8Y5' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["COtTNjnNSikJDg6u", "jKvq0CIa1YCK9PlM", "eQprfgLGkHX1tdBj"], "requestId": "KmCBXETZwqdzAX28", "useCount": 60}' '4qUiTkFcLBrg2JB0' 'WiCpVBwvAffJ3btt' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "0PpQY3Pnnic80yEO", "useCount": 71}' 'dL6Jh10XMUGeDavC' 'KradJmJFUsU418vA' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 25}' 'SYo9fY2EBZAHQXc4' 'Xcae7VKl0ARzGEAr' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "lfE1NSmtcADoZvd0", "metadata": {"operationSource": "INVENTORY"}, "useCount": 1}' 'w7C9Bx1LQOTCbAPL' 'C3iqrkyJFOVaewFc' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "v9h31YxuZnoSesWp", "language": "Yvfi_TjYD", "region": "ZN28gH4Cd9xTdt2K"}' '1CzpQWslNGnLYUYR' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "kpW", "productId": "iU3N8556ll2LQWpd", "receiptData": "ESOBV7wZJsg7wSv9", "region": "lyRyTdYBUljvBzvY", "transactionId": "NEtfgBFikt18cQ67"}' '7SotDEtU2xBSEQ8r' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'BKc2K6oJXxVEfnaq' --body '{"epicGamesJwtToken": "X8NuZtRUTKUvR69P"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": false, "autoConsume": false, "language": "ZdL-549", "orderId": "tNjGRhrmRAxRGeIK", "packageName": "GlCJmDXpjyvLSHB1", "productId": "y3klHuAGnidOyGuS", "purchaseTime": 64, "purchaseToken": "OG7ohiL2943ClrNh", "region": "Edxd24ZKfvMf1T5F", "subscriptionPurchase": true}' 'HqIWIi5Bvb1rcuEt' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'WAF763kci7lT62BO' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Haso53W3U2Mu9ZGM' --body '{"currencyCode": "Wou1U0RVCf3gMWDA", "price": 0.22809012103905346, "productId": "dCKqfqzeexHA70Ng", "serviceLabel": 73}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "uVUZdCacRGataPrc", "price": 0.11242014313036885, "productId": "TcA71dtqtSUN4zvB", "serviceLabels": [16, 67, 52]}' 'OU3DwglyMGNll4O8' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "ELahcNJqRjepck1l", "currencyCode": "0qxRyQ2pi7xuAufJ", "language": "qK_sbaY", "price": 0.24593028086658053, "productId": "gWhTED5YmPTBUkm2", "region": "FyvdguCYVqFyIKh1", "steamId": "YtTY4AejyQc5Dac7"}' 'hSLldWx5DyniVESU' --login_with_auth "Bearer foo"
platform-sync-steam-abnormal-transaction 'grROrP1ip3jNG68D' --login_with_auth "Bearer foo"
platform-sync-steam-iap-by-transaction '{"orderId": "Byf2UMPtigq9zOQO"}' 'cAqBj0bXhOr9OHt6' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'STEAM' 'msrmJFHGiYnyhbqx' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "LuTZIxgiUaiyy0aW", "language": "bSR_097", "region": "78smYdyge6DroOyw"}' 'OxI4G6jZzoYIFAvY' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'fT8XQw2EOq6BFjmN' --body '{"currencyCode": "4OqKGLRpNWzKZtZn", "price": 0.37758126362673583, "productId": "gywmr4CYNGm7Tk1m", "xstsToken": "MyeNRsjQuDEgO3ME"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'QNL6ijLRvQOgoaBo' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "oTawHLMxhx9nC3o6", "discountCodes": ["ZQ6nTj9rZpkSntuO", "pXU5MDJLCB6WbXWI", "RpgjooaBVemsbkaX"], "discountedPrice": 8, "ext": {"LyS4VbHJvD0lL7aZ": {}, "UY9d1Idud8bjYeBV": {}, "Mr7zHYmRE4X36KUO": {}}, "itemId": "dfEmoIYwSxxAsfwD", "language": "XIKW-MN", "price": 40, "quantity": 55, "region": "0zPkQWRUlgE0kxzF", "returnUrl": "Mq9ttbEHAEV7C65A", "sectionId": "ns9SquNSJIay5VdU"}' 'dYy9Y9OCSmmT3WKi' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "jbqhT3uyQRXvvcUY", "discountCodes": ["DeWPZ8yhwQ0gIdj1", "lTJdNLmAvEdEBVAU", "3rbkv8V98cupW0L5"], "discountedPrice": 100, "itemId": "h1YDedZdNqkXPWZf", "price": 93, "quantity": 84}' 'ZfdKp9q4nXuK0tJA' --login_with_auth "Bearer foo"
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["IAP", "ENTITLEMENT"]}' \
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
    '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "MRutCKCsqmx2zriO", "rewards": [{"currency": {"currencyCode": "GB8b5qTFp3cIxOI3", "namespace": "3nt54i5hdAezedcp"}, "item": {"itemId": "pbujZh1fYXF6R9Rz", "itemName": "3HVP2Y9WqSRiwV3U", "itemSku": "Zg0UJLPMkeUwa6OV", "itemType": "KxCMxuf0P9r5f6fd"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "yi4kQnOFbBtvBw81", "namespace": "hUgtONCIoZ2rkomS"}, "item": {"itemId": "j52mAIMo6EW9QhzU", "itemName": "8FwQtZpfUoyoiUjm", "itemSku": "qOyQ7ammFgHprdM9", "itemType": "viFWmezrQOWH03zy"}, "quantity": 35, "type": "ITEM"}, {"currency": {"currencyCode": "7kRbC31YMJfRiD7d", "namespace": "jt1VeOFBDA3gvCRf"}, "item": {"itemId": "oBijpbMblGWnp94a", "itemName": "6GKY0BrHiWs0B0Rh", "itemSku": "xQtgVgbN8kr872hJ", "itemType": "vrOCdAEZ2RHt3uQ5"}, "quantity": 27, "type": "ITEM"}], "rvn": 38}, {"autoUpdate": false, "enableRevocation": true, "id": "wxJZQpkeDHr0hjKB", "rewards": [{"currency": {"currencyCode": "pDMIvK4qfQ0pQIcY", "namespace": "MBktqqAAF6YG1dD1"}, "item": {"itemId": "vECBb01VFFhO5Fcd", "itemName": "TvIDQI2uIi2SNZKq", "itemSku": "lJZsdnY04DIyospr", "itemType": "ZPBaERb7U9kK4Vct"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "mDhFVNa0JYzTbdnO", "namespace": "nEarWP4nrJ5fNESR"}, "item": {"itemId": "VGeswvkzLNIITUJG", "itemName": "j5FYaSgewLWHcBxz", "itemSku": "5LpdkRCAU8HhmXC6", "itemType": "8JFPdxhvBKee6wG6"}, "quantity": 80, "type": "CURRENCY"}, {"currency": {"currencyCode": "PD4vNdENY1r1rI0T", "namespace": "97qA1OiblWlz2LXQ"}, "item": {"itemId": "NqcONcJIsYRQz97f", "itemName": "RWI17eNP3Y2nWlS9", "itemSku": "Sfjh0htyVaGj4y9a", "itemType": "hS7h7XVlmc5Rs5FV"}, "quantity": 87, "type": "ITEM"}], "rvn": 92}, {"autoUpdate": false, "enableRevocation": true, "id": "qObR55tV0BlN1iFv", "rewards": [{"currency": {"currencyCode": "w0GSLBmie8SJckSR", "namespace": "bu7hgmUm7RVCURED"}, "item": {"itemId": "doGatGQ1SeOXsg4j", "itemName": "ofp9PvlQ1xdmr4JD", "itemSku": "pvZgvPGHjV7MNTpM", "itemType": "7fSods1zdVT0aWj5"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "thvd3jzMDAf40gKS", "namespace": "izvmxts5HSQvRAPG"}, "item": {"itemId": "9JoVSLrbs5niXkjp", "itemName": "kOgRCC7qfz5jV7NT", "itemSku": "RYld9FJJ10goNq8u", "itemType": "q79Du28SRRAMaQFE"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "ppeticckSUon7awf", "namespace": "ol07696uxp5ieMjj"}, "item": {"itemId": "OfFSx3AJN97kUjwi", "itemName": "CmWQvbrxQpUSnos6", "itemSku": "QiHyrcGeRv27hj73", "itemType": "EtufHuNIp0GXpM4n"}, "quantity": 3, "type": "CURRENCY"}], "rvn": 1}]}' \
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
    '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"ww2TANW1Or7TvLoL": "0wwHoRMNexBOron8", "wIdUbp7xVMKfbAJf": "W4iMIC52NUedhhkM", "E18qGpSsyEPDWHcq": "fYp2EFxEaEHCGtg8"}}, {"platform": "STEAM", "platformDlcIdMap": {"2NQb5Glh8srTlTj6": "1WdV2XUo1BO1rE7E", "12Fapao5jo9nJoKE": "b8tHmFwLGan2SrKc", "kNxLWH6rjhRL9uxo": "V5Oe8ktlePEo1xBu"}}, {"platform": "XBOX", "platformDlcIdMap": {"v6VizgtOXZy9cQ6B": "074dTJZqeOllKQNw", "JUGtC0tAhxn1ay6r": "uu7PYWHODRb6skOj", "0lfYFGnQCAWidWPj": "YgyebU6rHFirnUpZ"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "9UJ4N78qHTGdn7gE", "endDate": "1979-01-12T00:00:00Z", "grantedCode": "lwx9CE4WcsmYtCkI", "itemId": "gcwiDWQFghmIi6fp", "itemNamespace": "hDw3p9QWqwTF2pOJ", "language": "auY_uJ", "metadata": {"eHaCuN7zpX9vp4QJ": {}, "dCrwkz0nw2oxKye8": {}, "jZqj7k0YiLqOUSBu": {}}, "origin": "Other", "quantity": 99, "region": "R388REDRuYBnWiEs", "source": "IAP", "startDate": "1977-09-08T00:00:00Z", "storeId": "DfIAN04f5kSONmw1"}, {"collectionId": "BDqqSctLL4WfGq8J", "endDate": "1985-10-26T00:00:00Z", "grantedCode": "DnwGWgccuzuc6QDR", "itemId": "MGdBPbUyHTYPS8CG", "itemNamespace": "KXGon2ecc65YAFLw", "language": "be", "metadata": {"Z7U2lNkorrw9QH3r": {}, "NhDepQum4Dj7pR05": {}, "RTGXGRkYXifTd5nA": {}}, "origin": "Xbox", "quantity": 70, "region": "F9VV7JgCOm4wL729", "source": "REWARD", "startDate": "1997-04-10T00:00:00Z", "storeId": "M4zTTYI6O8coYDWU"}, {"collectionId": "fcL1qsegBsrNqeW5", "endDate": "1985-07-10T00:00:00Z", "grantedCode": "N1h41jIPOMXufZPW", "itemId": "Se20JfNvtNcWtpUk", "itemNamespace": "w98x3tMM1bFFDIqK", "language": "Cni", "metadata": {"X0DetCeJ4x0wf5mQ": {}, "x6Hs7M5apPMc8ZR3": {}, "bPCJ5n5s6DODBmrq": {}}, "origin": "Steam", "quantity": 78, "region": "hGlkEmGdCbwodVRj", "source": "PURCHASE", "startDate": "1973-08-27T00:00:00Z", "storeId": "BOcYhf6nGCnPjiIb"}], "userIds": ["sypCJmfRnW0spgvj", "Jifs0arKxCcNv8FQ", "CyQBqKxayGvw7MqO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["t7eCLDu6PA3PRnQt", "B410iWT0SILVGXCW", "RucRpP1Tq7uYXhB6"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'FPfF5DvveMdBsPt1' \
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
    --body '{"body": {"account": "9V2FkBPk0QLufK6e", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 17, "clientTransactionId": "eSnOg5gf1Swrbpmo"}, {"amountConsumed": 65, "clientTransactionId": "vQmahJlT5OUDEMwA"}, {"amountConsumed": 18, "clientTransactionId": "1gTw8BJPFctwUMCR"}], "entitlementId": "dxXOBu3TWmHDVmCG", "usageCount": 65}, {"clientTransaction": [{"amountConsumed": 30, "clientTransactionId": "uuqLDQF12kYfBqeQ"}, {"amountConsumed": 49, "clientTransactionId": "sXxRu4EQqR3KbYWt"}, {"amountConsumed": 64, "clientTransactionId": "LvER3xqCwUgKa4oC"}], "entitlementId": "BoJDxGa1UuSr4ehn", "usageCount": 98}, {"clientTransaction": [{"amountConsumed": 28, "clientTransactionId": "Aw9m6GvDSE2F7Ad6"}, {"amountConsumed": 56, "clientTransactionId": "Dln4mqFhgKKcGohd"}, {"amountConsumed": 19, "clientTransactionId": "PK6mVytM5mBRT39g"}], "entitlementId": "KYLk9DmjJh6PnpTX", "usageCount": 99}], "purpose": "SOr7zljUKyhKkD7w"}, "originalTitleName": "AHMrv8zABDhYAVxv", "paymentProductSKU": "s3ugNvvgI2k1P9nQ", "purchaseDate": "xzj3AnmpWfje5cAt", "sourceOrderItemId": "TDvwFHcoODi5oF1p", "titleName": "ccdjjZpFnVLb7xer"}, "eventDomain": "pjVPfktNnl8UYH5k", "eventSource": "esuOtYHLqcdy05Yr", "eventType": "qdFn8sQ7yc8xLKyB", "eventVersion": 11, "id": "Cxwy85vlhWw1RCgH", "timestamp": "r3f6UqFGCvsMFEFl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "XHBOK1RqtKYVObVo", "eventState": "rIVWWLaVJwe2KAca", "lineItemId": "1aKeXUu9hINqKvoY", "orderId": "Kio4M51vuaFyqjQs", "productId": "TGmzItJIOkEIRsSW", "productType": "OV8LyivYbMG9LXPb", "purchasedDate": "Bh2E3wFchP3zTymf", "sandboxId": "Vfny2M0KsS08cY3f", "skuId": "jI1YTT3qUMd0U73R", "subscriptionData": {"consumedDurationInDays": 19, "dateTime": "fCRhzfKDAGIAJuPh", "durationInDays": 87, "recurrenceId": "WGrtIgVPb7hoo8Yk"}}, "datacontenttype": "NPW8mWOJGtdXJGDs", "id": "xRAR3NObYp43YXMH", "source": "qWeVjnOURxGvOhz9", "specVersion": "s7ktWkJDaHg6kDVj", "subject": "xhxRxjeDrqCfJEjr", "time": "qJkFoZFZex0eOw31", "traceparent": "PXkVnetcvAuim14W", "type": "dh1qKoSDBbyqlJyf"}' \
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
    '{"appAppleId": 99, "bundleId": "PPgVaFwGhl5zqkzE", "issuerId": "u41hVfVC7eLVWGk0", "keyId": "GjYReIZaDC2Au2bE", "password": "pymbJ4dPJmkdvyuD", "version": "V1"}' \
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
    '{"sandboxId": "FstLhZzletCqa3lJ"}' \
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
    '{"applicationName": "MQ1sGlfqjDBzOjNe", "notificationTokenAudience": "q8JJhbi7QD0RW0qg", "notificationTokenEmail": "xO0Y6TFpFSCsrhSG", "packageName": "eeExZYnGcrZHMKoT", "serviceAccountId": "cIXeKZzZBo6ARaQn"}' \
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
    '{"data": [{"itemIdentity": "NZQ1R0PGBFVnc37a", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"VKPoA1aKRZM1Ot0P": "WppB2H0G8Xko9l5J", "0IOZmnpzwHhig9d6": "vdgfrNiGrH0hDjH6", "IYpfINzNjk5V8T9p": "QjnGB83yonudf21g"}}, {"itemIdentity": "0NhuYvwCATIUep61", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"sSiqW7I03oSwCfYp": "N9jkLCsMYyyhEyBf", "FFZwkC1PRjBWzTuX": "ttDREDWbOM3xQara", "aEVt3vsBCXpIgQzk": "WzcBqVcuTTrIk6hU"}}, {"itemIdentity": "0mqdwBJax1jBd6Yn", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"EOJ4PghksbaThW37": "NTbz8HiRmuknvXiT", "P0KrWQ3pgbHM0Svy": "3GRenDzwlTE9Czhn", "ck3GnyPFQHgn9jVE": "6QGkZ8AVzeiaDi67"}}]}' \
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
    '{"appId": "E3rTwN2LrT85Arfe", "appSecret": "6EweJxWANt1bDay6"}' \
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
    '{"backOfficeServerClientId": "4EnFyFeW0oNhddKr", "backOfficeServerClientSecret": "rhzwz2PFXC33KjLN", "enableStreamJob": true, "environment": "QJgCWV7dj8I5eVnf", "streamName": "lH2hnMV6Yxtl5DKU", "streamPartnerName": "hjBy9oWPcMIQc5lR"}' \
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
    '{"backOfficeServerClientId": "QojhJgpXVCubdw0s", "backOfficeServerClientSecret": "PrgDKqHCs5GTdTLC", "enableStreamJob": true, "environment": "rXWFobqnDkfPAHNg", "streamName": "Vss4JzVKSusdLumo", "streamPartnerName": "Hh8TQWYk2vD3mUDw"}' \
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
    '{"appId": "tTF1ATVQnAexrRom", "env": "LIVE", "publisherAuthenticationKey": "ZFHX4cgtkxEx6tlx", "syncMode": "INVENTORY"}' \
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
    '{"clientId": "GiSutb6wUxEikRyH", "clientSecret": "C9VWMnzbuNQNJxCb", "organizationId": "LEhfrPxIRdbUwkN6"}' \
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
    '{"enableClawback": true, "entraAppClientId": "caL6XOoO3WqBsbDm", "entraAppClientSecret": "sTk9UuiQwezvArAK", "entraTenantId": "JwZGVyknpOhuGhAn", "relyingPartyCert": "lnjyPBj7h3hncU5v"}' \
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
    '{"env": "LIVE", "lastTime": "1975-11-07T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminResetSteamJobTime' test.out

#- 112 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'duKixzScfrHzGYC1' \
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
    'TdLVDBDxK6laOkeL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetIAPOrderConsumeDetails' test.out

#- 116 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'BcprByjUr7w9w1xK' \
    'UrLmQSkuEMRzyerp' \
    'ya2oBjbgBhOdXE8y' \
    'SUBSCRIPTION' \
    '90s6yFiDZs0wyldb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'DownloadInvoiceDetails' test.out

#- 117 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'DDntsSQ8DEsKT6Mw' \
    '5xDz8asARtI3TVV2' \
    'QmlqRK5roG1oZArF' \
    'SEASON' \
    'p9qVpZbsppRsBWQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GenerateInvoiceSummary' test.out

#- 118 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "RdYqZaQ8swcFOshi", "targetItemId": "WEFDMG99v5LSSkkE", "targetNamespace": "oAarkgZ773cdzYhg"}' \
    'H24VR4hJnsU1m6zr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'SyncInGameItem' test.out

#- 119 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "yXmvvvPmueVVC0ym", "appType": "DEMO", "baseAppId": "ABWgZVxM4rAqxlnH", "boothName": "LAFNEwXBsCkfqzKl", "categoryPath": "zlLgHPF5iRWnREif", "clazz": "OFJQwGPy5zGebVw9", "displayOrder": 28, "entitlementType": "CONSUMABLE", "ext": {"LvVm8UeFUbaGb5on": {}, "2kvdeu5DfAxsrX7O": {}, "iSRs0z2RYA8fTlbf": {}}, "features": ["UOSmR4F0p5g7b3Me", "gxV9JnAJSu3MX2yY", "JopKxd9MtXYGoZGk"], "flexible": true, "images": [{"as": "MVvo3MMCL4aV6oMU", "caption": "zpMmsvvKTljWspMr", "height": 59, "imageUrl": "rTUcZy3DDSxpWZV6", "smallImageUrl": "J5QloYCaB5ImpxpH", "width": 72}, {"as": "JNZmgEGzqDHdLpDj", "caption": "LIhvCNlBRcFsa03N", "height": 35, "imageUrl": "Q5iHlTqgMzvj8sHL", "smallImageUrl": "F7s3hgmxOOzP7vte", "width": 96}, {"as": "BL0njCbitEJNHwfW", "caption": "76v6GPVwWjIfhOXe", "height": 25, "imageUrl": "TS66qr03Mp14S8HG", "smallImageUrl": "9ID7mZ4eKHaAP4PY", "width": 94}], "inventoryConfig": {"customAttributes": {"wKuIHMjiIjX7Eu0W": {}, "CXd8GX7ygT5qlBek": {}, "xw9pO3vyRviPljDY": {}}, "serverCustomAttributes": {"ddTDwgc6onXfoDvj": {}, "I9jfJFTHcHvAfosn": {}, "CXqJplcwaBHILlCC": {}}, "slotUsed": 57}, "itemIds": ["ovjEbjKrZ2d6IbWT", "fPplY43FQpfFWm8V", "MHjC8qrxvZsJd3RB"], "itemQty": {"YL4PAqdviBvToSQ7": 63, "GmogCJXjHTGhyemq": 34, "rSOWI2donULQokdC": 91}, "itemType": "EXTENSION", "listable": true, "localizations": {"KLavCF9yVeJJwyaY": {"description": "7Ho61RoV0VH7thk8", "localExt": {"lnCROZodh1gbkbnR": {}, "cIufk5WE4zPvxA50": {}, "61CF9079hQA91csv": {}}, "longDescription": "lQSS6PyDb3vKbCw9", "title": "eAGmM6lPAJMizukB"}, "mcy1kbAWDUac65Jd": {"description": "lm1JJwmCAjTwtCqK", "localExt": {"dh92wuH9hLkAg90c": {}, "QgXeZnKRP6Gdv2QY": {}, "9BadKJj4HkL0mk4H": {}}, "longDescription": "HDzXcKJowQbOrgve", "title": "Le4hYQEGcivibNKS"}, "0tBFxzru1A3Obcai": {"description": "jxlHrcqzwGgl1Syr", "localExt": {"FazP5g67zq7XCHkJ": {}, "zmy6DtxvO3nUiVM7": {}, "UfbH7Qv0Eyy6G3n8": {}}, "longDescription": "3Sb2WXmcXtuUYtYk", "title": "PAHldms0Nwlx85un"}}, "lootBoxConfig": {"rewardCount": 44, "rewards": [{"lootBoxItems": [{"count": 26, "duration": 2, "endDate": "1982-03-04T00:00:00Z", "itemId": "iBJfyM9bc1hgFvKO", "itemSku": "2erV4ccUhiQnHGDN", "itemType": "Xw2L4mp580sUSlEf"}, {"count": 57, "duration": 74, "endDate": "1982-01-23T00:00:00Z", "itemId": "zpUEcp3cp4fWJlLr", "itemSku": "bVQceKy5JZK1rVpG", "itemType": "dpzlwFNJyyLozi8e"}, {"count": 56, "duration": 37, "endDate": "1979-03-23T00:00:00Z", "itemId": "PD6pfcv9jGr7b2hH", "itemSku": "baUEtBnsggbEVNmy", "itemType": "mBNr5C2BOjUiOQVE"}], "name": "bp3z13pDy371QLVt", "odds": 0.47816696844873885, "type": "PROBABILITY_GROUP", "weight": 24}, {"lootBoxItems": [{"count": 18, "duration": 90, "endDate": "1997-05-16T00:00:00Z", "itemId": "XatSimmKudqURkyz", "itemSku": "4E3EI1bSCYaa8JSN", "itemType": "QdhrnvuDGFiT4U6W"}, {"count": 87, "duration": 48, "endDate": "1993-06-19T00:00:00Z", "itemId": "wsTHCgTvrGllrctt", "itemSku": "K4WgzdUhB2YhKWid", "itemType": "qRPQ1hSmShNaSmVF"}, {"count": 38, "duration": 80, "endDate": "1977-02-12T00:00:00Z", "itemId": "FW74DkabvmYAT6qT", "itemSku": "g6ZOaTNC1LAentTX", "itemType": "WyBmb2Ir2yOaVvE1"}], "name": "N52PwdeTQhMz99aZ", "odds": 0.9021203041094875, "type": "PROBABILITY_GROUP", "weight": 4}, {"lootBoxItems": [{"count": 51, "duration": 14, "endDate": "1971-11-11T00:00:00Z", "itemId": "0rlzqNhVNwgXBCZr", "itemSku": "4m1UpizE7fm00IB0", "itemType": "YnQ5xpjcMxUGokG4"}, {"count": 97, "duration": 23, "endDate": "1992-02-04T00:00:00Z", "itemId": "KR0ItcCnXFRjhk7t", "itemSku": "zIHqZpgJqlw441XU", "itemType": "fp7AVnf8BzBBqEvM"}, {"count": 41, "duration": 80, "endDate": "1989-08-24T00:00:00Z", "itemId": "opw2r5pKsXnIYkKH", "itemSku": "6MNrEsOlIFw6Fqa6", "itemType": "YXBlVXOvZUgW2ZMV"}], "name": "JhOyVaO1sgnJF31E", "odds": 0.7483826776276397, "type": "REWARD_GROUP", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 51, "maxCountPerUser": 98, "name": "9YNTBZTR5tZmaZGx", "optionBoxConfig": {"boxItems": [{"count": 35, "duration": 27, "endDate": "1974-12-05T00:00:00Z", "itemId": "APoREvGmmbGW3Stt", "itemSku": "wZrmKkREJXucN3IE", "itemType": "t8vZSqh6SjLdDyVf"}, {"count": 22, "duration": 18, "endDate": "1997-05-17T00:00:00Z", "itemId": "9IGsZjUsSUE7NuCY", "itemSku": "EOWNkgUfe6pVMS5m", "itemType": "8aRIev5s4q7Uwwra"}, {"count": 59, "duration": 70, "endDate": "1986-05-22T00:00:00Z", "itemId": "fsL6HEOiPcSKlQDo", "itemSku": "4ih358Lf5RXgVFrs", "itemType": "R55cpOV3Qg6eU0Mc"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 58, "fixedTrialCycles": 49, "graceDays": 23}, "regionData": {"dumMW9HWHfZ3bFTq": [{"currencyCode": "XqdzpP7Rk1qbFWht", "currencyNamespace": "wNaVCqf0vP284yQA", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1981-09-17T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1992-12-24T00:00:00Z", "expireAt": "1995-10-04T00:00:00Z", "price": 61, "purchaseAt": "1980-08-23T00:00:00Z", "trialPrice": 87}, {"currencyCode": "6PHVsnUueYd49OFD", "currencyNamespace": "lbdIrxqxAtw8vLsY", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1988-09-11T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1971-06-27T00:00:00Z", "expireAt": "1990-02-17T00:00:00Z", "price": 78, "purchaseAt": "1991-05-08T00:00:00Z", "trialPrice": 50}, {"currencyCode": "cFqK4FBJG8BfuSzy", "currencyNamespace": "tkPE6mw3Zv0zD14W", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1992-06-04T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1982-05-02T00:00:00Z", "expireAt": "1997-03-05T00:00:00Z", "price": 45, "purchaseAt": "1977-07-04T00:00:00Z", "trialPrice": 54}], "k0v0OKy45dqId3gX": [{"currencyCode": "UWVAmaDjrn0iZsIf", "currencyNamespace": "qeLfl0wacx4istsf", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1987-12-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1973-10-01T00:00:00Z", "expireAt": "1992-06-12T00:00:00Z", "price": 32, "purchaseAt": "1974-02-16T00:00:00Z", "trialPrice": 69}, {"currencyCode": "54mL4hAfiqX3ThRE", "currencyNamespace": "YkndZIrjnjuCHkx8", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1977-05-10T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-05-09T00:00:00Z", "expireAt": "1991-08-07T00:00:00Z", "price": 40, "purchaseAt": "1991-07-04T00:00:00Z", "trialPrice": 97}, {"currencyCode": "LYXq4HSEGpaUMmdP", "currencyNamespace": "XWaJRdn3WMdrhlWq", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1972-09-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1975-02-18T00:00:00Z", "expireAt": "1992-07-15T00:00:00Z", "price": 27, "purchaseAt": "1987-04-16T00:00:00Z", "trialPrice": 52}], "mMgk0WYv2NTpSejf": [{"currencyCode": "bYniLmi1GQTjQVaJ", "currencyNamespace": "9ioRZ1HvMCIXTQG7", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1993-04-04T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1977-05-19T00:00:00Z", "expireAt": "1999-03-07T00:00:00Z", "price": 100, "purchaseAt": "1971-12-09T00:00:00Z", "trialPrice": 89}, {"currencyCode": "9WWQMGmm0biVjE8A", "currencyNamespace": "3EsOz8LDnxgL0t7Q", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1972-12-16T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1998-09-11T00:00:00Z", "expireAt": "1982-09-28T00:00:00Z", "price": 25, "purchaseAt": "1996-11-23T00:00:00Z", "trialPrice": 47}, {"currencyCode": "ul5WKkzjzRnLLFKG", "currencyNamespace": "FSUC1sZtVitkoRyE", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1992-05-23T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1974-06-20T00:00:00Z", "expireAt": "1990-02-20T00:00:00Z", "price": 82, "purchaseAt": "1972-12-08T00:00:00Z", "trialPrice": 60}]}, "saleConfig": {"currencyCode": "UvlrOA50xGdlq3Dk", "price": 26}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "zLBSh2QJWgWvIZGJ", "stackable": false, "status": "ACTIVE", "tags": ["OyY1tNKAVWv5cGRm", "sw2pDJDLeJwzbVEE", "Q0D6RcLpRxXCStzv"], "targetCurrencyCode": "3WTx0oyOrycewrnL", "targetNamespace": "BAZlvnOJeNxZdT1f", "thumbnailUrl": "ZJTutZpZZn6egDbF", "useCount": 61}' \
    'hcMpuZW4KtmXptKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'CreateItem' test.out

#- 120 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'Aev0UqYpD2R7Yqid' \
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
    'gD0wxHpQyntHsI11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetItems' test.out

#- 124 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'lC6BXyQW3eG0BvuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetItemBySku' test.out

#- 125 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'oP1hIpdIWajZTyB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetLocaleItemBySku' test.out

#- 126 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'k7Q9zNJHkXmHB9cu' \
    '1ZdRIZ1hHCpApGun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetEstimatedPrice' test.out

#- 127 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'PxVvWyQvciFGxJNO' \
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
    'aveGzkTPehZVmZi1' \
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
    '{"itemIds": ["UYM7BApA1YByiGkJ", "R30lAinKfKXqYE8G", "uKFRwAkAyYY8hSNU"]}' \
    'TpzSm7jdrPdkMMoy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'ValidateItemPurchaseCondition' test.out

#- 132 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'lrI7DpmCIb5JWu7D' \
    --body '{"changes": [{"itemIdentities": ["AXtIeslnM3lJQMDx", "u7Auj8cqdtNaFO3A", "By1AeDryAFewcN6U"], "itemIdentityType": "ITEM_ID", "regionData": {"vRJ3ebbfa3ep8cKN": [{"currencyCode": "lb024FzQsBlwn2pN", "currencyNamespace": "8vqhPmlYgFAu9gD8", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1995-03-03T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1986-09-26T00:00:00Z", "discountedPrice": 11, "expireAt": "1999-07-21T00:00:00Z", "price": 86, "purchaseAt": "1990-01-10T00:00:00Z", "trialPrice": 37}, {"currencyCode": "gMLvJ1KqSZCanZaG", "currencyNamespace": "zamJ8JZ6lV9zpsDX", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1976-09-12T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1978-03-10T00:00:00Z", "discountedPrice": 68, "expireAt": "1985-10-30T00:00:00Z", "price": 69, "purchaseAt": "1983-11-04T00:00:00Z", "trialPrice": 74}, {"currencyCode": "ZSpydGfNnNFMfXpI", "currencyNamespace": "PlcaufemZ4xlGtWc", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1987-10-12T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1987-05-02T00:00:00Z", "discountedPrice": 8, "expireAt": "1988-11-15T00:00:00Z", "price": 10, "purchaseAt": "1996-02-17T00:00:00Z", "trialPrice": 15}], "9f25YsZ1L6IGHuO7": [{"currencyCode": "u2tOUpmu6zULXQMi", "currencyNamespace": "rzwMshTQYUnfHWyB", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1985-01-22T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1999-06-16T00:00:00Z", "discountedPrice": 99, "expireAt": "1974-05-15T00:00:00Z", "price": 49, "purchaseAt": "1998-01-24T00:00:00Z", "trialPrice": 74}, {"currencyCode": "GygLo40eCb82j4Oh", "currencyNamespace": "aAiWk4TKx1WRjiCo", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1983-03-25T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1990-05-14T00:00:00Z", "discountedPrice": 41, "expireAt": "1987-01-14T00:00:00Z", "price": 5, "purchaseAt": "1991-07-05T00:00:00Z", "trialPrice": 48}, {"currencyCode": "xVAujRx0pyulY8ig", "currencyNamespace": "LWA7yUanMI437Ne6", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1973-11-19T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1980-01-08T00:00:00Z", "discountedPrice": 86, "expireAt": "1991-09-30T00:00:00Z", "price": 29, "purchaseAt": "1986-09-10T00:00:00Z", "trialPrice": 29}], "fIdFP0QarAdoCQoV": [{"currencyCode": "I26D2IdXV2RNnCRn", "currencyNamespace": "6spzE0Dj97Arjpd7", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1973-08-07T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1977-05-23T00:00:00Z", "discountedPrice": 49, "expireAt": "1991-09-12T00:00:00Z", "price": 62, "purchaseAt": "1978-08-29T00:00:00Z", "trialPrice": 83}, {"currencyCode": "1MAfVZhADFM15pfl", "currencyNamespace": "1N2CNDu3DpGXJrOg", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1980-08-23T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1983-02-08T00:00:00Z", "discountedPrice": 88, "expireAt": "1971-12-11T00:00:00Z", "price": 76, "purchaseAt": "1995-01-25T00:00:00Z", "trialPrice": 10}, {"currencyCode": "uuCoR3Wc6j3UqRIC", "currencyNamespace": "nmZxob6vepvgW3Vm", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1984-11-03T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1971-06-05T00:00:00Z", "discountedPrice": 70, "expireAt": "1974-07-05T00:00:00Z", "price": 84, "purchaseAt": "1982-12-28T00:00:00Z", "trialPrice": 47}]}}, {"itemIdentities": ["6R3Uev7bCsylPZDz", "1fiXmZReVZ4inDP7", "o0Aeler4oEJEmHHU"], "itemIdentityType": "ITEM_SKU", "regionData": {"T74NkroVwJFRFLns": [{"currencyCode": "SyJhQApjt9Vvn7My", "currencyNamespace": "jPjMUoUC9cUOeLu9", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1992-01-04T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1985-03-17T00:00:00Z", "discountedPrice": 18, "expireAt": "1981-03-22T00:00:00Z", "price": 89, "purchaseAt": "1982-02-24T00:00:00Z", "trialPrice": 69}, {"currencyCode": "7ST2UVRJN0qFJaGD", "currencyNamespace": "iDmatCvCembJFNyI", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1992-09-26T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1998-09-18T00:00:00Z", "discountedPrice": 16, "expireAt": "1971-03-21T00:00:00Z", "price": 90, "purchaseAt": "1983-10-06T00:00:00Z", "trialPrice": 70}, {"currencyCode": "eTMH4jK8hWOlHrqy", "currencyNamespace": "BElA4m1Ywb6nMhhS", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1996-09-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1984-08-04T00:00:00Z", "discountedPrice": 35, "expireAt": "1990-12-04T00:00:00Z", "price": 6, "purchaseAt": "1973-11-26T00:00:00Z", "trialPrice": 47}], "89cqMuV8MLxiTO3G": [{"currencyCode": "hLJ2qx2h93yz3Y7Y", "currencyNamespace": "tgdQMhzpcpwawMF0", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1996-10-04T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1975-08-29T00:00:00Z", "discountedPrice": 35, "expireAt": "1996-11-05T00:00:00Z", "price": 3, "purchaseAt": "1973-05-25T00:00:00Z", "trialPrice": 85}, {"currencyCode": "tw6qiRU6n8IKPZ1k", "currencyNamespace": "pSeRooa84wgi9Qjy", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1973-06-10T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1976-10-22T00:00:00Z", "discountedPrice": 61, "expireAt": "1980-06-28T00:00:00Z", "price": 50, "purchaseAt": "1978-08-20T00:00:00Z", "trialPrice": 21}, {"currencyCode": "JFj0ayzojVNIrqZC", "currencyNamespace": "tbJmJSU0agO0PXHC", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1978-09-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1998-03-24T00:00:00Z", "discountedPrice": 50, "expireAt": "1984-06-14T00:00:00Z", "price": 69, "purchaseAt": "1981-11-03T00:00:00Z", "trialPrice": 39}], "zQnClUtkXb0SoMLq": [{"currencyCode": "ijtgLSGTnWHCZ6Xw", "currencyNamespace": "qnOeIUKAIvQjUxtk", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1982-12-02T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-08-06T00:00:00Z", "discountedPrice": 21, "expireAt": "1989-09-30T00:00:00Z", "price": 95, "purchaseAt": "1977-08-21T00:00:00Z", "trialPrice": 65}, {"currencyCode": "OoXFpKZ7smOvhTDI", "currencyNamespace": "dO6ugOFZPtLUvuPK", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1985-07-01T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1981-09-06T00:00:00Z", "discountedPrice": 0, "expireAt": "1996-10-01T00:00:00Z", "price": 23, "purchaseAt": "1976-04-19T00:00:00Z", "trialPrice": 61}, {"currencyCode": "k9AFkbwVa7DCVegP", "currencyNamespace": "EDDuHxwEbPLfnjlM", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1986-12-09T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1985-07-14T00:00:00Z", "discountedPrice": 85, "expireAt": "1980-07-26T00:00:00Z", "price": 91, "purchaseAt": "1981-05-01T00:00:00Z", "trialPrice": 94}]}}, {"itemIdentities": ["2R5Q7tM4YbPsF33K", "hfoL7PlFt47mQAQQ", "zQAxQ8GRgWKOBJYY"], "itemIdentityType": "ITEM_ID", "regionData": {"OLYQX2ryH4oq6fdh": [{"currencyCode": "zarU0VtmwcYLuVxq", "currencyNamespace": "vaL6vdJr0yQVV1r0", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1985-01-22T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1981-06-25T00:00:00Z", "discountedPrice": 54, "expireAt": "1972-10-20T00:00:00Z", "price": 93, "purchaseAt": "1994-01-14T00:00:00Z", "trialPrice": 62}, {"currencyCode": "rppNGl78VMGk3b5E", "currencyNamespace": "1GgAqoQkgiht0lsg", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1986-04-06T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1997-07-06T00:00:00Z", "discountedPrice": 79, "expireAt": "1978-10-29T00:00:00Z", "price": 16, "purchaseAt": "1999-06-10T00:00:00Z", "trialPrice": 52}, {"currencyCode": "bu5HHlb7VI1cHNU3", "currencyNamespace": "pvbpyJTgwl3ZOMpz", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1986-06-05T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1992-03-21T00:00:00Z", "discountedPrice": 81, "expireAt": "1971-04-04T00:00:00Z", "price": 59, "purchaseAt": "1979-09-17T00:00:00Z", "trialPrice": 76}], "MazvRX5v3UCobMU8": [{"currencyCode": "bzcaf0Qv0dFMnEcD", "currencyNamespace": "HueqAKTjdRpgYeui", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1979-06-20T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1973-10-24T00:00:00Z", "discountedPrice": 54, "expireAt": "1994-09-03T00:00:00Z", "price": 89, "purchaseAt": "1983-04-11T00:00:00Z", "trialPrice": 85}, {"currencyCode": "VoJ9qEel6x5O5otp", "currencyNamespace": "ujfw64GJDWklFkqh", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1978-07-09T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1973-11-07T00:00:00Z", "discountedPrice": 53, "expireAt": "1999-06-23T00:00:00Z", "price": 86, "purchaseAt": "1980-02-09T00:00:00Z", "trialPrice": 77}, {"currencyCode": "vlUaCgxl01oVwoWA", "currencyNamespace": "bcskuBfcvcoAMPzC", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1971-05-09T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1974-12-11T00:00:00Z", "discountedPrice": 60, "expireAt": "1973-11-11T00:00:00Z", "price": 7, "purchaseAt": "1992-09-25T00:00:00Z", "trialPrice": 11}], "vodrl6UOwYZJq3OJ": [{"currencyCode": "hzlgtX87XuWOIpQw", "currencyNamespace": "ptcvroohLb6q3F16", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1997-02-02T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1983-06-29T00:00:00Z", "discountedPrice": 86, "expireAt": "1979-07-21T00:00:00Z", "price": 62, "purchaseAt": "1981-05-31T00:00:00Z", "trialPrice": 51}, {"currencyCode": "0mRO0tK1CH6ozETF", "currencyNamespace": "Sgu96JYKhAD9xM9T", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1997-07-12T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1982-12-03T00:00:00Z", "discountedPrice": 47, "expireAt": "1977-07-10T00:00:00Z", "price": 1, "purchaseAt": "1999-01-02T00:00:00Z", "trialPrice": 73}, {"currencyCode": "HSXapFLiHZfwcmqp", "currencyNamespace": "HRQcJzso1tgoqsyj", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1990-05-05T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1991-05-13T00:00:00Z", "discountedPrice": 60, "expireAt": "1973-08-02T00:00:00Z", "price": 2, "purchaseAt": "1996-10-30T00:00:00Z", "trialPrice": 14}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'BulkUpdateRegionData' test.out

#- 133 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'I8yo0u2hT9UYbm2B' \
    'WjzlqIA8csXOpDTl' \
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
    '6yIwkTTCLlRCEQSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetItem' test.out

#- 136 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "3XwOSNJT3B5f3ynP", "appType": "SOFTWARE", "baseAppId": "foYzBc16XXXuoJGX", "boothName": "CyzA8a5uh1LdVOaW", "categoryPath": "OjRinmMTxEz6bdDF", "clazz": "DqRMyTZOXYRC3gIR", "displayOrder": 17, "entitlementType": "CONSUMABLE", "ext": {"FpDlAEyVuvyXITMn": {}, "2F86xZRHxnOP02x0": {}, "0SvR2yNPms1DdUL5": {}}, "features": ["aYm2XGN51wxYTCHY", "bc6QMB9TtHXqeaYl", "aW7BAFZnpxmzs0AQ"], "flexible": false, "images": [{"as": "nB9w4rkop7LL7Yqj", "caption": "h4lgGGsrJv0EyLkZ", "height": 9, "imageUrl": "3ymYms9fuih2WMLl", "smallImageUrl": "doxYLZHiFEo5sDrk", "width": 56}, {"as": "ji4B86NKZ0tkEWAq", "caption": "M0EZhtIp1XL7HL2n", "height": 74, "imageUrl": "HmDzxvCGS2mYl0sA", "smallImageUrl": "87gQx9kL8a1tEpNG", "width": 1}, {"as": "45LOpaGFJniJl9RP", "caption": "ULWpWw5UQBldfnMF", "height": 10, "imageUrl": "X9wbQz3euR4MhLQs", "smallImageUrl": "8XliOoWqixFdv5aD", "width": 90}], "inventoryConfig": {"customAttributes": {"P5x3gf1HnOzyuw55": {}, "KAICc0N5AqnaH49Q": {}, "FksDAGUgVcYdzd3m": {}}, "serverCustomAttributes": {"UKKxi2anNFpYXwE3": {}, "7QpBIY8LEEtCmsem": {}, "V8gAHQaitMhleY83": {}}, "slotUsed": 37}, "itemIds": ["bO04gNmB9r9MA5lA", "6x0lY16PWsrsxYq7", "7iFOu0ybeoERsKMC"], "itemQty": {"PmtnE1aHAuVZKYNa": 75, "6uyKwJ713r4F9WC3": 82, "2Uggyr64isEfxbFE": 1}, "itemType": "APP", "listable": false, "localizations": {"L6KqJTL11T4vlBRD": {"description": "jj3FKvRIguqDEJfd", "localExt": {"xsQXLRJRONKh0R0R": {}, "XJ6anzAeqD1HlhQ1": {}, "rqjRECHyhLYGnvEd": {}}, "longDescription": "CjYsnh0Y0rQluvKz", "title": "iVTCPTrqHc7vqaXx"}, "xiGOrXbWC2k23JxA": {"description": "I3kOXwHnS2VOESYx", "localExt": {"49M1JdtImLI5eTuH": {}, "qCNtVlNaGzoqpAFV": {}, "T8PkW7ouFIdlTuou": {}}, "longDescription": "sRcrhXNAh3Cu4ou0", "title": "29lD9VLXNwkZWTbX"}, "0PZb0I9Qm4xKek7Z": {"description": "AZJCk1fizRJy5JoI", "localExt": {"lHjTZ4mDmXZIBTi0": {}, "5akxBYozWzUW4RDV": {}, "M8Y4PcXDH8RZqUjE": {}}, "longDescription": "LC82uP1nMUDAKQEk", "title": "OvO52VTPFFuLWL0H"}}, "lootBoxConfig": {"rewardCount": 86, "rewards": [{"lootBoxItems": [{"count": 96, "duration": 21, "endDate": "1998-07-13T00:00:00Z", "itemId": "uy4fU6Ejumf9ltGd", "itemSku": "e7x4luTsEk9TNqSi", "itemType": "FJyMByoRKUrvfixr"}, {"count": 96, "duration": 82, "endDate": "1987-01-18T00:00:00Z", "itemId": "zLzGaWok215MnSNT", "itemSku": "PMRaYf8Chh5tiLsX", "itemType": "IOSE2JSDRlSX5uOg"}, {"count": 46, "duration": 80, "endDate": "1971-06-04T00:00:00Z", "itemId": "PU0DqhD5agSwSs0O", "itemSku": "RF2pLQCqPGUmF8pQ", "itemType": "CrEqdstmoPJurb0F"}], "name": "VZK7sonuzTm1gseY", "odds": 0.6711933206405822, "type": "REWARD", "weight": 56}, {"lootBoxItems": [{"count": 7, "duration": 27, "endDate": "1998-09-17T00:00:00Z", "itemId": "zFYEnOA6gFO3zfSv", "itemSku": "vmLgxlU5MdUdF7gH", "itemType": "dIf6eMd0iVUmBrFw"}, {"count": 65, "duration": 69, "endDate": "1988-05-13T00:00:00Z", "itemId": "ESxo8uFqKtoZiVPt", "itemSku": "wECFgcQRsqYFtxbp", "itemType": "KYKp18TPWOixbTLf"}, {"count": 6, "duration": 12, "endDate": "1992-09-09T00:00:00Z", "itemId": "kfRgfnBT7OdjPnyw", "itemSku": "uIoLpkJEPfnaESuO", "itemType": "M4olKFVsSfgNQjKh"}], "name": "rrrStCg99ejNACAF", "odds": 0.4260677126167681, "type": "REWARD_GROUP", "weight": 22}, {"lootBoxItems": [{"count": 99, "duration": 5, "endDate": "1987-10-05T00:00:00Z", "itemId": "kS5jnhMZsQ8CVsHX", "itemSku": "HYBx7KkpRAaivn5y", "itemType": "FNSoKf7tdmVppuu6"}, {"count": 1, "duration": 4, "endDate": "1972-08-13T00:00:00Z", "itemId": "pUdn8X5IZjtFT6Bs", "itemSku": "8OO0CVqXF6bMzRd2", "itemType": "Z2WjutGAptSES09Z"}, {"count": 4, "duration": 77, "endDate": "1987-09-22T00:00:00Z", "itemId": "6o87DKPLLTcjU87C", "itemSku": "2CAKbiD5PxA5v964", "itemType": "4D4d5jTjzZ8KpdOx"}], "name": "rQ8r5te5FkJ58wQy", "odds": 0.28032762035743586, "type": "REWARD", "weight": 87}], "rollFunction": "CUSTOM"}, "maxCount": 81, "maxCountPerUser": 37, "name": "d9kC9MEhGrQVQ3yK", "optionBoxConfig": {"boxItems": [{"count": 58, "duration": 77, "endDate": "1982-11-16T00:00:00Z", "itemId": "V9chX3evM1seGH9Z", "itemSku": "wZcLnJPavRNr3ysE", "itemType": "p4sIwslUQociDSNS"}, {"count": 14, "duration": 10, "endDate": "1980-07-24T00:00:00Z", "itemId": "8TvyyZjEMbPRNKUA", "itemSku": "BS8cyK8SnSvsUGLq", "itemType": "YJevKKJR5KWRgHuL"}, {"count": 72, "duration": 11, "endDate": "1986-08-08T00:00:00Z", "itemId": "4vyeNIfF5Ri6ydoL", "itemSku": "4tB0FUpx5TLiooOq", "itemType": "Rm1Mxf3NfjnW9axv"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 18, "fixedTrialCycles": 48, "graceDays": 47}, "regionData": {"pJyTba2Sx7lPUWhf": [{"currencyCode": "LYtrkZ2V3jzXzils", "currencyNamespace": "lRzP96yJ7RbX8fkG", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1991-12-22T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1971-01-18T00:00:00Z", "expireAt": "1988-12-26T00:00:00Z", "price": 41, "purchaseAt": "1975-08-11T00:00:00Z", "trialPrice": 22}, {"currencyCode": "RIQkIiA44zjyRqef", "currencyNamespace": "UM764xXmCkJL9p2O", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1990-10-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1972-06-24T00:00:00Z", "expireAt": "1985-02-01T00:00:00Z", "price": 43, "purchaseAt": "1973-06-08T00:00:00Z", "trialPrice": 92}, {"currencyCode": "OHZ2aWSL11msU7Qp", "currencyNamespace": "cpkApFODOqz4FKRW", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1971-10-22T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1988-04-24T00:00:00Z", "expireAt": "1982-07-31T00:00:00Z", "price": 26, "purchaseAt": "1996-09-24T00:00:00Z", "trialPrice": 39}], "4ZA04yxGcMcYyrom": [{"currencyCode": "MVFEaTLz3hmDX1C9", "currencyNamespace": "gHM8SS73LrEja3Xl", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1985-01-17T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1990-07-15T00:00:00Z", "expireAt": "1971-09-06T00:00:00Z", "price": 88, "purchaseAt": "1983-11-02T00:00:00Z", "trialPrice": 77}, {"currencyCode": "uFwHyfWs9J4OjFm6", "currencyNamespace": "OQMQgWL3hmjUydsg", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1980-04-19T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1973-04-05T00:00:00Z", "expireAt": "1971-02-24T00:00:00Z", "price": 1, "purchaseAt": "1991-12-15T00:00:00Z", "trialPrice": 98}, {"currencyCode": "pgEAKKLcKbPxGvL2", "currencyNamespace": "c7KalLFWBzkHql6e", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1974-12-07T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1997-05-28T00:00:00Z", "expireAt": "1999-08-05T00:00:00Z", "price": 79, "purchaseAt": "1994-06-22T00:00:00Z", "trialPrice": 9}], "t3TYXNAGl1xy1H8A": [{"currencyCode": "g2XY2TnyPCVsWzhP", "currencyNamespace": "IeHkoUSeT3lv51D9", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1992-05-26T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1974-06-17T00:00:00Z", "expireAt": "1984-10-20T00:00:00Z", "price": 0, "purchaseAt": "1980-09-25T00:00:00Z", "trialPrice": 44}, {"currencyCode": "H001y8DGO7yuqGFa", "currencyNamespace": "SZmLnl13NthHP0LD", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1971-10-07T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1994-10-21T00:00:00Z", "expireAt": "1981-01-11T00:00:00Z", "price": 51, "purchaseAt": "1989-05-24T00:00:00Z", "trialPrice": 66}, {"currencyCode": "OFmeGGIRRLbsmgDO", "currencyNamespace": "0TIQbgg12LHWqVdQ", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1984-11-03T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1985-04-10T00:00:00Z", "expireAt": "1991-01-06T00:00:00Z", "price": 88, "purchaseAt": "1981-04-27T00:00:00Z", "trialPrice": 84}]}, "saleConfig": {"currencyCode": "9tjPCe7O061ScAQ7", "price": 14}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "3GHo6ESwn8otu3o1", "stackable": true, "status": "INACTIVE", "tags": ["HozRud9g15dSBhpL", "cdPJAnmCFUZdH9CH", "RxydIE1CQFSQS3RD"], "targetCurrencyCode": "8Q6YcgyTtSOU4FdU", "targetNamespace": "ceGtntm6j0Apyric", "thumbnailUrl": "msku6ryZK7UKLhMA", "useCount": 60}' \
    '3JvA3stZ6FN0omme' \
    '6HiOrbuq9cXar8FK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'UpdateItem' test.out

#- 137 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'ACMfaESKKo0RBtKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteItem' test.out

#- 138 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 19, "orderNo": "QycDpbOcYim2syYc"}' \
    '8YuKlQjnj5QjrVi6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AcquireItem' test.out

#- 139 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '2ITQp6NklXSUYkHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetApp' test.out

#- 140 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "YqepadIS0zRgire2", "previewUrl": "ntrz0FUDXjV0GmcF", "thumbnailUrl": "SjmJGQU5YRHjMz3b", "type": "image", "url": "9AflDjkRQna4afJC", "videoSource": "vimeo"}, {"alt": "mgf0blFr8NUmSdS4", "previewUrl": "9CybTerX6wW5HLYx", "thumbnailUrl": "M5DN6DJmnjBd7q6U", "type": "image", "url": "V1i7ip9ibQlReTec", "videoSource": "vimeo"}, {"alt": "0LkwHKKIT2D8YJKn", "previewUrl": "P2TmDSwAt1UGNieM", "thumbnailUrl": "e0c6eA8xCvVNgS0w", "type": "video", "url": "Beq2uoLHWsw0m7ZY", "videoSource": "vimeo"}], "developer": "6mjkOA84jougrIsa", "forumUrl": "MHmzafNaxCNIzvOh", "genres": ["MassivelyMultiplayer", "Racing", "Adventure"], "localizations": {"AYs9Qae7TEBnzFux": {"announcement": "HzrR3PiHyAFfiwIi", "slogan": "9bI2X8C6xnSImJqw"}, "yGzE1BMLJmTvUJIV": {"announcement": "0W2K8alZaxyEak02", "slogan": "r4dRvrKr07n72icT"}, "rg8RyI3bDBIKGiLS": {"announcement": "qDVnEtbqHnY6D1Z2", "slogan": "oKGmRbhR6rnSjFQf"}}, "platformRequirements": {"699gOqEWjr9T9Uhs": [{"additionals": "GYJ3NLSVOdqFxY9j", "directXVersion": "8P8IFwNKh0Zni7P6", "diskSpace": "ZfRFkQolDEtyxyMG", "graphics": "w4ZEIMYFaIEr69zj", "label": "nPKVLZ59QuwBbW2x", "osVersion": "X96TmFiMrqZaZSR4", "processor": "SAMIG5DRP307xNIx", "ram": "Mniv6VDtGhPQu5Ig", "soundCard": "TlvO4wr8D7APHhih"}, {"additionals": "wdNSBKpqJ8V1kQHi", "directXVersion": "sGldXgqa99UNyHIl", "diskSpace": "nrLOesUoAwwCO2c7", "graphics": "aEAHcpdx91UabvNv", "label": "RaUrUqTcFsGXxjR7", "osVersion": "vTeNdfPVWmEdVFXX", "processor": "02sJsXg7AKOu2Xk8", "ram": "T0sqdmD20rolfU1y", "soundCard": "EokwoBSfRPMdPXru"}, {"additionals": "40VmHvpaJ6EFG9wL", "directXVersion": "OlD7N2GNQs0IgMAb", "diskSpace": "Rc0I82pjV4UBb0pZ", "graphics": "rHFxE9EAcMe8RHXn", "label": "sxazB0s0OGtkrGuI", "osVersion": "EzLqOEqdEcHbFrNL", "processor": "qqyBzPWvDsw3y3no", "ram": "STunCZN39o0vZqaS", "soundCard": "rHfwrqqHXHpPnC56"}], "p62cEYBMPDDNvuy4": [{"additionals": "MWHW8YW1euC0ubVp", "directXVersion": "UB9WTnYHGmKeMnGn", "diskSpace": "3hXTX65W9y7jKRgC", "graphics": "FKj2fpaEDgvMXedU", "label": "0CtjH3UPJy3CnYG5", "osVersion": "ypxMPXQb9Aa9QMoQ", "processor": "gjOf0byuj8Uxptb2", "ram": "o5jdTreVKh6flE9F", "soundCard": "aNdFDCH0BMCufX5L"}, {"additionals": "n9YKDyW9wNSXGvHG", "directXVersion": "abfCgecNknWoEbRo", "diskSpace": "ZQ4VuKeTQQXDNtjg", "graphics": "ypGgBtsGOxHfW3WB", "label": "HUGCPEvc97uDKDBh", "osVersion": "ngmXpNaXSgg2yJza", "processor": "aUc8p87eTTm092ru", "ram": "cPAhnaYqSLkr3tlv", "soundCard": "hwbpOwvWyVZbXXgv"}, {"additionals": "JKjvhZn4m8rgQUG1", "directXVersion": "gDFutWedPpbBwcmR", "diskSpace": "SOW5MFhNeBercY9D", "graphics": "bSYPsKMU8ah8NJxY", "label": "KZWUVW9NyUUdkrKC", "osVersion": "CEaIUUwPgILFEno1", "processor": "41RnaYhr2WJyqCvA", "ram": "fWi7mDpF9Uxmjutq", "soundCard": "gr8019aVHHRLK0fv"}], "936lSL3gAK6QqFlW": [{"additionals": "lAR1frDQIVwmefiY", "directXVersion": "RytVWtyJI7ujeL0g", "diskSpace": "jx8jAfmTLOwiBSSe", "graphics": "1E9DWrTYLcDOMWy0", "label": "wefl1KKxNl1Bu8GE", "osVersion": "15JzEvFlzpDnYuSq", "processor": "ynNlJACpHVndrAR7", "ram": "z9J0bNuepqWsDLjz", "soundCard": "ow7MvJGnWbcVqeQS"}, {"additionals": "68NcKrOSqAvumNXd", "directXVersion": "NoD6gTOf0jHAc8PG", "diskSpace": "ncBz3SqYUIQnwGbM", "graphics": "TiA96lnb5gdT3QnV", "label": "1lkyfpfTo2MX3Yvl", "osVersion": "KKTkjhbq0eRvkBW4", "processor": "8O77tNIBYTFfPUrN", "ram": "UOX0haxwoUd3ezYA", "soundCard": "dypb6oWXYIQqBIhw"}, {"additionals": "3NQXGJDWtQNJFHNb", "directXVersion": "gt9uaoCeP9rZK0m4", "diskSpace": "whjNMB89Aoh6Jk84", "graphics": "k7R0603b1ChdDIpR", "label": "n2HgPRevBMjempE9", "osVersion": "0i47qjDQAAvYZZAB", "processor": "KOA0L11TgHUfODRo", "ram": "csLmBbV1sCNpADwy", "soundCard": "pkoh2Ufv88v1ngAJ"}]}, "platforms": ["Windows", "Linux", "Linux"], "players": ["Coop", "LocalCoop", "Single"], "primaryGenre": "Simulation", "publisher": "5AL1og70bKW5QYtG", "releaseDate": "1984-07-14T00:00:00Z", "websiteUrl": "VQvqyIVadq2JITEa"}' \
    'FYCmQEyL35Lh1cCB' \
    'gg2D4HUqIhXDNwse' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateApp' test.out

#- 141 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'D5BbL13OgHZysyny' \
    '0912axRFeMgIQdJN' \
    --body '{"featuresToCheck": ["REWARD", "DLC", "CATALOG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DisableItem' test.out

#- 142 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    '2k6wEP9rj7lO6vs4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetItemDynamicData' test.out

#- 143 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'tMfHLoSkvb8lbFBt' \
    'F0ILnxdtDeCtbUIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'EnableItem' test.out

#- 144 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'xTu6SQF7Bt4rvdiz' \
    '3ZJfWFdytTpAVx0p' \
    'd4puXNhGU3RmYw0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'FeatureItem' test.out

#- 145 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'wPDL8fEraUQnzcZC' \
    'IvQUYP4zKaJuBk11' \
    'UoFtSCgGhhAxzoBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DefeatureItem' test.out

#- 146 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'OqmwgAOXAylHS3ht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetLocaleItem' test.out

#- 147 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 43, "code": "NYuRa6jU8OLKdFhR", "comparison": "isLessThan", "name": "swdEfL1i3SL7JlQ0", "predicateType": "EntitlementPredicate", "value": "mwgELy9cxgDaEUFi", "values": ["MTIV4pb5hZyPikzE", "qtph4Z0KsCWhJPpm", "mnmdOWGrvu5JZsUP"]}, {"anyOf": 31, "code": "jVL8heTq0Wmf80d7", "comparison": "isLessThan", "name": "dQZznMUlqj2djHHF", "predicateType": "StatisticCodePredicate", "value": "xJPvHewpv9IeC6LA", "values": ["030WDtRFRReZoX0e", "tGzNwZUe0kRnfBio", "YwpjuQPo1Bi27Mr8"]}, {"anyOf": 86, "code": "fI6ZeDWbxHSLn6kQ", "comparison": "isLessThanOrEqual", "name": "Ni9NFQFpBDG4baNq", "predicateType": "EntitlementPredicate", "value": "4rZ57Ra4Wlon8Zze", "values": ["WXRfEoUuNmQrq6p7", "HgabbmT81jfik6Sh", "LjJbf174MCR5Zpvl"]}]}, {"operator": "or", "predicates": [{"anyOf": 97, "code": "YOBpl77LsKN46XLN", "comparison": "includes", "name": "F8gP7LgkxhkSSID9", "predicateType": "StatisticCodePredicate", "value": "r5ZkwYPLnvikBnp1", "values": ["xZgIUMxGfQHmg4I1", "73RnfIDxg4DkmnJt", "ILBujZh8S62GO32C"]}, {"anyOf": 85, "code": "jZo2dQM3ZXq9atij", "comparison": "isLessThanOrEqual", "name": "0Um3ITROznZA6EVE", "predicateType": "SeasonPassPredicate", "value": "EqkFFyGp6XhgI2Su", "values": ["Eyr4hactAHdK0X7O", "ZKu6MmVxEFptfSFU", "0F8qXSfSkxhrHhjW"]}, {"anyOf": 48, "code": "Dm2YoSLUIzzQsIU3", "comparison": "isLessThan", "name": "Zf93pQmmWWhMnRSn", "predicateType": "StatisticCodePredicate", "value": "Rk0DwXkYJ6aX6XRS", "values": ["IfH05hVdagEETj8D", "Xv7pY5cNIYdQRni6", "Xg6OXqwh2Uj0IZZF"]}]}, {"operator": "or", "predicates": [{"anyOf": 81, "code": "QF9Ywa1VlJBmSCpF", "comparison": "isLessThan", "name": "z5O9ugNuq4uGu9km", "predicateType": "EntitlementPredicate", "value": "T6fVxvK30nHMYxf8", "values": ["tqSmaHvUExz8o7Tw", "xOR1DEgYR3iOynLL", "cWL7fNlyGuj0EkM7"]}, {"anyOf": 80, "code": "5a0gqyakuryISjsr", "comparison": "isLessThanOrEqual", "name": "9kO0rmonOpgtONmM", "predicateType": "SeasonTierPredicate", "value": "hzr7POOjzRzlmVmp", "values": ["vPaX8W0GvPN7gRfs", "fmMq65nYpNAwv9Us", "ySRn2FX0Ac7CzuPX"]}, {"anyOf": 63, "code": "hU1pjVwMsLdJrt5F", "comparison": "isGreaterThan", "name": "qQVkSIXLGF8dtk8b", "predicateType": "SeasonTierPredicate", "value": "ld3LWFhC1kBUvsUc", "values": ["QiF1OsXfJG3psjIB", "zjaFmN0MInvVPAPE", "nOXhewthszMsYOEm"]}]}]}}' \
    'ovHVVguusvVUxkCG' \
    '4IGPYHaRvV3JGi5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'UpdateItemPurchaseCondition' test.out

#- 148 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    '0G5NBtXVTXK1JdoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QueryItemReferences' test.out

#- 149 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "lQQGLneKl3iXOvSG"}' \
    'gZzuoTiOgT4AtBZJ' \
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
    '{"description": "sMBPDcUuWC1NgHax", "name": "Qlxs2MPGkLeY5Ced", "status": "INACTIVE", "tags": ["l0Un3PT2bVzOt2J0", "VxSVRWxJw7idbmOx", "0vyaMbcnlyBvXdpo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CreateKeyGroup' test.out

#- 152 GetKeyGroupByBoothName
eval_tap 0 152 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 153 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'YVZKx8oPBJncKdya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetKeyGroup' test.out

#- 154 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "bXymlDvbcApuoA5P", "name": "CdXT4YD9fDzx1WPp", "status": "INACTIVE", "tags": ["pzHannSLeEYvuciy", "nwWb01HLrp6OW9Y7", "FIIEJMm4Kizs3NRb"]}' \
    'yYMyWPHp8NpreWtV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateKeyGroup' test.out

#- 155 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'tRQu0coThNxwnnpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetKeyGroupDynamic' test.out

#- 156 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'M2KSoHlpDFImJNov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ListKeys' test.out

#- 157 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'lZq1O6RDUgilQHCt' \
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
    's6SUNxUWIGSkxjKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetOrder' test.out

#- 161 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "3EiP6WeXWf3dBAVf"}' \
    'IM2oLFaTIhv5XrQv' \
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
    '{"domains": ["TAdisxP0DyxqSYeC", "l4gEZgIMDALa4nsI", "TUeFKNh8kgmMjBxD"]}' \
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
    '{"currencyCode": "74LujtGQD9sT5LHk", "currencyNamespace": "WjFIo6VbU9gwMgZP", "customParameters": {"R9Q5Lstog0ehjEmc": {}, "jJzkf7rNu3ZARHXZ": {}, "5yuJsfxI3zuYwCYQ": {}}, "description": "w4Rr3lmeyijwD3pY", "extOrderNo": "ZEoKfBV4CX15snBg", "extUserId": "mflygDW6ab0RoZeM", "itemType": "OPTIONBOX", "language": "ge", "metadata": {"XW9KlfgVvjjjExRk": "4JHYGa2nnyqvFCYJ", "OJl9ljs9WPwxzICE": "ykNJeEn6eiosoCvr", "GeDygOZbA1UGLox4": "eJuvLmou5AtB5J9X"}, "notifyUrl": "xYqy0HcWUCcahA1t", "omitNotification": false, "platform": "Bnuo4jR1HYLJjnyd", "price": 48, "recurringPaymentOrderNo": "Hm9foRLP4zSxApJe", "region": "0aplQXEaoGjonwKD", "returnUrl": "YwjvKhxwtaxd74bE", "sandbox": false, "sku": "Zby9mBdGrJY5J0e9", "subscriptionId": "jWcVTCNxjdv8GxhJ", "targetNamespace": "oB4lAkbm1Abh9QxL", "targetUserId": "BfhpOp8UlDmFYNBS", "title": "DEgsUMikj8NQNDlh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'CreatePaymentOrderByDedicated' test.out

#- 169 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'AhwAc8mPZRllengC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'ListExtOrderNoByExtTxId' test.out

#- 170 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'dfKGCBZMAbJnqDKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentOrder' test.out

#- 171 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "BGWmZti7VJ7O7dNz", "paymentMethod": "DBzVmGSholl8uD1h", "paymentProvider": "PAYPAL"}' \
    '3rFWvlE7bmuaFNPC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'ChargePaymentOrder' test.out

#- 172 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "ECKSzHTT5beKYt4C"}' \
    'DlWZzqpJeQd6tN5o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'RefundPaymentOrderByDedicated' test.out

#- 173 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 68, "currencyCode": "KVQWNOUAh5VXa797", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 10, "vat": 52}' \
    '8ybCNhF9RCyMn5VX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'SimulatePaymentOrderNotification' test.out

#- 174 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '87u49Hsq4hLUkLLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetPaymentOrderChargeStatus' test.out

#- 175 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "NMnmlFzzwpEZwbcC", "serviceLabel": 62}' \
    'SxoJdIIw70J2JeqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetPsnEntitlementOwnership' test.out

#- 176 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "TxshoZJnsAkX5sxn", "sandboxId": "y0WLYMNb0QsxPlx6"}' \
    '4IQUpSToD0bb0SXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetXboxEntitlementOwnership' test.out

#- 177 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetPlatformEntitlementConfig' test.out

#- 178 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Other", "System", "System"]}' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdatePlatformEntitlementConfig' test.out

#- 179 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetPlatformWalletConfig' test.out

#- 180 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Epic", "Oculus", "Nintendo"]}' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UpdatePlatformWalletConfig' test.out

#- 181 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Other' \
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
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
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
    '{"appConfig": {"appName": "hC87O1U2uYktiAFq"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "bNoJJUhL5p56dnYH"}, "extendType": "APP"}' \
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
    '{"description": "pU3aCkzqs0hC50vE", "eventTopic": "OIxc25vtorwrF6Ht", "maxAwarded": 4, "maxAwardedPerUser": 73, "namespaceExpression": "nxKiaoWmrw6n7VYP", "rewardCode": "rZA5UWNq6yTj5WST", "rewardConditions": [{"condition": "6JF9lLvPS5jJ58va", "conditionName": "RaaxVQeMUb1kvSj6", "eventName": "jcjlxGsLgfrhBTH1", "rewardItems": [{"duration": 87, "endDate": "1997-10-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "1XmB5Z6en6c5d620", "quantity": 96, "sku": "AMCaXsZoyeqN5ouE"}, {"duration": 6, "endDate": "1993-12-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "i1n2WJVJy6yBPVmp", "quantity": 3, "sku": "J96sJUnv5BwzKyxJ"}, {"duration": 34, "endDate": "1987-08-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KnNDFZOok9snWC9C", "quantity": 65, "sku": "f4KjUJVMedBEWe14"}]}, {"condition": "kmPIGCrJozIio8nW", "conditionName": "a64x5pJSHZCzyWKP", "eventName": "30KusyvaitTsWtL2", "rewardItems": [{"duration": 53, "endDate": "1990-08-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tjEKW31SlSm20Dzd", "quantity": 74, "sku": "bAXxxeatall18E5J"}, {"duration": 22, "endDate": "1993-04-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "aLMlveXWFZqotaiZ", "quantity": 81, "sku": "KOabgb0l3UURltNb"}, {"duration": 61, "endDate": "1983-01-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "aUB1xXuK2MwrRJuk", "quantity": 78, "sku": "T9SRQFfxRIUU3K7s"}]}, {"condition": "jvHHFmaUGIprrzf5", "conditionName": "gWNxqxl2qgslinTP", "eventName": "bY1473RFPlwtoen6", "rewardItems": [{"duration": 92, "endDate": "1994-09-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "twMX4QAE2aV1l1P0", "quantity": 4, "sku": "sBYlx7rzEm3km2jj"}, {"duration": 80, "endDate": "1997-05-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qEmuEf6JRpqZEUH2", "quantity": 89, "sku": "yqvcwQ3uBzBm355I"}, {"duration": 95, "endDate": "1993-12-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kf8Y5ksiqVvcGZxT", "quantity": 85, "sku": "fWNB8u5Qlf4KGo0N"}]}], "userIdExpression": "4g7UWRzPsMd90Jrk"}' \
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
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'ImportRewards' test.out

#- 194 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '9EqyhFh7mq6sgk5c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetReward' test.out

#- 195 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "HaJYkzClqPty2kxg", "eventTopic": "yry1MM9eo43Qi5cR", "maxAwarded": 9, "maxAwardedPerUser": 2, "namespaceExpression": "hBB7o24lw21Z3nE0", "rewardCode": "4Cbkpn0yX44aL9f0", "rewardConditions": [{"condition": "QyO5YXVhTiaE4WKn", "conditionName": "EeaUdAmgmnzKSVlX", "eventName": "sRNMykbnHTrHLmaT", "rewardItems": [{"duration": 67, "endDate": "1987-10-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "atDOVS2F6Is27hn9", "quantity": 93, "sku": "wB5Iehzt3ErL5T5r"}, {"duration": 44, "endDate": "1988-08-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RXJxUvm1xIvCywA9", "quantity": 10, "sku": "KVla3LCTgTkPtcVf"}, {"duration": 89, "endDate": "1999-09-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ox2lJjo1I9gluGDr", "quantity": 2, "sku": "JEFQRX4iVg8TK1CF"}]}, {"condition": "9X9mTmMVfQaiQKdH", "conditionName": "knLotplfBOvsb9ai", "eventName": "cyajUNH4cyuoR5Yk", "rewardItems": [{"duration": 90, "endDate": "1989-02-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PGfmAnDGtInmyZkH", "quantity": 87, "sku": "jKUr3rx7Sdt80ugF"}, {"duration": 40, "endDate": "1974-10-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5gSuRJLGkijLEJPC", "quantity": 7, "sku": "MDAkWOP9y3eP20aR"}, {"duration": 73, "endDate": "1986-02-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5rtQUWRLvu3WEfwB", "quantity": 27, "sku": "m2Tc4sbYVp7amyDR"}]}, {"condition": "Qk3QGp0uzzvAfa6B", "conditionName": "W7oGw2U9LoHWS4ko", "eventName": "auo9jkTEI52B8LI9", "rewardItems": [{"duration": 44, "endDate": "1975-11-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EB8OHKsqKaw1EmCx", "quantity": 83, "sku": "56H3l3jc1060kqFK"}, {"duration": 81, "endDate": "1976-01-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XDqQpOY256yQcC8C", "quantity": 86, "sku": "odPokDUivfNI3KdS"}, {"duration": 70, "endDate": "1987-01-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "i8dxU11tPBlMCz6S", "quantity": 90, "sku": "5g9y47AVCmFD0nKy"}]}], "userIdExpression": "UwcI9KJZt31la1wZ"}' \
    'gpPXxtcOPw0UBm7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateReward' test.out

#- 196 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'ccELVo9RYTquwIrG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteReward' test.out

#- 197 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'gk3eqgOf7WwNZWyY' \
    --body '{"payload": {"uM3y1TjdcOVw94gq": {}, "QYOWGw7LSW6Kb9ot": {}, "dVBjacY5doQGhc8z": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'CheckEventCondition' test.out

#- 198 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "SCeJ4Q8PHY6vGzNf", "userId": "PWTQ1pJMwPVAUNYF"}' \
    'Og7TplEkOZy73bRB' \
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
    '{"active": true, "displayOrder": 100, "endDate": "1984-08-22T00:00:00Z", "ext": {"QMDnaFw1u7BLbxxm": {}, "ghZp6iVAJ6lYOK3c": {}, "wO9ln34fiLxPN5xK": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 9, "itemCount": 81, "rule": "SEQUENCE"}, "items": [{"id": "NYd5p2yVsBAv2ZVl", "sku": "rnlY8y91hD1ZHh1V"}, {"id": "jLqa0AODLarMcrlO", "sku": "CtMCyPHnS8uePyiB"}, {"id": "yYQOgKKv9kQYaSI3", "sku": "bbqZQkXAns7VrdNH"}], "localizations": {"8v1oP98hanhE18Ub": {"description": "Y1Zkrfk0Xn6jwfR0", "localExt": {"2GfMrXzI7oWD1mZ9": {}, "rW6QdtPe4YleMg5N": {}, "Gs1Pmz6Amebh0FbO": {}}, "longDescription": "WyhAnMP6BdBw6d4U", "title": "OI7Tr9NHcXeEWIpy"}, "Yx9wOuNquv2qkqRR": {"description": "9Nwd8OrgT5HMaelK", "localExt": {"s3hdNcCPnrmZDNct": {}, "Qe0IM586qYdNvmRI": {}, "TEU7usHknnfYNY7Z": {}}, "longDescription": "XicpAJw7Ct9AmEoU", "title": "NlmQjebaV8c13FZx"}, "X6qNntgmml0ts1uw": {"description": "7WvaRDN6waXRBRT7", "localExt": {"8fZc6LpvtY7Bk3j0": {}, "Rt5ai8x1JHTPfATk": {}, "2jDkPq7n0VqgiBJs": {}}, "longDescription": "xKkXhiEo0RXgJkWe", "title": "lLk7pTvUfmra4esd"}}, "name": "Z2v5vKHsJ5DezdlR", "rotationType": "CUSTOM", "startDate": "1980-01-02T00:00:00Z", "viewId": "TSLmDolGdb7yXLAg"}' \
    'fgESHWCK8LccJJmX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'CreateSection' test.out

#- 201 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'X0pmy1KDJtg9FwOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'PurgeExpiredSection' test.out

#- 202 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'wtMPXhsCdeun9QN5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetSection' test.out

#- 203 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 68, "endDate": "1983-04-08T00:00:00Z", "ext": {"01mQjVblM1GnFG6e": {}, "PpjPG4iKj1VxNoFL": {}, "wY2aYPpdsN55f9R3": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 15, "itemCount": 74, "rule": "SEQUENCE"}, "items": [{"id": "dn2Ay5KgtWue3Xkq", "sku": "cMKE9l0uRkf5RxDd"}, {"id": "VVe0VvPmen8keuXu", "sku": "Wuitb85Ns7DhXCIn"}, {"id": "eqddStnBNigsnBpu", "sku": "24ga0d3NvXvIgvIy"}], "localizations": {"nEaAcX7fXbKWmraq": {"description": "NIKPX6gPHT29wkZw", "localExt": {"M8cvObRjKxi25l9m": {}, "b1mSJffUaLwOsYRI": {}, "JearztP7sqwracbi": {}}, "longDescription": "PrT7cARnySCNlQCo", "title": "cWBq1VspKjs4jxjT"}, "Ne3vK6XXKdJ9YgLS": {"description": "Ryjx0xgbEuoPqi79", "localExt": {"JLKHle3po9nK2MnW": {}, "ISZ8LUxYanMQUFaZ": {}, "F74RbeEi4WAntBdO": {}}, "longDescription": "LVnsl61rzqSDNeQF", "title": "7Q3XLgdI7tdEmvBn"}, "rNtew73bedVZ6xFN": {"description": "iFC0HSIZAGhHJlyM", "localExt": {"BkbUPi2FDgx1gJON": {}, "Pjy1ei7AZBrLdMJG": {}, "912CJx1H9kC6LzFq": {}}, "longDescription": "k7MSt4enxGbQr0GS", "title": "tncRVLvJm4u9ltRo"}}, "name": "1cXuco8zvapmS8p2", "rotationType": "NONE", "startDate": "1972-10-30T00:00:00Z", "viewId": "vzUWMz6IheEap1Ph"}' \
    'jtZknu6Ke0rhmQrB' \
    'Lti0OZtmm5xYReY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateSection' test.out

#- 204 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'SgfTy3HUPSrR6V6w' \
    'TNktWOwGcqmkqou4' \
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
    '{"defaultLanguage": "IX6ynCg7jZBPZUjh", "defaultRegion": "5Id1WwN3o2LnIKn5", "description": "bM9rW10Xi6WV5MHu", "supportedLanguages": ["vBu2QQOXQatBE5QB", "IDADPTgsgo0iTCIE", "KHYwj85RIJjlQAk4"], "supportedRegions": ["T5By0AqALCR39RH5", "UcRubJZYIgyBXZfT", "mD5U7RTvIuyjoeXO"], "title": "EFAR7ULC1He2xJmI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'CreateStore' test.out

#- 207 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'CATEGORY' \
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
    '{"catalogType": "SECTION", "fieldsToBeIncluded": ["G3SSfJb7YC46l63Y", "Rc0T3d9XaFEWXtvT", "ExHo1HliWVA9kYxD"], "idsToBeExported": ["aegAgXI2ciZ5FWoy", "qYl8KD0zlFtltcFG", "PdVe0VJQksEtHq5K"], "storeId": "HA9baTP1jNjpn8az"}' \
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
    'MyTBLnxtGnH0h3Tv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetStore' test.out

#- 216 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "kynRdR0cTxgD0WOW", "defaultRegion": "AsThZ6Ln6xBAApmu", "description": "mWxYTfEEm2g8JpfO", "supportedLanguages": ["hv1dFmmwcX8cRQpN", "ggDqIfB0DPn1CZrB", "aO9y4CHHaydtaKJN"], "supportedRegions": ["ujTvCDwyDu1QGAcJ", "RAK1mgNt0pudyASz", "9qbHEsbgt8Nb6qoN"], "title": "GzjQQDw2Sc4DTber"}' \
    'gyuPtRgn6fWMWqZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UpdateStore' test.out

#- 217 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'mAvVETTsjp3kTD5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DeleteStore' test.out

#- 218 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'UdBvhgsfcLURAHqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryChanges' test.out

#- 219 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'EpmWErwMkbsCK44W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublishAll' test.out

#- 220 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'EKYCuqx8xzh9bTsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublishSelected' test.out

#- 221 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'Gm5hk6Ypn8KsMKfu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'SelectAllRecords' test.out

#- 222 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'ARcHovGUZSzWfq3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'SelectAllRecordsByCriteria' test.out

#- 223 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'qssnqUPIJabCPMhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetStatistic' test.out

#- 224 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'OeDXc5LH8xN38dVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UnselectAllRecords' test.out

#- 225 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'dD5L9eqq8PstBnVe' \
    'YTD7i7fqOSZxwOb5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'SelectRecord' test.out

#- 226 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'jkz9ihTe86sjHoBL' \
    'Gz2Km7DEtivDSv0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UnselectRecord' test.out

#- 227 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'mNGIWjV9L9aA57kR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CloneStore' test.out

#- 228 ExportStore
eval_tap 0 228 'ExportStore # SKIP deprecated' test.out

#- 229 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    '2ACNzI10tZr3Ajmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'QueryImportHistory' test.out

#- 230 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'xrpjfgamOka0iwQF' \
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
    'wqJrWlE1xE0Agbtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RecurringChargeSubscription' test.out

#- 233 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'awrlckTguotHZZnB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetTicketDynamic' test.out

#- 234 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "kb1WomHQ23RrmGI0"}' \
    'fa4tSghREoTAvClt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'DecreaseTicketSale' test.out

#- 235 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'zrUTJgBjWwZMcxIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetTicketBoothID' test.out

#- 236 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 26, "orderNo": "lD9xIb44v71qZ2Qm"}' \
    'EuNVKEmoFSme2B5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'IncreaseTicketSale' test.out

#- 237 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 51, "currencyCode": "6kbzroGyrFwTSdzL", "expireAt": "1991-07-26T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "wPp0OS1jOq8HtddV", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "Z7lfOiLRYQkDw4MI", "entitlementOrigin": "Epic", "itemIdentity": "SEqiXIaji4MOmP49", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "PgvbhdCorBgPIEGg"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 40, "currencyCode": "wbFJ8VUxv8qZiALI", "expireAt": "1978-12-11T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "P3OeZVILEaXbHnhR", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "T3if17nsndhy0Gtg", "entitlementOrigin": "Epic", "itemIdentity": "aNy4vvrPXP6Snc4U", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "gNJcVC0MQnjUphny"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 85, "currencyCode": "gLrITdqgHGJd9AlC", "expireAt": "1979-11-12T00:00:00Z"}, "debitPayload": {"count": 4, "currencyCode": "ehNOncXNM18ZiBLa", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "5iN5b6ODd1kj4Qj6", "entitlementOrigin": "Other", "itemIdentity": "S5aO256ceteBSz42", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "Ez0xbTHKA2YqU0FW"}, "type": "CREDIT_WALLET"}], "userId": "F84eD5m02245YlrG"}, {"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 19, "currencyCode": "fgrzLifZvRPXjiYC", "expireAt": "1992-07-03T00:00:00Z"}, "debitPayload": {"count": 78, "currencyCode": "lnSYTuNVajwq9onI", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 80, "entitlementCollectionId": "pOzuaRV8Vw1OuyVC", "entitlementOrigin": "Twitch", "itemIdentity": "IoLrVS0AcrY9Vdxz", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 52, "entitlementId": "1SnMFP7ijRI315PP"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 41, "currencyCode": "r2LEaQgwjgNbqY9S", "expireAt": "1996-04-23T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "qb5MeMGL8kITGmF0", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 56, "entitlementCollectionId": "Q8A03ovBcVCnifE0", "entitlementOrigin": "Steam", "itemIdentity": "S9KhgP8rRhISjcIv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "I6tzdbpIKoQhtOlK"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 89, "currencyCode": "pfkWv9kQ9FRDgAEV", "expireAt": "1973-12-22T00:00:00Z"}, "debitPayload": {"count": 62, "currencyCode": "PA5OQX8twQrDu49J", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "XjPc1tJBaHYTZ2Id", "entitlementOrigin": "GooglePlay", "itemIdentity": "PGvsYDnaTT5U0e2L", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "yB5EiqQhvZmCSswS"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "cfasR2Nrrm0JBGkT"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 16, "currencyCode": "tDEUm4PnTTyHhBvq", "expireAt": "1974-12-08T00:00:00Z"}, "debitPayload": {"count": 17, "currencyCode": "fJHbuwF3aZQrVPWy", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "9M0KC9zNZRaWXjMC", "entitlementOrigin": "Twitch", "itemIdentity": "UhdTY2DNsFuGcD5v", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "aJ3WftgZ43r4ZLb7"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 58, "currencyCode": "SZkIaANvZ0I2EGVD", "expireAt": "1996-12-10T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "qK4CeZXmSBfgrJcw", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "AcuRQzdYhuES7Bnc", "entitlementOrigin": "GooglePlay", "itemIdentity": "vez1lbenagh9kCPN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "76AToup2zhRng3Ki"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 85, "currencyCode": "iPqvMMmYJeKvshwd", "expireAt": "1986-06-16T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "FvvEdqHzEDtl5oR9", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "1dm3fGK1wINqvFrA", "entitlementOrigin": "Oculus", "itemIdentity": "kn4KNYWbvsmtsOVv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "KYJyOQGUiqcJ2Jld"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "ftmSBKQ3zAXk9qVr"}], "metadata": {"zEqsDwIwRyHKWspP": {}, "tJlLDOjXTWGIrWq2": {}, "VvH0roA20Sfzrc9Y": {}}, "needPreCheck": false, "transactionId": "sgvVLN3usfhiyCf1", "type": "FOddxtE52sFK1jNp"}' \
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
    '3OwcrNR2jH7Xx7m8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetTradeHistoryByTransactionId' test.out

#- 240 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "IqIRyUqaCbbMa2Lq", "value": 13}, {"id": "A5f61ztkSpGmf8BX", "value": 29}, {"id": "LGzEglEe95LWKrkj", "value": 18}], "steamUserId": "TPuigp3RiJofgD4V"}' \
    'ypGT4cTfKNrjPqUk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'UnlockSteamUserAchievement' test.out

#- 241 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '0t9aquw2B2UVIQMA' \
    '6BOpxtYbmQwS5kNx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetXblUserAchievements' test.out

#- 242 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "CPLeKM4cQl8DlY91", "percentComplete": 92}, {"id": "piiZ4Imogp7RKEcL", "percentComplete": 9}, {"id": "k3rVTLjZT9qayJJt", "percentComplete": 100}], "serviceConfigId": "mVVI1FilcO4pajEh", "titleId": "kRLMvZnYZKCk0zbR", "xboxUserId": "EElwdZORocHSHulJ"}' \
    'HhAnY7QeDSRroVkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'UpdateXblUserAchievement' test.out

#- 243 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'b4xPPUmUifQvfoZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AnonymizeCampaign' test.out

#- 244 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'n3eRMzJEQYwNGRl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AnonymizeEntitlement' test.out

#- 245 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'gcWdDmIy4Ia2UtS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'AnonymizeFulfillment' test.out

#- 246 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'T1v2y9Je7apQfNdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AnonymizeIntegration' test.out

#- 247 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'yT3a0EGpHgGLUqdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'AnonymizeOrder' test.out

#- 248 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '3kBfGvwjwttys4Gv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AnonymizePayment' test.out

#- 249 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Dvs1H5juf5Cq950X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeRevocation' test.out

#- 250 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'tiMxQDIHnPin3vZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeSubscription' test.out

#- 251 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '9bUYgwdNmcpdldDn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeWallet' test.out

#- 252 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    '2Y2l1kZWnqjJaGGT' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserDLCByPlatform' test.out

#- 253 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'mVBFc2P689TFuh1h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserDLC' test.out

#- 254 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'FoX56gzosv2p6WtL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'QueryUserEntitlements' test.out

#- 255 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "fgPM8t1tgWhx94eF", "endDate": "1978-07-09T00:00:00Z", "grantedCode": "2FbyIXierPr2qLKB", "itemId": "XRYt7v7Wfg2omS11", "itemNamespace": "YyIWGPc92PcmK9zT", "language": "ih", "metadata": {"s1FIKxCXUhNdJ4cK": {}, "7rz2VPJ8AZ9i1ml0": {}, "sbgQ5zPZbllwvt3T": {}}, "origin": "IOS", "quantity": 26, "region": "GezRRUjCNiQauO5C", "source": "GIFT", "startDate": "1979-03-18T00:00:00Z", "storeId": "BE1JhOOdYFVxYR0X"}, {"collectionId": "haQ30cHb0re0TJwu", "endDate": "1994-09-27T00:00:00Z", "grantedCode": "3NPZi6h1nN0txahd", "itemId": "hp0tmV4jjIkC8lqp", "itemNamespace": "B9cbsDlreKfjfpUz", "language": "KTT", "metadata": {"UVmVcOxU0GsP6oBs": {}, "Zy1nIeavdWM4UiM8": {}, "xE2iHgKDtYUBWq18": {}}, "origin": "Epic", "quantity": 72, "region": "bnbAjszS84wsQH45", "source": "IAP", "startDate": "1984-04-24T00:00:00Z", "storeId": "nJRGwBPZ82ML7i85"}, {"collectionId": "xAiG2FleXiqNPeym", "endDate": "1996-02-17T00:00:00Z", "grantedCode": "nUYMXvJJrO8K9yVa", "itemId": "SV6MkQpPd0utGYDV", "itemNamespace": "GwpKCkOgcVrMw1DA", "language": "bd_fj", "metadata": {"9E87RTBvlu7lo1fo": {}, "XU28IE7EVvQkoqOZ": {}, "IFeJQSrnPscIMJRS": {}}, "origin": "Oculus", "quantity": 46, "region": "F3LRa7q49EdmhBpI", "source": "PURCHASE", "startDate": "1990-04-09T00:00:00Z", "storeId": "h9tHYQilnHrNI7Xs"}]' \
    'RCD3YOzMK1ZWOxnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GrantUserEntitlement' test.out

#- 256 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'MpyEziAPi9dBg5J0' \
    'me0BhvZVrOsZSqQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserAppEntitlementByAppId' test.out

#- 257 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'mdJGa6AahLvhIfKD' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'QueryUserEntitlementsByAppType' test.out

#- 258 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'yOiaUKC8t4GV0JiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserEntitlementsByIds' test.out

#- 259 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '7ZbWP80ZctunIw8z' \
    'zjr1oeY1p4P0xno1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserEntitlementByItemId' test.out

#- 260 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'luSqciM4rfqsoJ7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserActiveEntitlementsByItemIds' test.out

#- 261 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'kLiYjJvlKhH1ccnr' \
    'p3T2fKqq9CzJlj0U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GetUserEntitlementBySku' test.out

#- 262 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'GtCqJnqpaur75iSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'ExistsAnyUserActiveEntitlement' test.out

#- 263 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'LSqGKfGJDmzFepqp' \
    '["oIzofQ17bQpOtqU8", "Y63DFSnh5IbdftTL", "RLUGwenKzXRT99U5"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 264 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'B5j9CT2YI1qt4AYI' \
    '54fgXlDCLFwNGzR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 265 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'zvW33BLQ5NyteBZg' \
    '7IM93LGdMKko1WdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementOwnershipByItemId' test.out

#- 266 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'cuqjnyBh936FR7fT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementOwnershipByItemIds' test.out

#- 267 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '7f00EZw65iq4fnnF' \
    'A4ieAeG0JcWHLxYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementOwnershipBySku' test.out

#- 268 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'kKH0j3mmJ2Y5FsP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RevokeAllEntitlements' test.out

#- 269 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '4rgl0AQlBikeTeA9' \
    'eq8hIKrzAUsKqpjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RevokeUserEntitlements' test.out

#- 270 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'GHI3Wkg4HIrEmqfn' \
    'hjjtIQ7ipAfw6xTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserEntitlement' test.out

#- 271 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "JiEwGhGbMCnu8NHD", "endDate": "1992-12-12T00:00:00Z", "nullFieldList": ["iOQzKhR4x3pYj5be", "9x03hTzeUaFK6P6y", "xOlFhdtyrLQHkz1E"], "origin": "Oculus", "reason": "SW6YWXMTlqVrGyQY", "startDate": "1986-03-17T00:00:00Z", "status": "CONSUMED", "useCount": 53}' \
    'bzj7Xg2lcvB7TOu2' \
    'FcuLwU5IJt4pAasY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserEntitlement' test.out

#- 272 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"NW28u3UZ3q6QdMAL": {}, "9IC4460Wck2oK2mL": {}, "wkxgJXK2OjNzQ95l": {}}, "options": ["ceIy0lnTniV8j7Xm", "R8FUW42wLu5tQBUE", "3k2mUvrQPFxSaRrD"], "platform": "sF1CKYcMJnrn1I3y", "requestId": "poEAwuriKcfEberK", "useCount": 37}' \
    'WXNFfxIWM9jL08jt' \
    'CIr8STWuiyz2eOgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'ConsumeUserEntitlement' test.out

#- 273 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'y7d8WVlcOTKoZimY' \
    'NHB2ph25oEsCRrlY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DisableUserEntitlement' test.out

#- 274 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '6AX1ksmS6Cm75yFZ' \
    'Vt1HZPcFbl4XrKUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'EnableUserEntitlement' test.out

#- 275 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'hPevxFz1b7Q3NwVn' \
    '8PU8JfFPiZpcqq8q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetUserEntitlementHistories' test.out

#- 276 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'H8MR9K5kA67H3XOJ' \
    'lQfOCN2keFNIQusm' \
    --body '{"metadata": {"cAYWBLZg00dmqgWR": {}, "mPnXpH8xifqavEfK": {}, "K0Dei3ChLwkIGKtg": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlement' test.out

#- 277 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "DjDah0UewhSyu7JM", "useCount": 83}' \
    'doNSCRrqi0F1FGxh' \
    'rYszqB4U4xH3NpxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'RevokeUserEntitlementByUseCount' test.out

#- 278 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'EE1xE1teY5Ma16Sr' \
    '2B137kVZhkISgONg' \
    '35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 279 RevokeUseCount
eval_tap 0 279 'RevokeUseCount # SKIP deprecated' test.out

#- 280 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "MPlJqY7ujDDLuoQJ", "requestId": "spLLZbnusI9Nty8K", "useCount": 31}' \
    'LYAas29PBhKjKkXD' \
    'nEXVzzBDNoUXOIkG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'SellUserEntitlement' test.out

#- 281 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 15, "endDate": "1999-04-05T00:00:00Z", "entitlementCollectionId": "vGLET05JQWhwijC7", "entitlementOrigin": "Playstation", "itemId": "lArgYuyjFEveRvl0", "itemSku": "xjoSZYArBlpKXpe1", "language": "zYzna0T42qYhPsMM", "metadata": {"X4Dg6kBhhmAmGWgO": {}, "Nbsaq6FR89FVcE5v": {}, "UWRlOGzgjnghEeYu": {}}, "order": {"currency": {"currencyCode": "TA3fZ9naIn2EhpBn", "currencySymbol": "amOqQfF1i9lDi17T", "currencyType": "VIRTUAL", "decimals": 51, "namespace": "4ybYG4wLaPxhpGOD"}, "ext": {"mwJCF4HCv6DG2Dfo": {}, "gFpQ6h4G1JwgwqyI": {}, "OpmNMgpfDY1FR9rK": {}}, "free": false}, "orderNo": "QqV1V78ZIjg1EtBZ", "origin": "Epic", "overrideBundleItemQty": {"ipwCDOc9FNs0rjVH": 53, "hP0ILR0Ela7ZLwTA": 78, "wt5op6F6Z1a1sBmU": 1}, "quantity": 75, "region": "Cx3pnw2UqOcXFVD0", "source": "OTHER", "startDate": "1995-01-06T00:00:00Z", "storeId": "A02nKwO7XUNrraxs"}' \
    'Hn4uKhXVFTTx0Tcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'FulfillItem' test.out

#- 282 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "oB98Gf5PcmWICZpV", "language": "xaYU-NcyX_784", "region": "FkbWfSwD66Xg5Qbc"}' \
    '0EjxxzLQLRh64Y1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'RedeemCode' test.out

#- 283 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "opYiTRZEzq26aXSj", "itemSku": "yAQ2QsMJlAxZUci2", "quantity": 59}' \
    'Gu9CxaM7nweO9MSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PreCheckFulfillItem' test.out

#- 284 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "kJNZeDhfW7AVHVE6", "entitlementOrigin": "IOS", "metadata": {"amhtDUacOPwPczqM": {}, "DbsgiaaxIpP9oAIC": {}, "ocQql5YfBZVQcDD4": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "OKNAU33hDeba57ZY", "namespace": "9YNNrTcdcnzDvUHg"}, "item": {"itemId": "R2bX5lx9AjwbpWgn", "itemName": "IzWRtzH2wWVwIlnX", "itemSku": "0PYoF43qdlpBadzn", "itemType": "EopQjdlmCKky8f25"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "Dazz0zG1FmCCywXf", "namespace": "Hj329WcNk8k8qK4g"}, "item": {"itemId": "Jrux6tlQDfleFLBK", "itemName": "j8h7ZrO4pTU7jATb", "itemSku": "VBcDGudQQm98BKOd", "itemType": "soaTqFhdLfBWZeRF"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "etrgPcoqdV16bQzZ", "namespace": "jJiiJFm6K0Msbekv"}, "item": {"itemId": "Kte7LEbOajs9HWyg", "itemName": "fQVPPqE6XNxmrOFx", "itemSku": "6AenNJCzeLqjOhHM", "itemType": "sieBzDBhi6oZhjEn"}, "quantity": 3, "type": "CURRENCY"}], "source": "DLC", "transactionId": "Zp3ZHkJnKJ2ksygY"}' \
    'ZVyQIUbI6vW6lvyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'FulfillRewards' test.out

#- 285 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'cmR4QRN7ybL3lT1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'QueryUserIAPOrders' test.out

#- 286 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'is7OsTElVV8XJ7Jg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'QueryAllUserIAPOrders' test.out

#- 287 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    '2JP8JKQ1Fia4jQzE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'QueryUserIAPConsumeHistory' test.out

#- 288 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "BsJ_Qa", "productId": "hsX0E1pSQzkJa95m", "region": "aQLAJLoGMHeP6XZj", "transactionId": "cdrsSt4spX9eT2jw", "type": "XBOX"}' \
    'Ih1pfP8bRBVoq807' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'MockFulfillIAPItem' test.out

#- 289 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    'roCNo3Qw4Z54sNMs' \
    '82e3yxhkTFfQHB8O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetIAPOrderLineItems' test.out

#- 290 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    '5ke34NGuMLQ7iPaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminSyncSteamAbnormalTransaction' test.out

#- 291 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "qelc3lbrPkW2foKq"}' \
    'Iz9z80ICxp4M7Opf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminSyncSteamIAPByTransaction' test.out

#- 292 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    '9oRlvBsYj4IcbdUz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryUserThirdPartySubscription' test.out

#- 293 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'APPLE' \
    '5wS8MCmOepp9Tx45' \
    'YPBPqcYNEbLCaeCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 294 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'TWITCH' \
    'xlcNQWOpRLETWMAv' \
    '0uJ30L51TxrdknW5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 295 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    '2x2o1yDO6bwcKYeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 296 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'oxUWdvEBTwUyzq5b' \
    'zdNEHv6GmaokUOIa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'GetThirdPartySubscriptionDetails' test.out

#- 297 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'dEDAmp524IRplmKc' \
    'wvGguz7SAcGvV4lC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetSubscriptionHistory' test.out

#- 298 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'JgcrAut2gYpuKbE8' \
    'ulWHoG1zC1K7oT3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'SyncSubscriptionTransaction' test.out

#- 299 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'Ne5yhZbqmAgI6LUa' \
    'uh1GlEo4faeHIeXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetThirdPartyUserSubscriptionDetails' test.out

#- 300 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'ROEb0iXucFoRm7DF' \
    'w5ArJzNAElybJSWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncSubscription' test.out

#- 301 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'bZCdcwYHhOIGu0vX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'QueryUserOrders' test.out

#- 302 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "LFZoXt8k5ZtRJGwh", "currencyNamespace": "0BPRCWdTnytxmesJ", "discountCodes": ["f4bXUrytKH5rM54p", "8JDDcPDev3e8oc7s", "h3o0r9VYIh3Jj15p"], "discountedPrice": 97, "entitlementPlatform": "Epic", "ext": {"KLq2niQIIF3Qc9pq": {}, "9UUur5zNNHf53CHN": {}, "LzMNElAaW04oQXa8": {}}, "itemId": "waozlr2ftyZklpNP", "language": "l881jOSvCvj20fgU", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 12, "quantity": 49, "region": "3ApiXAivNHSVq7Hy", "returnUrl": "14PWQgyxy3AZ9Q29", "sandbox": false, "sectionId": "ynki71NZANUG3Xyw"}' \
    'OPxcLTU0y3maqZGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateUserOrder' test.out

#- 303 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'BZAszrs6F6qWE8F5' \
    'UT7Jy1J0W4BcrVEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'CountOfPurchasedItem' test.out

#- 304 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'fr25k1H2s4V2KN0P' \
    'LlR8cmHo3XR1GqcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetUserOrder' test.out

#- 305 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "DELETED", "statusReason": "kb6yaN0rJRTtAoro"}' \
    'j50ibuYM4wRG0lN0' \
    'X5kMcmOdLuSZLYkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'UpdateUserOrderStatus' test.out

#- 306 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'ABWq6LMyqmJBIayJ' \
    'YIYPCQLT4UtcQmxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'FulfillUserOrder' test.out

#- 307 GetUserOrderGrant
eval_tap 0 307 'GetUserOrderGrant # SKIP deprecated' test.out

#- 308 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'nH608ZzCha8xLBGl' \
    'N6GGKXlt1XAswrMM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetUserOrderHistories' test.out

#- 309 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "jtufusABAiEcZPc5"}, "authorisedTime": "1999-09-11T00:00:00Z", "chargebackReversedTime": "1978-08-28T00:00:00Z", "chargebackTime": "1987-08-27T00:00:00Z", "chargedTime": "1981-02-25T00:00:00Z", "createdTime": "1972-12-30T00:00:00Z", "currency": {"currencyCode": "8ZJFga6qXT56186a", "currencySymbol": "DmZpx6FpqFAR1FP2", "currencyType": "VIRTUAL", "decimals": 1, "namespace": "DxqukQGmZ8QPR4rr"}, "customParameters": {"Bu0xMLSZM2reG0eU": {}, "sKe4gH8U04S5FCpm": {}, "YeCJwMPHx5qbq2es": {}}, "extOrderNo": "6TWDRr2bTPUxXfvs", "extTxId": "OwNGBX5w0CKM4KgS", "extUserId": "aTFkYqyDBVeKhVWl", "issuedAt": "1974-01-26T00:00:00Z", "metadata": {"MI2a4HuuQiMf3ZtS": "RaKTvnYQcQK3OLU5", "xNeaLjRoNMmfyuSu": "gV63aIt0NDFEcKEQ", "axvtIGC9xYvHbX0p": "twZqHLOEqFcFlBmz"}, "namespace": "nrLziwCnnibCjn2u", "nonceStr": "xoSkuKry9iZZvtre", "paymentData": {"discountAmount": 49, "discountCode": "xUblp0GJFHhDBbjd", "subtotalPrice": 41, "tax": 29, "totalPrice": 37}, "paymentMethod": "GvyLZGyV2nNIKGyV", "paymentMethodFee": 1, "paymentOrderNo": "4yKJUPzM18zammJN", "paymentProvider": "CHECKOUT", "paymentProviderFee": 5, "paymentStationUrl": "hBPiRxSSC369UVGT", "price": 27, "refundedTime": "1992-06-06T00:00:00Z", "salesTax": 84, "sandbox": true, "sku": "e3QpvyaquevE8jhA", "status": "REFUNDED", "statusReason": "vnj5Ut4YTxIBMay1", "subscriptionId": "sHQoxlbhfnh1larF", "subtotalPrice": 62, "targetNamespace": "cM0OoFV93hG5GVHr", "targetUserId": "cfGpWAuflVB1opvS", "tax": 95, "totalPrice": 26, "totalTax": 5, "txEndTime": "1986-02-18T00:00:00Z", "type": "0K7Y5bCch6ur33Ft", "userId": "hZ0FOWCXy70cM2iJ", "vat": 40}' \
    'us5bsovjmmxHjjlq' \
    'uESAZpAC3MEgBrVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'ProcessUserOrderNotification' test.out

#- 310 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'oMCPYZARtb3TsS5j' \
    'OBRYgnvYu1vzXsMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'DownloadUserOrderReceipt' test.out

#- 311 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "43ycE5A2fFKAWLe4", "currencyNamespace": "5nohGKrvpCUuClhT", "customParameters": {"nLjG2riY5IlAkHgx": {}, "sULSOBCWJH9jh3zB": {}, "9JEYLPl0Rjsq0yRu": {}}, "description": "QRarSVoIleZ7Ptbb", "extOrderNo": "criinQEr7oILTomz", "extUserId": "VEdqAFGjuRaB4ccM", "itemType": "EXTENSION", "language": "jRi_DYoZ-Qe", "metadata": {"vd6is3iMkUYXGJ52": "LhrcYmNqU8FNr2Sf", "2vnHOZhdmTd8ENVR": "ZH8lmeTjzHxgwKaM", "jUptGDH129SPAGK8": "QxsXGgAK3QR9g0C7"}, "notifyUrl": "nE1t58LdpQQXSvH7", "omitNotification": false, "platform": "9HDayb3pUN53xwUD", "price": 20, "recurringPaymentOrderNo": "23II0TEDjWcIzfsS", "region": "rF9JBbs3ioKOVcrf", "returnUrl": "hki2j4K5qHkvYSU2", "sandbox": false, "sku": "Qy5mWp1i7XAgvpl6", "subscriptionId": "VM46gEFqwJcySobY", "title": "FsOpqr85xVvxj351"}' \
    'm51uwOolqmdu4KlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'CreateUserPaymentOrder' test.out

#- 312 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "Lptx5DKFWYNaRNbz"}' \
    'pFsjJLszOiHFs5xA' \
    'Vg39H5hnoP20tlph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'RefundUserPaymentOrder' test.out

#- 313 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'ew85KPyj4EGRMQTe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GetUserPlatformAccountClosureHistories' test.out

#- 314 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "DUODYJlL3GEb7CgX", "orderNo": "WeXJrzNrt0fkjelr"}' \
    '7hVgkvQdto2PuC14' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'ApplyUserRedemption' test.out

#- 315 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"Lu2G4Mw4Mo4TirGD": {}, "Z6OUYrf6N5BjG6bE": {}, "LZwjEmKgZXlgbV3d": {}}, "reason": "BwrK8hpKlmw63co2", "requestId": "erbchkQ7n0C9lJb5", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Qcrmp46NHHKuQExW", "namespace": "orl4PYKJ1GJKlZ26"}, "entitlement": {"entitlementId": "mxx5rFWCDjFeol1R"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "gL74DNNIekar0ZUa", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 36, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "V8WpFG2gRMkdKgCu", "namespace": "xFa4ix8vdZvwAMOm"}, "entitlement": {"entitlementId": "TtBEJjCyABy7DKD8"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "3wae7z4E6bRC4ufn", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 39, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "u1OaoVmtgO5YP56V", "namespace": "ohkMQrBSOet1EcW3"}, "entitlement": {"entitlementId": "bKxXuYOn0ULO8bwi"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "Fpz174OkRp3BkdVb", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 13, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "rZPytIR58rTLNpt4"}' \
    'RpqpKk9toELRS24c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'DoRevocation' test.out

#- 316 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "Mw2Lh6XTFr1d0v5M", "payload": {"iCVrY2QOMJmNbAv9": {}, "VCU7hdDbGzcJKa1w": {}, "sM434xCGXTsh5xyd": {}}, "scid": "eZADSKQFv0tnP05L", "sessionTemplateName": "7Nwx1i8sHEbX4mId"}' \
    'omBVyorRK73vbWSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'RegisterXblSessions' test.out

#- 317 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'BzkiEHyJEOg3iIjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'QueryUserSubscriptions' test.out

#- 318 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '3AAg7WG2eTsmDaTz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetUserSubscriptionActivities' test.out

#- 319 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 25, "itemId": "OOqU4lxwyKbYKZdZ", "language": "vXUVezIt3HezhSE8", "reason": "IGOaRsievm4IDxtF", "region": "Xsff5uksqDpH01I9", "source": "KImkc3YwK5J3GyOQ"}' \
    'JLupcfcMQlt7ssE0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PlatformSubscribeSubscription' test.out

#- 320 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'BVP1MHJQhmZHHktl' \
    'LrVbhm9d4y2SbI0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 321 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'O1ououcz4taACOl0' \
    '97nqfMF4iGEw5Ehh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetUserSubscription' test.out

#- 322 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'lxYtAWr3elzD6WKs' \
    'CrHf4vU4AqkG2jU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'DeleteUserSubscription' test.out

#- 323 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "cOou9G8lXxC3R0xI"}' \
    'fzLRFel1aMfEV5Zv' \
    'vwEDVOZ5VOwnn6Mr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'CancelSubscription' test.out

#- 324 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 61, "reason": "OAiZC06KMQoJCvcz"}' \
    'bpTe8wnvbAKMlJZv' \
    'UxYzYBSzriljJODa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GrantDaysToSubscription' test.out

#- 325 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'ZNFJFbzIchkAZmUv' \
    'iJbcnsW6uK889Ccm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionBillingHistories' test.out

#- 326 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "0VWwNdNaPLrz9N2o"}, "authorisedTime": "1993-05-08T00:00:00Z", "chargebackReversedTime": "1982-06-14T00:00:00Z", "chargebackTime": "1991-01-28T00:00:00Z", "chargedTime": "1999-10-07T00:00:00Z", "createdTime": "1982-06-08T00:00:00Z", "currency": {"currencyCode": "7bzAMbnc0ESgND3B", "currencySymbol": "zn0RXiwLSoaZygiL", "currencyType": "REAL", "decimals": 7, "namespace": "FgkytfX1NqG3h3im"}, "customParameters": {"EWxUgMEW1S9JMbrm": {}, "E7zBsX3PYLNcayR3": {}, "4iibMmlb6vlF1mVr": {}}, "extOrderNo": "cAyqXXnKEtSQkLh1", "extTxId": "0xq2zgtaigOB2XWL", "extUserId": "XBkH6l2KW0sSf0vJ", "issuedAt": "1993-06-29T00:00:00Z", "metadata": {"3l5sWDcfVxx8PSja": "mcbAWAUiz3UhK7hY", "9Xv4bnujVOhaDvf3": "evXo0m3jJ0xtenPX", "W0Eog3qNqoLr5uxN": "WDT3hlTaFfn4ThPY"}, "namespace": "3oU02EfGsDjENbnY", "nonceStr": "SDYXgkcUGG5hRGIR", "paymentData": {"discountAmount": 38, "discountCode": "oupmMfATapsn4uvJ", "subtotalPrice": 1, "tax": 38, "totalPrice": 56}, "paymentMethod": "WP4dql0EDA4cU4Ws", "paymentMethodFee": 41, "paymentOrderNo": "iKmmlpHUD2h7I7Ub", "paymentProvider": "WALLET", "paymentProviderFee": 81, "paymentStationUrl": "WUdPJvJivl1uU4DM", "price": 47, "refundedTime": "1985-01-23T00:00:00Z", "salesTax": 93, "sandbox": false, "sku": "6quy9PsI3dx75GAW", "status": "CHARGEBACK_REVERSED", "statusReason": "PboL66XhyfKhLtqZ", "subscriptionId": "R2r4RfVOg9ZWFBw7", "subtotalPrice": 94, "targetNamespace": "Q8WC3iZ6amfE0NHQ", "targetUserId": "zAvmPZRWnKIfYW2k", "tax": 84, "totalPrice": 61, "totalTax": 61, "txEndTime": "1991-08-08T00:00:00Z", "type": "wWqOZUVxd7bZpS2i", "userId": "4gNvHnKuaNhVEaIW", "vat": 63}' \
    'LhwHqc9mwHFQ3JQt' \
    'pRpQVAOexmqWb9l5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'ProcessUserSubscriptionNotification' test.out

#- 327 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 50, "orderNo": "M4wpXhdaJDB3MXGM"}' \
    'rRfpSxf1BnhjtAik' \
    'WfrrIadsWMmGapPU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AcquireUserTicket' test.out

#- 328 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'enPlT7QiPDEUKBKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'QueryUserCurrencyWallets' test.out

#- 329 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": true, "amount": 47, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"qA4MSD0izLTURYUz": {}, "EglKz4HU03X04Oxv": {}, "ZytaM4c4qTIV7vRV": {}}, "reason": "6x146gCIrSkEiZX9"}' \
    'iHZkthOUUtPBx2Kq' \
    't9eEQQ5qXZd41KiS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'DebitUserWalletByCurrencyCode' test.out

#- 330 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'lLVmN9KSbiFMGQMe' \
    'wQlUnkcE3UYV2aj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'ListUserCurrencyTransactions' test.out

#- 331 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 86, "debitBalanceSource": "TRADE", "metadata": {"L4PQGJJokFeKLbBQ": {}, "G16At6ZhNxuLFAW3": {}, "7EUwOviFJi304rwb": {}}, "reason": "ySnVTSdmqyftEYQl", "walletPlatform": "Oculus"}' \
    'xFFtZWlWKmQH3tI9' \
    'yHxuaa0zbT4NGP7X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CheckBalance' test.out

#- 332 CheckWallet
eval_tap 0 332 'CheckWallet # SKIP deprecated' test.out

#- 333 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 52, "expireAt": "1977-04-20T00:00:00Z", "metadata": {"gYPJQEukOcBtFyzW": {}, "1aKe15m4NorN2PP1": {}, "hXmALwnidAmiLFK5": {}}, "origin": "Steam", "reason": "ivHcRCMFbd8VDJQU", "source": "REFERRAL_BONUS"}' \
    'YrG5ANSRCXWy9C2o' \
    'M6ZVdGQt7ed5WKQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'CreditUserWallet' test.out

#- 334 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 22, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"zGQPBQoXpXVvDLul": {}, "elX30R2hPYkRArSf": {}, "ExoJMARmEC7Kyhtx": {}}, "reason": "4sYsq0CbA1NZZ58G", "walletPlatform": "Xbox"}' \
    'ryw8bfE6VA6HEvqN' \
    '7kX4VVVBS89UUbLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'DebitByWalletPlatform' test.out

#- 335 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 85, "metadata": {"ciimYDeDceMEtPkj": {}, "Yd9PNBi79WHorOJP": {}, "VoTCRV5enPlVeOc8": {}}, "walletPlatform": "Other"}' \
    'FoF3ValgZcNJSYGV' \
    'xi7ACWF50CSEIj98' \
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
    '{"displayOrder": 51, "localizations": {"cIRWjmJ81aRTbDoF": {"description": "bYLVqxK4NVV4KPvi", "localExt": {"1IDd9h3DkrqAqSqc": {}, "zq4VIqU80fLtA9Ei": {}, "7lNOS1nzf1JGU0Aq": {}}, "longDescription": "SFsHZyeSTGysStop", "title": "5Pu3KNnlg5aQvtZq"}, "OqyYqukNu3IiEoeA": {"description": "hwgfo77M8FJYRhM0", "localExt": {"dJBA4b3QbH3tCVfH": {}, "KGFiQvPyj1FCk4QM": {}, "8cZueXeYkC0oo7aT": {}}, "longDescription": "hH67UFGXrkXmmckO", "title": "jWhMg8bi8TTnK6au"}, "871df3bxo2XjwMhb": {"description": "caFVUwJJdMacFatm", "localExt": {"236DRyTtXhEPzahV": {}, "XYKrblYxb89S0lys": {}, "rMEifhjrwrJGqlmy": {}}, "longDescription": "y5EAtMaJvnkbpELC", "title": "CQEX7DlAjoDECQ1A"}}, "name": "Lpc5HR4Bp38TGeyf"}' \
    'WQESVLLj435Tsq6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'CreateView' test.out

#- 343 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'xQZBGiif91rgOdzA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'GetView' test.out

#- 344 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 90, "localizations": {"h3UQrHYlWFx0rb4e": {"description": "SExhChscwh8P6pej", "localExt": {"iRuUjCpBUL68KLWO": {}, "DgQ2gkEKZZQfGQJP": {}, "F97t3thMfA2pxZ7o": {}}, "longDescription": "cAtgWGRZGmCEL7Ia", "title": "qoDDiQ322lITGdQL"}, "jygzdLTAC4I9fqjf": {"description": "ISERaDf2LdzL9gMS", "localExt": {"ge48h6WQOLVImJDN": {}, "d0LTI6thfWyUKgXL": {}, "1FOiDEhOn3KuRxgk": {}}, "longDescription": "Dm8ALwZabFzMOJSq", "title": "Y46n4gzDKwFxpxbY"}, "vPCvcqkfowSDA1NK": {"description": "gkK4huDhAO8zhoVb", "localExt": {"nYs36USYZPYliicA": {}, "NHhXNQESalqimMMS": {}, "ci9xEExP9jva13uR": {}}, "longDescription": "Bo7tIuLW7T1d689k", "title": "zJWUj0IhAuSR15xU"}}, "name": "gtPxWpU3njfM3MLL"}' \
    'EwpsdD0knPNT7MZM' \
    '5TUkTp46Y9LTNtGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'UpdateView' test.out

#- 345 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '9WUqYyTxul6u3RuX' \
    'CCJSaYmbf4tEBMWA' \
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
    '{"enablePaidForVCExpiration": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'UpdateWalletConfig' test.out

#- 348 QueryWallets
eval_tap 0 348 'QueryWallets # SKIP deprecated' test.out

#- 349 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 38, "expireAt": "1989-01-12T00:00:00Z", "metadata": {"QruDfpefgGxk7jqf": {}, "RNpfhafmEghm1K6F": {}, "fhGrYgU3tXTmZUKa": {}}, "origin": "Other", "reason": "CZJjhP2aqyZJps39", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "iAJVwzchoABehdYv", "userIds": ["ksiAtxe6FuXv7wMn", "ItLay1ITOwqgFDt8", "J1sETgOrOLZUbQfz"]}, {"creditRequest": {"amount": 5, "expireAt": "1985-12-20T00:00:00Z", "metadata": {"7kt11ORM1E26jRox": {}, "5zjnyjrUk4JAORZP": {}, "ikticJyIfLP3Q4Sv": {}}, "origin": "System", "reason": "mMtkqbFFNrsD4cYw", "source": "REFUND"}, "currencyCode": "HRwGWuXrmWB81vpV", "userIds": ["qIziihTn1qm3WYY1", "nNLvfxMVPORdXWvs", "GZrPVAZ2ZLrDa1xp"]}, {"creditRequest": {"amount": 97, "expireAt": "1988-04-18T00:00:00Z", "metadata": {"nMGhT5oddK2chnQw": {}, "6dRB9aYleh3D2r0P": {}, "GvO0IGH5aAxTCbwp": {}}, "origin": "System", "reason": "43VZXjofWhPJjqdf", "source": "ACHIEVEMENT"}, "currencyCode": "RBiYws6MPqsSKy9S", "userIds": ["BW0FNQL1GY5CSEzZ", "sYw3NP5yL2qIrhx9", "0T4EDNbgre3EwhoE"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'BulkCredit' test.out

#- 350 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "saak9MNj0mKis5KQ", "request": {"allowOverdraft": false, "amount": 18, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"kZKg0DnxN18EaQxh": {}, "uWhajv4y7mpuDenM": {}, "HvCJxPolhQomjBGE": {}}, "reason": "e1V7Qe1VtpXfKrTU"}, "userIds": ["d4eK4cPdj9IYCmOO", "skIKiuKPVqNdfcba", "rmjmzkYQMLffgy1m"]}, {"currencyCode": "pc59V2qKD8lNq4hO", "request": {"allowOverdraft": false, "amount": 32, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"8OLoHszOIdSWIpaL": {}, "pZwnDkDw7Zrilk8Q": {}, "803RjC4wycgOIphh": {}}, "reason": "ydYZ7NEwrSsI3cSy"}, "userIds": ["bpVv23JUwrktKue5", "JGEsS9JnHfbeKOjY", "lw0m8Evy70CBhCst"]}, {"currencyCode": "kqyDQrrYVdLYuxdW", "request": {"allowOverdraft": true, "amount": 34, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"QcRaz03FZ9YTDWnl": {}, "XZ0fFMUOsM2D6XBE": {}, "fj5FBqjqhaVBjVf2": {}}, "reason": "bpiMDOiSWOpn2Cnq"}, "userIds": ["A45FZIkMYCCydNQh", "2jdN2MQUBknTnbrD", "gapqGnYl698VRGqR"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'BulkDebit' test.out

#- 351 GetWallet
eval_tap 0 351 'GetWallet # SKIP deprecated' test.out

#- 352 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '6I10HAKBM66Ig4h5' \
    'oxaA4ecsKGNruoLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncOrders' test.out

#- 353 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["9nJkDd0eeHTKcUcu", "jMld5XM0y0hA8uAI", "GJlt6gj5YD5232Ju"], "apiKey": "steSb6Rq9qeFktXe", "authoriseAsCapture": true, "blockedPaymentMethods": ["LAcITU9eaHQK6btD", "xqspEHxJ7HIZTmr9", "S9JzIoTTXKTR2Z9P"], "clientKey": "66amF5l35onaRK2k", "dropInSettings": "Ot01My99Nzxfq4jT", "liveEndpointUrlPrefix": "sNihBMEN4c79eXbU", "merchantAccount": "HmcvCVohS9cZeNhZ", "notificationHmacKey": "q7LKZkGycl5oKG2F", "notificationPassword": "V9jHnWg7dx8OSOJ9", "notificationUsername": "EFaxeDD8oVvwa87Y", "returnUrl": "rbanFFARSHMaf8ay", "settings": "qvkXvHfj2e4dQJLp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'TestAdyenConfig' test.out

#- 354 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "4KMIcg74z6KA7qyr", "privateKey": "dGdWMrPtZSPUCJfn", "publicKey": "rl3yUawIX1hRJUWY", "returnUrl": "F9TbCR4qGKgfhTaB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'TestAliPayConfig' test.out

#- 355 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "BmPDLRa6mzkhzzfq", "secretKey": "sSgeEUzauX2BiTkH"}' \
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
    '{"apiKey": "qFomi9qMKO7v11iT", "webhookSecretKey": "PPXFNeZn2vRR0Bfl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'TestNeonPayConfig' test.out

#- 358 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "NL8jjbsyHugFLvZc", "clientSecret": "TCEMbloZsrrwFc43", "returnUrl": "BEFzGxzXRz9ek9cT", "webHookId": "fklLvhREHXR9ZyR0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'TestPayPalConfig' test.out

#- 359 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["gYn2o0UsgX0kqqfQ", "GB8T8wu0Hyqob2hE", "KozEd4P5Auq8Vd4w"], "publishableKey": "6txSKD5jHXOt6NIh", "secretKey": "H6zSxo8OYohg3GlW", "webhookSecret": "72bmWwgdGm7u6jzl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TestStripeConfig' test.out

#- 360 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "05VURHB2aH1OBjSb", "key": "RTbA5ngX8nMk5seG", "mchid": "mbg5yaV5LtdtmXxu", "returnUrl": "bnK90It1WEpBd8W8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'TestWxPayConfig' test.out

#- 361 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "yL5eZhTnha9eiJsM", "flowCompletionUrl": "lXtygrzG2QUljK66", "merchantId": 30, "projectId": 90, "projectSecretKey": "Yn2c28hYjUXTNy1f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestXsollaConfig' test.out

#- 362 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'FdZFpgDZL5cgPFdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'GetPaymentMerchantConfig1' test.out

#- 363 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["kkemcXh4pNS6sh71", "nsTcYAqRmpQJ4iKs", "MRzrkq6bbxROX48x"], "apiKey": "3z6oqsbyJVZinLIV", "authoriseAsCapture": false, "blockedPaymentMethods": ["lQnLV2MdeaUWnsI5", "pKAFAjEaVGZXA8TH", "045L53XwwLUeWVf3"], "clientKey": "gL2yczZXxdsLxTWw", "dropInSettings": "VPr4U5NXmKyOdqZZ", "liveEndpointUrlPrefix": "YELSAPxBDIEPT2GA", "merchantAccount": "xOHInufNkRydUBWF", "notificationHmacKey": "1Nh9i59vuR6CcSzv", "notificationPassword": "Itwdqe2s7ffSpc1O", "notificationUsername": "xKg4Uf3g4nlTA2fr", "returnUrl": "zx3vb2Yn8hNVujI5", "settings": "u1ivKmyBtn9fNT1G"}' \
    'F6M2zSlbUz3WBHpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'UpdateAdyenConfig' test.out

#- 364 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'xzpkrOzs73jVKJex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestAdyenConfigById' test.out

#- 365 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "WAazbTZ8xcQZYsCE", "privateKey": "TX7eZJ4NO0fjNEPo", "publicKey": "yNa1H6pgh7vmRlxB", "returnUrl": "jIqeBpbdOgQElalE"}' \
    'bCZEVCPO4CPfrYjq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'UpdateAliPayConfig' test.out

#- 366 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'ZmUkz3Ex6g0nu0nD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestAliPayConfigById' test.out

#- 367 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "YcjNC6mnTmEkvGyg", "secretKey": "UoYZDyX1XgjjnrUV"}' \
    'MhDfw4eyyzx2XNh0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'UpdateCheckoutConfig' test.out

#- 368 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'EY35JVEQoV68grUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestCheckoutConfigById' test.out

#- 369 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "l9Qae3pK8C8CdtTw", "webhookSecretKey": "2J5ZQEu9BANVmy4K"}' \
    'LyKRCKGC9EJ56Tgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'UpdateNeonPayConfig' test.out

#- 370 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'ZfrBCM5NKhIaT1B5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'TestNeonPayConfigById' test.out

#- 371 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "Rkbc6yUtoHNPAPLp", "clientSecret": "eC92ROlmtwrNVp1h", "returnUrl": "q3dVtu3cDHRPMJTQ", "webHookId": "pwuvc5CHBSCrAHrY"}' \
    'QJhGB6o1O006Qlzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'UpdatePayPalConfig' test.out

#- 372 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'NpwlkXg5rRaOG40v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'TestPayPalConfigById' test.out

#- 373 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["wmux5X7eWoUz63g5", "ldLNvDsFRxvIWPhD", "HlguiwW43ftI0abv"], "publishableKey": "QQByahJAdStJsp8I", "secretKey": "8SvYIsj0HTDvNXyT", "webhookSecret": "xvPRnlFSQ6v7K73X"}' \
    'i2AB5OYFvqKEDfQU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdateStripeConfig' test.out

#- 374 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'OT5Zg2G1BWvZyqW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'TestStripeConfigById' test.out

#- 375 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "CStrsDUMYOj7smPu", "key": "H5BZrTsNJRR5uMT5", "mchid": "lIHTRyEidwdTqJoL", "returnUrl": "D9kVnRYM4lgdcOb3"}' \
    'Jx4X529dtXtK0d0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'UpdateWxPayConfig' test.out

#- 376 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'uIBjVZjOjrIUNPjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateWxPayConfigCert' test.out

#- 377 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'rpmdsCqI9mZu9LEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestWxPayConfigById' test.out

#- 378 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "OTaHP4LtwjLUYUJQ", "flowCompletionUrl": "k80tPmdgSg2KTH1u", "merchantId": 30, "projectId": 80, "projectSecretKey": "BUpdqwNpqsh9jEIn"}' \
    'UNjjzDzEs7bfi9Y5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdateXsollaConfig' test.out

#- 379 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'qNyFFoN9kFG7qVot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'TestXsollaConfigById' test.out

#- 380 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    'E7xqyfwWmTGhwyWJ' \
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
    '{"aggregate": "ADYEN", "namespace": "EAB7kGxNwO0Z3aq4", "region": "k3vORHgbQI9EqFrh", "sandboxTaxJarApiToken": "z872allb2jaRoKBx", "specials": ["WXPAY", "WALLET", "ADYEN"], "taxJarApiToken": "nu6Mjx3XgwCS1yYF", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
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
    '{"aggregate": "XSOLLA", "namespace": "fcV7jvya0krMPGaf", "region": "hhKkgPI2HTPdp4vX", "sandboxTaxJarApiToken": "IxOt6CxiNDALftVY", "specials": ["WXPAY", "XSOLLA", "NEONPAY"], "taxJarApiToken": "4wbgjwLQ0g8wHSHj", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    '0Ww9cX9qD3up8zSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'UpdatePaymentProviderConfig' test.out

#- 387 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'bSAJ6bSZOsVSW0yf' \
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
    '{"sandboxTaxJarApiToken": "hrPlOVRke0Rw0rMO", "taxJarApiToken": "zAoqZ9f1EMlA0TgP", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ICbL0NSbXYXl80IX": "a09qvdnZbUJ9uSIJ", "AuvbRoyVKQWhRCa4": "MeqaWAGntKi5Vcfd", "JHSQ99MzsmCz9csP": "D3mAixnTRCntYAOh"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'UpdatePaymentTaxConfig' test.out

#- 390 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'APz9lCMI8Jae96k6' \
    'wPIbIRIjiYukur4i' \
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
    'Ehlcmn3nMM88ZHro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetCategory' test.out

#- 394 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'UTLxsZkcJy594Buk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetChildCategories' test.out

#- 395 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'gYrUkqKLhOtCoMjj' \
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
    'EPICGAMES' \
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
    'NX74cqoA0EYfSvI7' \
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
    'eknvgQgx9Q8w3YQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetItemBySku' test.out

#- 403 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    '19mKC8Pt64Un3vbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetEstimatedPrice' test.out

#- 404 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'iPzqRlG9blKnrHst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicBulkGetItems' test.out

#- 405 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["ZmSBos9B4FBRgTZf", "5xSoV4NMrEB2tJwa", "8TyyPnCtNFzlKslV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicValidateItemPurchaseCondition' test.out

#- 406 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'xaomke2UPriXGZvs' \
    '3NmW1Oq88IVmlOYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicSearchItems' test.out

#- 407 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Pb1aUarkc4H54D1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetApp' test.out

#- 408 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'SJ3cWczEEGO3c34u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemDynamicData' test.out

#- 409 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'FmlM5vFocITDTP5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItem' test.out

#- 410 GetPaymentCustomization
eval_tap 0 410 'GetPaymentCustomization # SKIP deprecated' test.out

#- 411 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "BOko0gsrX5YmIHaE", "successUrl": "juL7g0PIjLnAoNjz"}, "paymentOrderNo": "CHCUKdVx6o2rdsiM", "paymentProvider": "XSOLLA", "returnUrl": "YM65VLZiKm15hez2", "ui": "MgriZ60A9qKACSJn", "zipCode": "rZAWDQGJdqaQ6yjA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentUrl' test.out

#- 412 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'OKmxscQRCmbWTm1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetPaymentMethods' test.out

#- 413 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'RgpzXRHuGgWoSnSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUnpaidPaymentOrder' test.out

#- 414 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "Eo0dL02zFIdAPaag"}' \
    'hTcAcuTSz8tViSRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'Pay' test.out

#- 415 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'KzwWqYcgoQp44IwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCheckPaymentOrderPaidStatus' test.out

#- 416 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'uGKoDDkN6vSK5KlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'GetPaymentPublicConfig' test.out

#- 417 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'CrFmKMrNHOU25Bqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetQRCode' test.out

#- 418 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'u3c7SadVYWuZYb5a' \
    'zP3Bn1T6t1Gtc06f' \
    'XSOLLA' \
    'KZvM4WSz7P7y5q6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicNormalizePaymentReturnUrl' test.out

#- 419 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'DaCx8hxTiqpntZvR' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'GetPaymentTaxValue' test.out

#- 420 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'afvHNmSOYNlojMWE' \
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
    'frT6ZPygSkfhXyyk' \
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
    'clGUJ6YBDI6H0BLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 426 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'MQNcUFUuoIPjHtjl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 427 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'sAVWEExJQvJmELMA' \
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
    '{"gameId": "89ixWjkF5JwpR9Zt", "language": "ql", "region": "wk7ORkQcyu5lxJ66"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'SyncTwitchDropsEntitlement' test.out

#- 430 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'HGJ8Ih3lT8pzoI46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetMyWallet' test.out

#- 431 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'PcpuwiYC0cysoxUG' \
    --body '{"epicGamesJwtToken": "XNjS5quHgrhtzk9E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'SyncEpicGameDLC' test.out

#- 432 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    '9cWWrZXa2EG94tgr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'SyncOculusDLC' test.out

#- 433 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'GpAyKwLIbU47jEqD' \
    --body '{"serviceLabel": 72}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicSyncPsnDlcInventory' test.out

#- 434 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'mDZyNmi9Nee8E16C' \
    --body '{"serviceLabels": [73, 34, 95]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 435 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "AnLORg2DXpK4Oh0D", "steamId": "Uc9D8rncloMb1yET"}' \
    'gQxGUEwv8hzsmReJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'SyncSteamDLC' test.out

#- 436 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '5mzZVaR7dmubH0qA' \
    --body '{"xstsToken": "uhWzVV19I9lRlaYw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'SyncXboxDLC' test.out

#- 437 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'p4MNvBgT09Pvx7f7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicQueryUserEntitlements' test.out

#- 438 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'SN0lAsIrtTkAPhRs' \
    'CrtV0KHq6Vsfzrla' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserAppEntitlementByAppId' test.out

#- 439 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'PzFVXIZH0z8HSYc2' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicQueryUserEntitlementsByAppType' test.out

#- 440 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'UmcszJVLPq9854qs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetUserEntitlementsByIds' test.out

#- 441 PublicGetUserEntitlementByItemId
eval_tap 0 441 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 442 PublicGetUserEntitlementBySku
eval_tap 0 442 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 443 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'jR0aEzhzFlD1uglE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicUserEntitlementHistory' test.out

#- 444 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'n1NwYqSpioGwh9SW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicExistsAnyUserActiveEntitlement' test.out

#- 445 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'xNzQ3DzIEearFrFM' \
    'Ieo9PYRTxSprB0Bt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 446 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'uiJEqmbaRx6F3iux' \
    '9udWaDYHSt1EEifn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 447 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'uSTtCN8i2tS7rAMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 448 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'xwXuiaHCNLmnlRPS' \
    'tXhqg4XeI32fETDP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 449 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'QVe026c9WrAxnE6M' \
    '2ryxqcxkHbchAPo9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlement' test.out

#- 450 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["FaoUMm7qtHKySXXt", "UEByVbF44ZXRI1UU", "4mMQOT2uy3CoHMYJ"], "requestId": "NBA3ZNRQrb2Dz3s6", "useCount": 20}' \
    'mOtCi7uw6EucgA75' \
    'jV5cXedykx4piMtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicConsumeUserEntitlement' test.out

#- 451 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "Yep4qMEijH07e7HJ", "useCount": 39}' \
    'YRRVlqfGGWhPklPu' \
    'T3em9Iz42YFoIyM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicSellUserEntitlement' test.out

#- 452 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 68}' \
    'Q307TKpWz4d2uiES' \
    's0ypsuzcbl4Dtn32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicSplitUserEntitlement' test.out

#- 453 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "tNBisbkvUfmhkAHd", "metadata": {"operationSource": "INVENTORY"}, "useCount": 60}' \
    'EhBUnAibqWQYaiea' \
    'sz9kvrFaaYiZO9ui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicTransferUserEntitlement' test.out

#- 454 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "l887oHlefkOBCLDC", "language": "vVgS_YeVX_mE", "region": "POY5Hn3skPtxMwqA"}' \
    'HjAkfGd2BO7RPYaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicRedeemCode' test.out

#- 455 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": true, "language": "cKnk", "productId": "O0XbcSowirO9ad7U", "receiptData": "JNTw4TVlSOA7hqkU", "region": "zpJrfvCl5rW530yM", "transactionId": "jnntV6lxz46lnMr9"}' \
    'kgHzpU1KgX7txYFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicFulfillAppleIAPItem' test.out

#- 456 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'qqFEhELz081Q4jTs' \
    --body '{"epicGamesJwtToken": "ZOfifLFOXzxoLgAv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'SyncEpicGamesInventory' test.out

#- 457 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": false, "language": "CkJ_DYQE-sT", "orderId": "2SxGw0BBGpL3uAig", "packageName": "OFar5VeA5QE4kXQF", "productId": "ZRL6YQzBY5q2zpch", "purchaseTime": 91, "purchaseToken": "Kr2hhzSgEVDTchtw", "region": "hQp2LAjJuLgIQF5k", "subscriptionPurchase": true}' \
    'UjrmuhxZB5Ajldy6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicFulfillGoogleIAPItem' test.out

#- 458 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    '4tvczW9hkNRJKsIQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'SyncOculusConsumableEntitlements' test.out

#- 459 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'O6Rf71ujkaWDqUU6' \
    --body '{"currencyCode": "27KpJnSnPzwlgrOi", "price": 0.4063818669941114, "productId": "TeAjnOyPNIVw3l4l", "serviceLabel": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicReconcilePlayStationStore' test.out

#- 460 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "8ef430plDAbJOGJn", "price": 0.5590769608538605, "productId": "SwkoUkEDT2ZbXq2j", "serviceLabels": [96, 15, 23]}' \
    '2YYuziEAHUJuW7Y2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 461 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "KJEH6UuvOmu2ptkK", "currencyCode": "Py0GiWFWBkFOuRT7", "language": "JLV_Wq", "price": 0.4489440926187951, "productId": "xBCUBoebiWj66Ddv", "region": "qlwMH6jkWzxyWSdu", "steamId": "ldWnWT6iqbevlVe4"}' \
    'ZffXJQ3ETXfQnFfO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'SyncSteamInventory' test.out

#- 462 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'mDYHeD3I494uw3Rd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'SyncSteamAbnormalTransaction' test.out

#- 463 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "IA2wJ5cEseHkDEsL"}' \
    'lMzlivuvvLVhp4pv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'SyncSteamIAPByTransaction' test.out

#- 464 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'APPLE' \
    'GtP1pKtlm5hUGLvZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicQueryUserThirdPartySubscription' test.out

#- 465 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "iKzCHyQRSjODCVkX", "language": "uKfQ", "region": "nM82Js3MYpXMKKRn"}' \
    'nXfC8iy9QcGEKMT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'SyncTwitchDropsEntitlement1' test.out

#- 466 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'TWw1dhh6B7sXyB9Q' \
    --body '{"currencyCode": "dOnACUxcSQbRzuOG", "price": 0.6835100484085764, "productId": "IMxFKiXXSc289Q3x", "xstsToken": "FWRYnNSH7Ya78hgQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'SyncXboxInventory' test.out

#- 467 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'eKzeNXadROUnBOxt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicQueryUserOrders' test.out

#- 468 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "wqDhMvblD46siktY", "discountCodes": ["KR96tudVVKTXkDOi", "3run76w7sT6JiAfp", "X4HICm1vTtS6sumf"], "discountedPrice": 36, "ext": {"MAqnV7TlTDpCts9e": {}, "LzVbQmMiR5z2zAUS": {}, "TeMo4h6vddaV7tlG": {}}, "itemId": "mSltmTF1Rc4FRD9F", "language": "mga", "price": 31, "quantity": 29, "region": "bZYwmB6mjB4WLkFE", "returnUrl": "bz1aaXClnbKhW1gH", "sectionId": "j8siRtfLBrOtMCUf"}' \
    'RqPgqjqL5sOSWb72' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicCreateUserOrder' test.out

#- 469 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "ObZi7fW369P70k7N", "discountCodes": ["WSskBCzJpMLgGkyO", "Udt4mzjhwLhUrgmZ", "NHpDHS67dthQsFwN"], "discountedPrice": 80, "itemId": "5XJnyM5TvM5NJ9UF", "price": 29, "quantity": 99}' \
    'efZdeND5EahSZeod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicPreviewOrderPrice' test.out

#- 470 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'ABnaVuUHHBtfHmq5' \
    'd54tGJLHnnQAM0DR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicGetUserOrder' test.out

#- 471 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'Ecq6d87tbCcUGlTs' \
    'ltY7Kk1OunGWLmRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'PublicCancelUserOrder' test.out

#- 472 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'Gb3tEZUvioSYTzxb' \
    'ogRXHBHxz5rKcxfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicGetUserOrderHistories' test.out

#- 473 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'G9prJLxAKKoiu3OV' \
    'xYsGgVzsIOyFrUNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'PublicDownloadUserOrderReceipt' test.out

#- 474 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'TGPDgO1DYPpkUsIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicGetPaymentAccounts' test.out

#- 475 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'AMvQ0TYyioYSsqvi' \
    'paypal' \
    'TQnxnon3dB05wGQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'PublicDeletePaymentAccount' test.out

#- 476 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'x86tv0QClmxWgu3Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'PublicListActiveSections' test.out

#- 477 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'fhTr7idEkKSnDGue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserSubscriptions' test.out

#- 478 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "6g9jqZCmyvD6hehE", "itemId": "vadSH1guIXpIMMb5", "language": "Od_xMYb_195", "region": "pTtsmzJtuOWKZOaS", "returnUrl": "MJHAxVRHDzHpHJ0b", "source": "dnZomYJoJJTExoot"}' \
    'NzMPSXZiLgCh92m9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicSubscribeSubscription' test.out

#- 479 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'XCmBpiOV9NIi9V27' \
    '0K70e3tmMl0aJwJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 480 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'aCvge5OzI8XNrSx9' \
    'JCxN4prJ1YNwelnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserSubscription' test.out

#- 481 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'OCI9YnUiShlx9Pk0' \
    '8ti5dm4vsmWwxeV5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicChangeSubscriptionBillingAccount' test.out

#- 482 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "WNf2XD8kjryYdmc2"}' \
    'XymIObjRrxucZTOt' \
    'fIlJrMOPwdUCtzH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicCancelSubscription' test.out

#- 483 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'oI7IMo6jYsbXIs1j' \
    '2kdfY9jVoPTTfSop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicGetUserSubscriptionBillingHistories' test.out

#- 484 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'AH3k7WRbBnExLSlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicListViews' test.out

#- 485 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'BkIhkcYsdlko7aPa' \
    'qrCwlwxAYSodwJnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicGetWallet' test.out

#- 486 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ozMWXk0IafEeZiiy' \
    'd7fv9BMDJjJPbrYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'PublicListUserWalletTransactions' test.out

#- 487 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'OCULUS' \
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
    'qCS4e1g0qaRNKlYR' \
    --body '{"itemIds": ["ZvjD4HQB0YyrKNt7", "vK3ElLq6qbXSAmGm", "J8hHafpdFCVQ33tE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 491 'ExportStore1' test.out

#- 492 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "9ZMZ7dDUb3xQHAKa", "entitlementOrigin": "Oculus", "metadata": {"3oxkWkWZM6QqbW0t": {}, "691SXQ1p0o3UycSZ": {}, "QVy88swSqo64vyAZ": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "dK1mqL00vgrlsz3i", "namespace": "DMttQb0e0hIOG3ck"}, "item": {"itemId": "0l8mOK0kpUyeNZKy", "itemName": "2iBQotCRSvH1Da6p", "itemSku": "h8feFAQdPnACAmti", "itemType": "WRzvYJUsYMz1jDEd"}, "quantity": 48, "type": "CURRENCY"}, {"currency": {"currencyCode": "hs9Fxl7ZjEYGeuqo", "namespace": "7IFvww79F27fof6S"}, "item": {"itemId": "1Rehi3ZZ7d9vk8P3", "itemName": "v6DcFUnX1vw4uhVC", "itemSku": "qrs11e0iPV2GPJGN", "itemType": "NZWYwungysf4SyQN"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "q4snlpfQTa0wBlJw", "namespace": "b8gc7EIBJIKoubLJ"}, "item": {"itemId": "P5UIfhGfCHQ5GTdj", "itemName": "vw8KQZ00gJM1Cfnj", "itemSku": "dHJX3yCxhko4vfBf", "itemType": "r53TVizk09fyHgSb"}, "quantity": 71, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "kTPschfQ2CAJpaYZ"}' \
    '5XmkLfftq8TtIM2P' \
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
    'LDNr5OkNSeTuk5fL' \
    --body '{"transactionId": "c0rovY832Umv7u1Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'V2PublicFulfillAppleIAPItem' test.out

#- 497 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 24, "endDate": "1971-04-02T00:00:00Z", "entitlementCollectionId": "ehrat7hpJzqcjS6d", "entitlementOrigin": "Twitch", "itemId": "uUk280BxAxexZB4E", "itemSku": "ErArsCARmVlNfne3", "language": "5Jx8S9YCiABOEkZ1", "metadata": {"hv7zx2tjZUmB7W0E": {}, "hLgAiPA3yIE2iRHD": {}, "V6KTBcyqAgjLhYxq": {}}, "orderNo": "BLkJqCtqM0OxYqt9", "origin": "Oculus", "quantity": 78, "region": "a55fBFv8Nk1GKlkl", "source": "OTHER", "startDate": "1977-11-29T00:00:00Z", "storeId": "c70J3JNzhUB7BaWa"}, {"duration": 59, "endDate": "1988-06-24T00:00:00Z", "entitlementCollectionId": "KktfQ6izlwJt4IiN", "entitlementOrigin": "Steam", "itemId": "9ChLggpl5I3N3i0l", "itemSku": "lxVU5WZTOvW4MiVu", "language": "m8HuuXKL0kws0yM1", "metadata": {"jQk5f74cSSa7EU1y": {}, "3J3QuKCb4yqkKnar": {}, "Ymr2wqi2JJzdauaQ": {}}, "orderNo": "cAC3TQnKBUx6yHTl", "origin": "IOS", "quantity": 78, "region": "2gTbFgW9MW8EHRDK", "source": "IAP", "startDate": "1987-07-15T00:00:00Z", "storeId": "2uwnqkgfbPNlAR8Q"}, {"duration": 67, "endDate": "1974-06-08T00:00:00Z", "entitlementCollectionId": "fvyFFGnP0iW9zzvY", "entitlementOrigin": "Playstation", "itemId": "ngcFk1baeHVAJRjp", "itemSku": "W2of6fPBUudpBxjd", "language": "BKusUy7JasypzINO", "metadata": {"8hMgCgu7sNK6cJUj": {}, "06aJReifO1oQKqIL": {}, "ibtG6MbnP79hl3Kb": {}}, "orderNo": "1CkI9RZfaGRAD0VB", "origin": "Twitch", "quantity": 33, "region": "djdGbRmu0NOO1EEk", "source": "EXPIRATION", "startDate": "1976-12-18T00:00:00Z", "storeId": "PqQwgme45avoS9lA"}]}' \
    'ap4MA8Sr2sPgHtfv' \
    '4c99ySk8XEGR8Q2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'FulfillItemsV3' test.out

#- 498 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'btJj6xqptF3qXZXF' \
    'qaZPqlvbjyBz6Abt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 498 'RetryFulfillItemsV3' test.out

#- 499 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'Yb7GaKj6QP6jhS3R' \
    'Z15D9RU0J0HlMUaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 499 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
