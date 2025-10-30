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
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-by-item-ids --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "LF6M4lNa4JUMSHNg", "endDate": "1979-06-15T00:00:00Z", "grantedCode": "RqCV7usamANkZlOX", "itemId": "9Sfo95HgXqKhTPkw", "itemNamespace": "fLM9uSybRzWek2gZ", "language": "Ksw-SUOB", "metadata": {"c6bWvgpVyW9dD1kO": {}, "mvrAejcq2LgkQuaS": {}, "7RBx3vim02jBOxrZ": {}}, "origin": "Steam", "quantity": 100, "region": "yvpcLYOWA8NjxOna", "source": "REFERRAL_BONUS", "startDate": "1980-04-30T00:00:00Z", "storeId": "9Sk4lq2faBcAXXKl"}, {"collectionId": "hvyH8paOJtxqMPpc", "endDate": "1995-09-19T00:00:00Z", "grantedCode": "fRwNj547fH0XrKED", "itemId": "pEY8VnocGAjci0V3", "itemNamespace": "tBf2jnHGKXphn50c", "language": "Uqog-DJnH", "metadata": {"qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}, "oGH1XEfY6QAYn6WQ": {}}, "origin": "Playstation", "quantity": 95, "region": "Y6vSkVFWdsbYuVEG", "source": "ACHIEVEMENT", "startDate": "1983-06-17T00:00:00Z", "storeId": "YheR3j5mNZ6vwv7K"}, {"collectionId": "8Asvt1j1Rx59hesN", "endDate": "1995-11-08T00:00:00Z", "grantedCode": "y2NvZ85DDKDAF8KD", "itemId": "sBZOuYQJ03BAHZ7c", "itemNamespace": "53q7akMpcmnnx6RV", "language": "RSK-WQ", "metadata": {"7aZK3h65hbN15zfQ": {}, "SfQrtfF3TQN0OcND": {}, "Lr36vzohZyjMQAg5": {}}, "origin": "Nintendo", "quantity": 69, "region": "PYhrLTyU8OhgfY9J", "source": "REWARD", "startDate": "1990-09-14T00:00:00Z", "storeId": "yvfvHEsJKQQewVLM"}], "userIds": ["affoflEIByYqeKN0", "meGelYF5wWaDhukU", "UoAnaRcYp7FUjfIG"]}' --login_with_auth "Bearer foo"
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
platform-update-oculus-iap-config '{"appId": "ryiEtOAbpeUNf26U", "appSecret": "qkCfgCUYBn2xaOBd", "webhookVerifyToken": "PF0JmX8qwU1cTuHH"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-list-oculus-subscription-groups --login_with_auth "Bearer foo"
platform-create-oculus-subscription-group --body '{"sku": "PB5S3DvPRCzBrVUx"}' --login_with_auth "Bearer foo"
platform-delete-oculus-subscription-group 'mDOj3cvRFaTC11W0' --login_with_auth "Bearer foo"
platform-list-oculus-subscription-group-tier 'TGTCm4fZWuk6pQxD' --login_with_auth "Bearer foo"
platform-add-tier-into-meta-quest-subscription-group --body '{"groupSku": "QpKqxLGeMvr9Tsvc", "sku": "MQ7dBsaIecRxIsZv"}' --login_with_auth "Bearer foo"
platform-delete-oculus-subscription-tier 'D6rmzVr5XT1Nxw0v' --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "1dMQ9Rrbk6C2cVWf", "backOfficeServerClientSecret": "6ttvbU1PO6ApCD2V", "enableStreamJob": false, "environment": "WhunElqZUodp3Iht", "streamName": "CSHy1ei1fIrPvfHn", "streamPartnerName": "RN06EjRwEQlNapJR"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "fk4f9Zcw1pEHAyNF", "backOfficeServerClientSecret": "xcVTKuAQTGh5BxjW", "enableStreamJob": false, "environment": "ozGoDtsUuYo5p8ED", "streamName": "5QZAufwNa8lzfjv9", "streamPartnerName": "oYMXMjlVHY1AHwF3"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "vGoav7MK0PcLnEkc", "env": "LIVE", "publisherAuthenticationKey": "VbMPimNhcZsU3VAd", "syncMode": "TRANSACTION"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "3GUS2amU7syGlElX", "clientSecret": "dEAOrVSnLocLVVYa", "organizationId": "mQc4wcG5nDBLJoJH"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": false, "entraAppClientId": "ZAAvKTH8MuqIg0Cz", "entraAppClientSecret": "kguwuJCW7EEFB67A", "entraTenantId": "ODbi9BzupBsFpYc7", "relyingPartyCert": "7GtRUcCFeY5g4XgB"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-abnormal-transactions --login_with_auth "Bearer foo"
platform-admin-get-steam-job-info --login_with_auth "Bearer foo"
platform-admin-reset-steam-job-time '{"env": "SANDBOX", "lastTime": "1999-01-08T00:00:00Z"}' --login_with_auth "Bearer foo"
platform-admin-refund-iap-order '0lnroQehMDli6t9u' --login_with_auth "Bearer foo"
platform-query-steam-report-histories --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'nQLYXxm09wpGAbpE' --login_with_auth "Bearer foo"
platform-download-invoice-details 'mDY9vLh3u6EDsUmr' 'V6kH4OotKwG3UC6X' 'CnnZxF8CmQr17W65' 'APP' '2TUvn95FhO7VW3mb' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'DVMDu87t0ldWf7iS' 'GIiKFtWtn4Yr2svK' 'M6pqLGZ0TBujELAU' 'SEASON' 'CQE1li3Bg7Jxc9pU' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "nZmvhidwCkZwqjYL", "targetItemId": "fTiCO1NDBvQvRPnA", "targetNamespace": "z4VzW0CpoBCbyJsF"}' '5IjF1c0W338HS6CB' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "gVRyihYNZ84CVhzi", "appType": "GAME", "baseAppId": "8HwSmvcvcDKF19yV", "boothName": "RafCjOuSYht83Adv", "categoryPath": "BaagTiRJ8daGTVX3", "clazz": "Bb7jlz5IfHgKjI9m", "displayOrder": 47, "entitlementType": "CONSUMABLE", "ext": {"SrN8jkIykR2zbaI6": {}, "PD7fEscShnGUGUtV": {}, "9GJ279GDbLNwjm3F": {}}, "features": ["bh4HtMlFgvh2Dp2S", "K0nnX2poMfZ1hDHt", "oiIPp1yvfAHS0VgL"], "flexible": true, "images": [{"as": "eDeRnVfPUa6xVVBc", "caption": "q3wZpFIYeAg79HcL", "height": 72, "imageUrl": "ILjkwW61duF87aUy", "smallImageUrl": "rdt4XSpWBAetsanz", "width": 34}, {"as": "nWbfRJtsB7cUQZ2Q", "caption": "UAxJrINPXppPNO3A", "height": 10, "imageUrl": "T2fSk3LL0calqxEe", "smallImageUrl": "wuGS469k2hG0WKt4", "width": 38}, {"as": "utjsQ4CrRb9gUCeV", "caption": "z7fWbZIdhevfZvyV", "height": 53, "imageUrl": "WeYeA9t2ENKKWrFt", "smallImageUrl": "HIi1CMgKAOG5iDcC", "width": 89}], "inventoryConfig": {"customAttributes": {"jq7sn8yreciPLfkV": {}, "yyJsbGpO6JgehDJx": {}, "EN7JlZc8LMq1o2jZ": {}}, "serverCustomAttributes": {"Wu4yA3r0u4q1bTHX": {}, "IjfJKyFlM0u1uuoV": {}, "dn9yVoSlKNchPHNL": {}}, "slotUsed": 44}, "itemId": "X3LLaGPGdqLE8Soh", "itemIds": ["hhuiTnJarYYkHBDd", "SzBXdxapwhd5IQYB", "QuxLvPuWYvE3fsNy"], "itemQty": {"9Z9OhxXvCp9y7fLD": 77, "qfCXnlUnqxT1WsRN": 79, "lcEPhMDFzjHZ3sIh": 52}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"HX6AgMep90AyyUJy": {"description": "AK5PRMRMwdvl0hv6", "localExt": {"g62GxBW2tQF5tkTj": {}, "gJaMYvNQOsDa4bkc": {}, "gepqtxjbrztee7QL": {}}, "longDescription": "TGAak7Kaol01DK97", "title": "D2xnik42miteR5eQ"}, "Ae1rzmmgqBPRmd6m": {"description": "O4oI8KDqebm83raN", "localExt": {"BJ5y7axEkvI4oxZE": {}, "DxGiBnNbn0zaf7Ca": {}, "OSlHXrUSA6sMJzA5": {}}, "longDescription": "mtqISQ83TTbtefXW", "title": "znDe4LQdXfFBii2R"}, "AMEX5RMjBFVZGYzQ": {"description": "qV8d9mDdUIoiIJFN", "localExt": {"xuNOmUSWw18T1IxV": {}, "WCxdvPL9e4P01vxP": {}, "8xj1LyEirURERnEM": {}}, "longDescription": "zpImW6sjAHyCK5tN", "title": "anGBrkzUvck3xTtm"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 55, "duration": 65, "endDate": "1985-11-11T00:00:00Z", "itemId": "gIs1Q2lzxl0yF5m7", "itemSku": "7TTh4gUoj8u2WRcL", "itemType": "iEtzVlnkflfn7pHY"}, {"count": 3, "duration": 64, "endDate": "1975-06-26T00:00:00Z", "itemId": "dl1q92m3iRlfnBAk", "itemSku": "0CwiAsR65yQ9ssuH", "itemType": "dGmxncCEr0Kcgeqz"}, {"count": 67, "duration": 82, "endDate": "1971-04-02T00:00:00Z", "itemId": "ruNB72HHMkjzyBB4", "itemSku": "UFKiaoV0VOem2yqP", "itemType": "sMFxKybPkbuS6x9c"}], "name": "LJ1APnNlsa2bRBr2", "odds": 0.9665867980327151, "type": "PROBABILITY_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 99, "duration": 23, "endDate": "1990-06-15T00:00:00Z", "itemId": "4jReteIMgzISomCs", "itemSku": "odJrhQW41q2OspCZ", "itemType": "bt3Uta5I0uGcL1ko"}, {"count": 51, "duration": 14, "endDate": "1988-11-09T00:00:00Z", "itemId": "jCH5olYLETRpABAm", "itemSku": "O2EGvJ4UMS93yOxN", "itemType": "InDByhnoluO6ti0Q"}, {"count": 85, "duration": 86, "endDate": "1999-07-29T00:00:00Z", "itemId": "ssiJ66OzOj84O6tg", "itemSku": "ohjtC7bzjPpucddX", "itemType": "J5zifF8y959anrNS"}], "name": "leywHbHig6IKWVZ7", "odds": 0.9589480216144757, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 8, "duration": 89, "endDate": "1996-08-23T00:00:00Z", "itemId": "dECaFGzfZ2hxcJ2F", "itemSku": "nemn7M23SzUo4hNB", "itemType": "Dh9ZFP1OW0nXOErQ"}, {"count": 85, "duration": 50, "endDate": "1993-12-26T00:00:00Z", "itemId": "4VsRoYIK69yg9ADC", "itemSku": "GiXaLs2xjHkinOD9", "itemType": "75nARHCmhNHSXuqI"}, {"count": 69, "duration": 38, "endDate": "1999-07-06T00:00:00Z", "itemId": "ahvxw9gwwhTnjN6w", "itemSku": "KZGW4y3f0R9s2knd", "itemType": "hhZhwAiLsZs4pmLD"}], "name": "IQch4IjDq9aT3qZy", "odds": 0.5606612483836112, "type": "REWARD", "weight": 35}], "rollFunction": "DEFAULT"}, "maxCount": 72, "maxCountPerUser": 100, "name": "LMQyMWzYQCAaPJgo", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 66, "endDate": "1996-10-16T00:00:00Z", "itemId": "wIc895ImqK6tVsaU", "itemSku": "q3stUh5J5Z9GiBiS", "itemType": "AylX5cS0IeHpWCug"}, {"count": 25, "duration": 1, "endDate": "1973-12-04T00:00:00Z", "itemId": "ytPfds1BYx0EaURy", "itemSku": "df8ZyyZeHAWGgJUb", "itemType": "UJRMbkcTglbU86Fy"}, {"count": 83, "duration": 84, "endDate": "1975-12-15T00:00:00Z", "itemId": "ApNHBVfNOURcjY3Y", "itemSku": "YT9oTynmfIuBWgJT", "itemType": "NFfM8M0IW4oe8KDg"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 11, "fixedTrialCycles": 48, "graceDays": 28}, "regionData": {"ZfAcNg14Ws8TIP1L": [{"currencyCode": "KiFQoLDvumfqrgSf", "currencyNamespace": "nx2h61X9dN1MGRXB", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1977-10-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1971-10-22T00:00:00Z", "expireAt": "1992-09-24T00:00:00Z", "price": 34, "purchaseAt": "1990-03-19T00:00:00Z", "trialPrice": 42}, {"currencyCode": "NLwvI8JdiY3RRiLi", "currencyNamespace": "lmOGF6dLLIeIVIjM", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1972-04-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1971-12-23T00:00:00Z", "expireAt": "1972-12-28T00:00:00Z", "price": 94, "purchaseAt": "1987-06-09T00:00:00Z", "trialPrice": 70}, {"currencyCode": "PZSTpPq3xjrElvvD", "currencyNamespace": "gw0ag7kSWE0Hiqm5", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1983-10-08T00:00:00Z", "expireAt": "1975-06-09T00:00:00Z", "price": 62, "purchaseAt": "1982-09-03T00:00:00Z", "trialPrice": 35}], "T8p4n4XCFkD1AJLC": [{"currencyCode": "wszbZxuHSgDOK8bj", "currencyNamespace": "oF7bL2635KbtZTGJ", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1979-07-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1975-04-02T00:00:00Z", "expireAt": "1986-10-09T00:00:00Z", "price": 56, "purchaseAt": "1984-10-23T00:00:00Z", "trialPrice": 80}, {"currencyCode": "tyTDSIM7mkmvZ7Cm", "currencyNamespace": "sh4US8o4jfMANPpm", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1972-04-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1977-03-12T00:00:00Z", "expireAt": "1977-08-23T00:00:00Z", "price": 23, "purchaseAt": "1983-04-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "uCCVuFjS1GC1d2b9", "currencyNamespace": "2B4vEgj3HOmhcWm4", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1996-01-30T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1976-03-30T00:00:00Z", "expireAt": "1993-07-28T00:00:00Z", "price": 64, "purchaseAt": "1982-11-19T00:00:00Z", "trialPrice": 7}], "IY9nMrBZo0lNUBDS": [{"currencyCode": "hHD32vvL28FPwTiX", "currencyNamespace": "fLcxDC9Ynd02mECI", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1973-10-13T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1975-08-21T00:00:00Z", "expireAt": "1988-05-12T00:00:00Z", "price": 40, "purchaseAt": "1997-08-03T00:00:00Z", "trialPrice": 61}, {"currencyCode": "HLLa31oQf7BULnZD", "currencyNamespace": "hutDM6BqguqD5xxG", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1985-05-01T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1974-06-15T00:00:00Z", "expireAt": "1996-04-13T00:00:00Z", "price": 42, "purchaseAt": "1994-10-20T00:00:00Z", "trialPrice": 30}, {"currencyCode": "Ue2znsqPzPkwCBo2", "currencyNamespace": "SwCUsTag4MLAo3m6", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1983-12-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-11-22T00:00:00Z", "expireAt": "1973-09-17T00:00:00Z", "price": 25, "purchaseAt": "1972-04-23T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "Onb1a9gMz0F2UBRm", "price": 78}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "mgNEJBhgGq5GIDhN", "stackable": true, "status": "ACTIVE", "tags": ["u2YVuOzhxHmnrrV9", "66szbCCf73IFbRkP", "SSITz4TjCrJHXGXk"], "targetCurrencyCode": "ZGWrZ05sxe6A6Rpm", "targetNamespace": "KDebNkylbynkgT9v", "thumbnailUrl": "ayLLiizac7Ge6zKJ", "useCount": 8}' 'OuksQJCiRFiZWwJ7' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'NrTb1XTB9YQzUJ9X' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'lYJ8BzP6EUmUXGM5' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'anIloyj9lhbvuQdW' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku '2jwKUckc794ryY91' --login_with_auth "Bearer foo"
platform-get-estimated-price 'lX8DD4MYXlrJ81lH' 'vv9rqvEoM8YmVjAk' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'O3HKsEp6KlqwW4dj' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'rexcbHdEtoQvpV34' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["4RctmTozCi8HeV6j", "balHmqBBfi7sSF5B", "oGiTCVsXsygWbjE2"]}' 'opXtdsJQeJ1too0q' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'vxphTLEEBGTtZyTj' --body '{"changes": [{"itemIdentities": ["dKNKgYazujsmSmyl", "T1YtxIq73aMb48jI", "Sd97KORRhxSWLWLN"], "itemIdentityType": "ITEM_ID", "regionData": {"k5UcPAGv6c1ESC6h": [{"currencyCode": "ZYTYZbzf5aANNNs5", "currencyNamespace": "kgSZZNUHbIT9szAp", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1996-03-25T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1978-11-27T00:00:00Z", "discountedPrice": 78, "expireAt": "1995-06-25T00:00:00Z", "price": 52, "purchaseAt": "1978-07-25T00:00:00Z", "trialPrice": 19}, {"currencyCode": "j5zFZeOCOR9NvBQZ", "currencyNamespace": "SJPOIKrRBrYVzi9u", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1999-05-04T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1997-06-18T00:00:00Z", "discountedPrice": 48, "expireAt": "1978-11-18T00:00:00Z", "price": 52, "purchaseAt": "1978-11-04T00:00:00Z", "trialPrice": 39}, {"currencyCode": "RH36bqS2oFY76PU1", "currencyNamespace": "AziBOHEAj1cT3u6Z", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1998-09-09T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1971-05-29T00:00:00Z", "discountedPrice": 56, "expireAt": "1994-10-17T00:00:00Z", "price": 65, "purchaseAt": "1973-08-02T00:00:00Z", "trialPrice": 27}], "0jvA54CSqZFDsO1s": [{"currencyCode": "kRjOU1SMfQVQa6bl", "currencyNamespace": "j9Rdd85bdYUumPKV", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1985-07-16T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1977-05-03T00:00:00Z", "discountedPrice": 92, "expireAt": "1972-01-22T00:00:00Z", "price": 21, "purchaseAt": "1998-06-21T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Qe0dHJfF6KIuvnRC", "currencyNamespace": "a9JktyBdxkZKrEWF", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1980-09-27T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-07-07T00:00:00Z", "discountedPrice": 14, "expireAt": "1975-05-26T00:00:00Z", "price": 17, "purchaseAt": "1980-03-10T00:00:00Z", "trialPrice": 46}, {"currencyCode": "OQAD77ci0vfWVZoR", "currencyNamespace": "RMPi57HyKKz5nyI6", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1977-07-20T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1981-11-23T00:00:00Z", "discountedPrice": 75, "expireAt": "1974-04-28T00:00:00Z", "price": 65, "purchaseAt": "1996-01-03T00:00:00Z", "trialPrice": 71}], "dgx1JgjC56pda3Yh": [{"currencyCode": "tQxpCYME6x21pdX2", "currencyNamespace": "QSPAd9sxoLnWGP1P", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1973-10-09T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1976-12-03T00:00:00Z", "discountedPrice": 77, "expireAt": "1992-02-26T00:00:00Z", "price": 42, "purchaseAt": "1972-06-28T00:00:00Z", "trialPrice": 9}, {"currencyCode": "HuYrGWDK41uMOC0m", "currencyNamespace": "RvSoaGk4ktF5wnJD", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-10-18T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1976-02-13T00:00:00Z", "discountedPrice": 17, "expireAt": "1974-07-25T00:00:00Z", "price": 24, "purchaseAt": "1972-11-06T00:00:00Z", "trialPrice": 57}, {"currencyCode": "M4xjfkNL4lU6jaGf", "currencyNamespace": "sD1cfswmeFpvtDte", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1978-03-29T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1981-09-12T00:00:00Z", "discountedPrice": 77, "expireAt": "1976-07-19T00:00:00Z", "price": 77, "purchaseAt": "1989-11-22T00:00:00Z", "trialPrice": 91}]}}, {"itemIdentities": ["W11vtpaTxi7k489j", "RCn48bvkCPfKofwX", "OIZZQAJza84lKKmV"], "itemIdentityType": "ITEM_ID", "regionData": {"Gud4tVjmxEf4XvVh": [{"currencyCode": "FJTxFHITBg9x4unq", "currencyNamespace": "3eOMHIKeTyBG5dCU", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1985-12-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-04-23T00:00:00Z", "discountedPrice": 3, "expireAt": "1989-07-22T00:00:00Z", "price": 12, "purchaseAt": "1988-06-23T00:00:00Z", "trialPrice": 60}, {"currencyCode": "869IN4V1OdhH4GVU", "currencyNamespace": "7Exlkmc4xYiLjLyZ", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1996-06-13T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1974-08-14T00:00:00Z", "discountedPrice": 16, "expireAt": "1991-06-10T00:00:00Z", "price": 80, "purchaseAt": "1984-02-21T00:00:00Z", "trialPrice": 27}, {"currencyCode": "UwJnUpryDeRcpUvl", "currencyNamespace": "rw2MwC1uuokpaIjL", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1987-02-06T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1997-04-17T00:00:00Z", "discountedPrice": 77, "expireAt": "1976-07-14T00:00:00Z", "price": 93, "purchaseAt": "1993-12-07T00:00:00Z", "trialPrice": 5}], "C5GODS44bmm7jPdK": [{"currencyCode": "LddfdsUqjXVzW1Qq", "currencyNamespace": "xnWR5sheLgsAF4ct", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1978-02-21T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1981-07-20T00:00:00Z", "discountedPrice": 28, "expireAt": "1972-06-23T00:00:00Z", "price": 67, "purchaseAt": "1989-03-10T00:00:00Z", "trialPrice": 14}, {"currencyCode": "q9j2EyIknfLDpgHn", "currencyNamespace": "MOn8nc3gUZ8ZFyyE", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1989-07-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1980-06-16T00:00:00Z", "discountedPrice": 42, "expireAt": "1989-01-25T00:00:00Z", "price": 56, "purchaseAt": "1988-05-16T00:00:00Z", "trialPrice": 45}, {"currencyCode": "K4QtEydPWLPBYiR3", "currencyNamespace": "UbJc1ZYapx7C477e", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1979-08-31T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1997-02-10T00:00:00Z", "discountedPrice": 58, "expireAt": "1992-10-05T00:00:00Z", "price": 72, "purchaseAt": "1996-08-26T00:00:00Z", "trialPrice": 65}], "UT0uKAPrARya2IMl": [{"currencyCode": "NiXpF4qvsUUpHqi3", "currencyNamespace": "3TcBGkc0HjUcnkpU", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1995-05-19T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1989-04-02T00:00:00Z", "discountedPrice": 47, "expireAt": "1998-04-15T00:00:00Z", "price": 21, "purchaseAt": "1991-08-10T00:00:00Z", "trialPrice": 52}, {"currencyCode": "uLFXIeCEKZUTz3Gv", "currencyNamespace": "CAZ5j24acYHbrryH", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1985-09-26T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1995-09-28T00:00:00Z", "discountedPrice": 52, "expireAt": "1992-03-11T00:00:00Z", "price": 52, "purchaseAt": "1987-11-10T00:00:00Z", "trialPrice": 1}, {"currencyCode": "O3AfmOS5mQNyRPZF", "currencyNamespace": "PNP56l1AT6OLKmZh", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1997-07-11T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1983-04-08T00:00:00Z", "discountedPrice": 86, "expireAt": "1988-12-09T00:00:00Z", "price": 81, "purchaseAt": "1972-02-01T00:00:00Z", "trialPrice": 86}]}}, {"itemIdentities": ["ClpF7OvlBIEgjse5", "kd6GEDo08yq5E5Hl", "eLoog4me2NBFp62x"], "itemIdentityType": "ITEM_ID", "regionData": {"3j9LYdG7xVPqBqe9": [{"currencyCode": "RDQMBSYAFLqp8PF5", "currencyNamespace": "hCcoukWpnbz4ys7j", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1983-12-26T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1980-06-22T00:00:00Z", "discountedPrice": 14, "expireAt": "1981-12-17T00:00:00Z", "price": 70, "purchaseAt": "1988-07-17T00:00:00Z", "trialPrice": 63}, {"currencyCode": "LarjaLOKnX51yAB8", "currencyNamespace": "Pa3uNGKhaLlJzJMS", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1989-10-05T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1988-02-22T00:00:00Z", "discountedPrice": 37, "expireAt": "1988-07-31T00:00:00Z", "price": 1, "purchaseAt": "1995-04-11T00:00:00Z", "trialPrice": 1}, {"currencyCode": "UBMbsF44VTsLDRzd", "currencyNamespace": "q22cbnyK3ggFDh2k", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1997-04-22T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1972-02-29T00:00:00Z", "discountedPrice": 32, "expireAt": "1999-04-18T00:00:00Z", "price": 17, "purchaseAt": "1977-02-13T00:00:00Z", "trialPrice": 12}], "BthbepUCTWiZ1uqh": [{"currencyCode": "7GAi4FEIu44u83ZL", "currencyNamespace": "RxYlYqlpq03BGdIk", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1984-09-06T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1978-04-05T00:00:00Z", "discountedPrice": 12, "expireAt": "1975-09-17T00:00:00Z", "price": 49, "purchaseAt": "1995-01-16T00:00:00Z", "trialPrice": 66}, {"currencyCode": "023dIvDiA0tQWlHw", "currencyNamespace": "BcTtztx3VAl6tXFb", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1984-01-21T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1971-07-29T00:00:00Z", "discountedPrice": 5, "expireAt": "1995-01-08T00:00:00Z", "price": 84, "purchaseAt": "1987-10-07T00:00:00Z", "trialPrice": 53}, {"currencyCode": "mKgE8CZ4AELr5lra", "currencyNamespace": "a5v5P5Cj8hgFsqHC", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1986-04-28T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1988-12-04T00:00:00Z", "discountedPrice": 97, "expireAt": "1975-04-17T00:00:00Z", "price": 79, "purchaseAt": "1979-09-11T00:00:00Z", "trialPrice": 36}], "tgKuiGTYgwWv5Xld": [{"currencyCode": "L6rOVGcRAn51rVAQ", "currencyNamespace": "Sxp4qTB54mKA3V9D", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1985-07-28T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1976-11-15T00:00:00Z", "discountedPrice": 73, "expireAt": "1977-11-03T00:00:00Z", "price": 5, "purchaseAt": "1996-06-17T00:00:00Z", "trialPrice": 38}, {"currencyCode": "df4r916GPrhn2etV", "currencyNamespace": "IQvRkQJAtDUH9tx6", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1983-02-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-04-14T00:00:00Z", "discountedPrice": 52, "expireAt": "1974-02-08T00:00:00Z", "price": 31, "purchaseAt": "1979-04-16T00:00:00Z", "trialPrice": 31}, {"currencyCode": "JYXsYgL7TfyIlAwj", "currencyNamespace": "TZdRZJJzWZwvTX2b", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1972-01-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1985-07-02T00:00:00Z", "discountedPrice": 44, "expireAt": "1990-10-07T00:00:00Z", "price": 27, "purchaseAt": "1974-07-08T00:00:00Z", "trialPrice": 66}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'vSWdDwD7WJHzgNZU' 'KsI5y0mR3zMyTsft' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'KqnsIJctAdxyZVKH' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "A9DkaSOWgtg8yw8l", "appType": "SOFTWARE", "baseAppId": "qJqzoKMRMG541PAi", "boothName": "NjULsx4SnKNXLMUa", "categoryPath": "DSwwQlnNRZJHBSB4", "clazz": "fZWEFIZs28Ff1kZp", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"ktx3N7WNMYIfcDKb": {}, "Lu8pnK34oA1keYXJ": {}, "vtggDdXjbdjMBahF": {}}, "features": ["BJ9Sgl7H1sdH2RIJ", "ZZGMTcqnWrIprOv0", "z1eI7Q5pu9PutLf6"], "flexible": false, "images": [{"as": "rvZoBGQbO4S3rURG", "caption": "WUzPAE6SdV4D5jft", "height": 89, "imageUrl": "2FI3vyyqRzc20O7F", "smallImageUrl": "dsJP1G9tyBTfERXd", "width": 44}, {"as": "MYDUTLBeCidXjuGg", "caption": "x8ncXejmeZtzT0qj", "height": 59, "imageUrl": "ltsqfiZrthVvyX0O", "smallImageUrl": "CKDJE3RMUddwSSgx", "width": 58}, {"as": "R3hCGNgaJmuALlMQ", "caption": "l9RLrthbfp0VgweL", "height": 24, "imageUrl": "oNB6hI6IpGcToWgF", "smallImageUrl": "vdRhG9NwV3zDuqVl", "width": 98}], "inventoryConfig": {"customAttributes": {"vJrBCqeg67d4RWOq": {}, "O4U0bitNQLzwRoWn": {}, "R0AbkCPY70FmvviV": {}}, "serverCustomAttributes": {"IBbcujF8Vk5qb8Nh": {}, "WWwaxyMchkt8l5IP": {}, "SrwrJl7wYIVw13NC": {}}, "slotUsed": 29}, "itemIds": ["l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG", "ZGwiVj7eDTaka9AB"], "itemQty": {"fX1IByPEOuPhGspR": 17, "3b6o5uB2XM6IHy7E": 63, "cubN4AUUPFPscZsX": 8}, "itemType": "SEASON", "listable": false, "localizations": {"D4DMtqfIGiGJovgW": {"description": "SRxZ8N4UQ2fg3V1o", "localExt": {"2x0hL5DuBDqMyIAz": {}, "Wze94MEdJFAy2JTl": {}, "lJkRGB8jqJEd6eqq": {}}, "longDescription": "sBVyONV0JRtozI0j", "title": "pliCFQ6WgJpGPigd"}, "c5VyC4qvWjVac1cQ": {"description": "vSxgTNIUzxDgBlIb", "localExt": {"uzm7DzJ20NFRJIhF": {}, "XR2dYprPmbpuptEC": {}, "Gd5cdXC2Sesc6y68": {}}, "longDescription": "whNBYl9iCqfW6rqG", "title": "OQny4ij4ysYPonb5"}, "9gQffkNOmubxEJr2": {"description": "qEAuJbpZSrcbc4LW", "localExt": {"fKaY5c1tP5TDuI5f": {}, "6m4KC07CnsZe32hq": {}, "EcB1ExYMBb3ckvoa": {}}, "longDescription": "JYdMqGegcg3eRvBZ", "title": "XN3cjIXmFWRJnj8x"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 27, "endDate": "1988-08-27T00:00:00Z", "itemId": "a6Zuxk6u6HXXdiC9", "itemSku": "ZDj4E4mv12FNXypo", "itemType": "OLl13j84P0KqirJ4"}, {"count": 86, "duration": 14, "endDate": "1976-11-13T00:00:00Z", "itemId": "eUYcYJ4QzXCmqr6g", "itemSku": "mPGaHP5SVPvRLiDi", "itemType": "0mNHb6Lx8eq8SGNw"}, {"count": 62, "duration": 62, "endDate": "1992-11-25T00:00:00Z", "itemId": "eRj17xGhaBKoUfiH", "itemSku": "jGmCyPsKCJTv1ic9", "itemType": "gvagF2cSuztsJ5tj"}], "name": "64gV7nmDk29mcjSu", "odds": 0.40713130669594944, "type": "PROBABILITY_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 85, "duration": 3, "endDate": "1991-12-03T00:00:00Z", "itemId": "StqPtQmQN6eKAGiZ", "itemSku": "FCftT0RWECdjWYrn", "itemType": "ulxcCKAru8pOaAVL"}, {"count": 59, "duration": 85, "endDate": "1985-04-27T00:00:00Z", "itemId": "4k3JwkdaxR7GJpYm", "itemSku": "uYCPG181q9GA5Dyd", "itemType": "C2D8UT6KOc4VPDUR"}, {"count": 45, "duration": 0, "endDate": "1979-07-19T00:00:00Z", "itemId": "JligLlRxOelKykIC", "itemSku": "RxF6HtlER2txs4qr", "itemType": "NARATn6KXOutlYBb"}], "name": "LhL8KXx25FZfQIod", "odds": 0.7643235281614817, "type": "REWARD", "weight": 45}, {"lootBoxItems": [{"count": 34, "duration": 79, "endDate": "1992-02-07T00:00:00Z", "itemId": "sBpCJBIXLGYcwWVR", "itemSku": "K6UKk5ozrXA4HZHN", "itemType": "yq9odanhR1Zrm3th"}, {"count": 95, "duration": 1, "endDate": "1982-06-14T00:00:00Z", "itemId": "V87yfkycLSVdleSa", "itemSku": "AylsmLYe2phYOgT5", "itemType": "kDTyPl3dKF7NXEjr"}, {"count": 74, "duration": 79, "endDate": "1995-03-23T00:00:00Z", "itemId": "OHGwbADMfuOmh0lc", "itemSku": "iRhVZ2DeoODXMzLS", "itemType": "rzoiBnYi5UWs3tYl"}], "name": "YeMoCimJySocRvUW", "odds": 0.4684644644629602, "type": "REWARD_GROUP", "weight": 37}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 85, "name": "ZKPNoN9AWtLK9TFg", "optionBoxConfig": {"boxItems": [{"count": 16, "duration": 6, "endDate": "1984-03-14T00:00:00Z", "itemId": "oijBPAp6EPb988Nz", "itemSku": "xrDKVpULjjiw3NeV", "itemType": "G4DJi9DaMrc0WFgK"}, {"count": 18, "duration": 63, "endDate": "1993-12-24T00:00:00Z", "itemId": "5x2CPVYYG9WvoGmA", "itemSku": "mvaVV5YfxnUNcwjr", "itemType": "7gSGhnfuF4WZiQVI"}, {"count": 59, "duration": 8, "endDate": "1995-12-19T00:00:00Z", "itemId": "pWd3UM08gMXhdf3j", "itemSku": "uXW4JprIb3CJCAtv", "itemType": "SG8Cfa9dzOJDGCTH"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 60, "graceDays": 10}, "regionData": {"xeR6d7r1SQw80JfM": [{"currencyCode": "pPrSqYypRUnq5o4E", "currencyNamespace": "TeCUYG9ccTt7Wxw8", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-01-17T00:00:00Z", "expireAt": "1994-07-25T00:00:00Z", "price": 46, "purchaseAt": "1993-05-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "dk0HATGylx2JG2KN", "currencyNamespace": "GfhzfCTxxrsRRLee", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-10-17T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-08-29T00:00:00Z", "expireAt": "1996-12-08T00:00:00Z", "price": 67, "purchaseAt": "1988-01-27T00:00:00Z", "trialPrice": 18}, {"currencyCode": "YohxMp3uOQIybqWf", "currencyNamespace": "G9BJ6FVKlbYHtbPt", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1981-01-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-02-19T00:00:00Z", "expireAt": "1982-12-28T00:00:00Z", "price": 42, "purchaseAt": "1976-02-19T00:00:00Z", "trialPrice": 31}], "FDa6wUQvehKqwCh8": [{"currencyCode": "6XmRkCEcfHDCdl59", "currencyNamespace": "Wp9A3tXGve6DdK6u", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1986-06-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-05-01T00:00:00Z", "expireAt": "1972-10-15T00:00:00Z", "price": 29, "purchaseAt": "1985-02-27T00:00:00Z", "trialPrice": 50}, {"currencyCode": "zBw3xLUcCEt0Dzmk", "currencyNamespace": "Jq1sml5bYt76BNsi", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-03-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1993-03-31T00:00:00Z", "expireAt": "1971-01-24T00:00:00Z", "price": 61, "purchaseAt": "1985-01-30T00:00:00Z", "trialPrice": 32}, {"currencyCode": "Fe8ATUqVxcSthrpn", "currencyNamespace": "MUBsnUfuQIcSbUt5", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1982-03-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-03-22T00:00:00Z", "expireAt": "1977-09-21T00:00:00Z", "price": 66, "purchaseAt": "1992-05-04T00:00:00Z", "trialPrice": 27}], "uUsdtq4dOwNESzCE": [{"currencyCode": "W9dUVhZjLftC3sCS", "currencyNamespace": "8CpLCqPD9CeDEdCn", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1990-09-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-06-10T00:00:00Z", "expireAt": "1998-08-12T00:00:00Z", "price": 1, "purchaseAt": "1976-09-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "r8CDapjwNOl4k8rV", "currencyNamespace": "Nrm8drv8QD2JOe2N", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1984-05-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-09-11T00:00:00Z", "expireAt": "1985-06-23T00:00:00Z", "price": 12, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 91}, {"currencyCode": "PgIGuetxFMqXCQMA", "currencyNamespace": "qQ2ZRGzNtrThFa9X", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-04-26T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-11-14T00:00:00Z", "expireAt": "1977-11-13T00:00:00Z", "price": 41, "purchaseAt": "1975-10-06T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "ZJ7O8sAQ32wj9uaD", "price": 53}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "qs2mqtnGAqXUjNyp", "stackable": true, "status": "INACTIVE", "tags": ["oViPeIB4Ehy0Y5aS", "FlounC3vJKBC7Swg", "JEhxPGbEk7s7gw07"], "targetCurrencyCode": "JVDginxAM77eY9C1", "targetNamespace": "4FbfiI2NPvl1kCY5", "thumbnailUrl": "bEokxXxkWZbjf7GZ", "useCount": 48}' 'yumBeIqdQGZC5kM0' '3HHijsQRj7N8IAjm' --login_with_auth "Bearer foo"
platform-delete-item 'sonjj0ZR50BQ1U6a' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 64, "orderNo": "DV5uTcYsoahUrELQ"}' '1btjJOqQMgZWAU6E' --login_with_auth "Bearer foo"
platform-get-app '92nHJzvw7tnYtGfv' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "0EJyjBu4EzwRjD7j", "previewUrl": "mQJeFPghqamSc5y0", "thumbnailUrl": "X48eT7Mluexk87b9", "type": "video", "url": "5BTsEA3EdmW8saab", "videoSource": "youtube"}, {"alt": "edopzwSluBtRFPKT", "previewUrl": "hyGnbjmPDKFS6u9F", "thumbnailUrl": "Huv1M3qfch4SqIV6", "type": "image", "url": "PHlaeYl4csFq65cU", "videoSource": "generic"}, {"alt": "6yJaj4ovoKWE4EW0", "previewUrl": "sw8v5peiuxoBJATa", "thumbnailUrl": "uyD3XCXVMiyEvMf9", "type": "video", "url": "Ca2vWadLmQtYKmEM", "videoSource": "vimeo"}], "developer": "TFzwdOMdupwD4O3u", "forumUrl": "NbcIDcIyvZbOy1T4", "genres": ["Adventure", "Action", "Adventure"], "localizations": {"Z2PofaJoSqtrEOqx": {"announcement": "H46fRTSZoDdT0fef", "slogan": "o74eg3Nt2c0r4GqF"}, "0NHglOVuNZ9LzNeJ": {"announcement": "nBurh54CWbYb0Peb", "slogan": "yt8b4DGscjwrizsF"}, "UgYwbaLvqvQ2NbmD": {"announcement": "ITuymTBjn3d2sFzM", "slogan": "S3QaVjZF7Ax6115K"}}, "platformRequirements": {"g9U8vrQJXQxoIbVi": [{"additionals": "2CLEk277Ivjj1A64", "directXVersion": "7XQ3koaAfZIim0sF", "diskSpace": "Pm1YN27bojDVaZLp", "graphics": "x4kEWYkO6KrKUMhJ", "label": "rASBh61hmWKSSrF3", "osVersion": "5anDGvur19V18oIr", "processor": "UKXttgAI2QdWJFLm", "ram": "oPEgd8EMspOs8nki", "soundCard": "c9gj5vyUMAAmIHYb"}, {"additionals": "sxG5N066FXb88SbL", "directXVersion": "Oa21DiSFsm0XXQJW", "diskSpace": "szvTQEuALzDNp1SZ", "graphics": "58aDllwzTRHak1MX", "label": "xj7Esrg7900nml5B", "osVersion": "idsK9dCEzhVnOv0P", "processor": "QbVIaKiHfoeorY7A", "ram": "1otGFyv2SMjbEr50", "soundCard": "qGdCZIc6EFqBKxbS"}, {"additionals": "7Q2OgRucL1jwRXzf", "directXVersion": "jDZZBmOau6syme06", "diskSpace": "c6SKLc2mEC3IXl5X", "graphics": "CbkOfHaGr5kdazly", "label": "pvt6lSLfU7HByGXP", "osVersion": "Mqxj4hBgVY3YAxZL", "processor": "KbcOdyjqf6Q4oiwo", "ram": "JcaRMEb15LBlTVuf", "soundCard": "c5ZyODR2NVyn4PRq"}], "f3eRbZqBAoKGcVCd": [{"additionals": "MiSNV4qBrt1kcLmR", "directXVersion": "v6EJtl5xWnsb8oWq", "diskSpace": "94RImNWVIJnhhwFD", "graphics": "V1VitaomvWTzdsW4", "label": "N70wYS4Kj7Yi2Vvo", "osVersion": "QNW8Yc481dYdvGxJ", "processor": "AMDRA1LF7jdWlekF", "ram": "wO94VBCV9qJhWva2", "soundCard": "FPBujX0geYCpGJM4"}, {"additionals": "sqsPNJMiZXXOFwmG", "directXVersion": "WAvNF0Z0GkwxUNYy", "diskSpace": "NwGiKrknH0Y5mrQg", "graphics": "LC6D2qsFiQHglUQM", "label": "Zi5WjMZfOadpgegC", "osVersion": "UjTdi1Ehr8OtqpNJ", "processor": "9R8TuNy4ejmVA3vM", "ram": "CsGyPd12B8QNUz0h", "soundCard": "FFNbH6j2W4roZM2U"}, {"additionals": "KAXEEsL5D0oiFchQ", "directXVersion": "nVeq3g2AB2WIRUQm", "diskSpace": "auIY5HXCZ0W4XmWP", "graphics": "0HzSdiylLhVYszm8", "label": "xY33OQbumu2QHLyZ", "osVersion": "NuysyM4OfCzdQCXM", "processor": "AWnf87YPNOe9Eevf", "ram": "1fhMg1E2k7QLFrVg", "soundCard": "tX7y0fPOieDCow2z"}], "XyFFVpM87yqEwEac": [{"additionals": "QMTlqN4LKkxJ5v3S", "directXVersion": "BafnKNiMPbFkFGA8", "diskSpace": "5W3HJkqgS2B37wwo", "graphics": "PYOHiIsxmsLBPBJu", "label": "NLnWRrtW870qD88Z", "osVersion": "cduZSe7W20UZcDai", "processor": "q0nEZ7PyhqFJkDCl", "ram": "OsKmfsgJdmzsDPsW", "soundCard": "h1k0cQ08NG6dX2TZ"}, {"additionals": "kil67kRngoUa83EC", "directXVersion": "h1gqPeS193TNNzot", "diskSpace": "3sVli3GN2XTrFibR", "graphics": "AhzzEWzWlTY70qdg", "label": "JRvpZrSpWX3KEe2B", "osVersion": "jV00ReCXFffjJJxl", "processor": "gjzIhpgOoIOD74V2", "ram": "1HWDAfvXwdxbyp4H", "soundCard": "APbBbNPStVBUpKgO"}, {"additionals": "ssFkz0F36piDYXeH", "directXVersion": "Z7FHls3nyvconqbH", "diskSpace": "QqKLQKe3xmj6s0Gq", "graphics": "sWncp5LrqbiKudv9", "label": "z75SzoCV8ZMi2o1n", "osVersion": "R482D6gNClk9c87h", "processor": "osaPFC5zBW3ZgVZC", "ram": "j9ObVGT0Scwl4kNm", "soundCard": "Ci15XTJTgCNNH7Rt"}]}, "platforms": ["Windows", "IOS", "IOS"], "players": ["CrossPlatformMulti", "MMO", "Multi"], "primaryGenre": "Strategy", "publisher": "gaVfw5Vnyq8OzTE8", "releaseDate": "1971-09-12T00:00:00Z", "websiteUrl": "DNoMcOmbfJrCJQIj"}' '1haAosKglqaCXE9y' 'tpIO8btO3OwNEGSW' --login_with_auth "Bearer foo"
platform-disable-item '5TaW4to7QCY2NGGv' 'i9kg3rMIzNmhJTNQ' --body '{"featuresToCheck": ["CATALOG", "IAP", "DLC"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '86IaDFjjx6uZerWb' --login_with_auth "Bearer foo"
platform-enable-item 'twTX9gNRByjbE8lO' 'LAfTXKLzbrddqcKL' --login_with_auth "Bearer foo"
platform-feature-item 'a7LevxNHOSEhQRZI' 'p693lRwtc43atCuC' 'Fxbfbz4aQERziPL4' --login_with_auth "Bearer foo"
platform-defeature-item 'dHhOqG5KDdUvk0LE' 'i26Ls7mjRxNmvvNt' 'jJNQepUTGhwlY4lP' --login_with_auth "Bearer foo"
platform-get-locale-item 'zlsCR5rVsyfcH7Wj' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 9, "code": "Gz3b5WAEvdRF9bqM", "comparison": "is", "name": "uhh3bvadRthdbVAp", "predicateType": "EntitlementPredicate", "value": "dVw0zCqoMZvpIOO9", "values": ["0IifzMhkk5Pxsjqb", "CKpMv2Yky9DYkD2s", "7DmQ5ZOzx6iCJTu6"]}, {"anyOf": 71, "code": "X4FCK5ucTFsAFzaO", "comparison": "isLessThanOrEqual", "name": "htWm8RQvRUbUDSie", "predicateType": "EntitlementPredicate", "value": "qdTelFAadM9y66Dr", "values": ["IfOCDyVAHrHncR5d", "f4SSGGt3MiBKohow", "3kKoaP1K4CDuH1mM"]}, {"anyOf": 90, "code": "XqQ1oHFJ9Q0vqsL9", "comparison": "includes", "name": "omqWsGA76yxi0QzZ", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["Rh2o7GCQGPCxwEdk", "xs1WId9WlalqshF9", "Acm960EYQEuGJVl8"]}]}, {"operator": "or", "predicates": [{"anyOf": 74, "code": "uT3MgzReRq0112IS", "comparison": "isLessThanOrEqual", "name": "acO5MnjnxD1OXkxS", "predicateType": "EntitlementPredicate", "value": "WWaYvBLE46bpuJip", "values": ["k33J34fiTxK63OHp", "ZbSqBSKp8AmgwhYz", "8JyxJ39vrtuWWrqT"]}, {"anyOf": 28, "code": "pE130YWSgxpKWtdt", "comparison": "excludes", "name": "ZXQcb2o1J5euLAbB", "predicateType": "EntitlementPredicate", "value": "ZV3ig8Jg5VByeI3y", "values": ["wec1m8BusV9tUh74", "KVo6Xqjz2xUKLNWS", "cMcYYBixKJXCISQd"]}, {"anyOf": 25, "code": "efgFIiJssShBKsQj", "comparison": "is", "name": "vfQgQDt6ce8NDMEr", "predicateType": "StatisticCodePredicate", "value": "rsZyo6CBRRnoOikI", "values": ["mSZns5owBhoUg4Ls", "xXKKIR6kPmswm5TC", "AU1cKApdJDnE73GL"]}]}, {"operator": "or", "predicates": [{"anyOf": 85, "code": "AHQpBOgHEP5l94s7", "comparison": "isNot", "name": "smaxjTZPlLitytGk", "predicateType": "EntitlementPredicate", "value": "7FTexsOZ0b2p3b63", "values": ["PQ9HkSSV8e1MgTTL", "6boOLGCcg16DqwdQ", "KrcwIcXMhGy83Xit"]}, {"anyOf": 91, "code": "82GF3eTC0vzZUDj9", "comparison": "excludes", "name": "RBEj7qms9AGQExPh", "predicateType": "EntitlementPredicate", "value": "fuBNisecYbcOpR45", "values": ["qS7Dcmtfh50eObbr", "qOf0bNs97KvKyj3M", "VDlvSc0Mr7ImwCwG"]}, {"anyOf": 24, "code": "zWTqgYPixtHk6lWq", "comparison": "isLessThan", "name": "eD1La16Bw3JbUnUD", "predicateType": "EntitlementPredicate", "value": "jRYldcTpdeCD9XPR", "values": ["i4bAQL7VE2wL8Y4J", "FVUdzA8bvXlDhG7B", "rorbKIKuOXJPm5zt"]}]}]}}' 'rr09CDA8Ij5bGKSu' 'opWQbaCvdPSq8Z27' --login_with_auth "Bearer foo"
platform-query-item-references 'GpvHCDx55JZ5z6gu' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "jpFzlPspQD9IRIpD"}' 'DubntPCFxfeoW2Nd' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "SWzOXjO1NQUqWHBW", "name": "78XREZCiTNAxq26g", "status": "INACTIVE", "tags": ["u1bqI2M5PmXfKnQ7", "BYGjCUDMOrbmoRvW", "nfmGFy0eUoOBd90h"]}' --login_with_auth "Bearer foo"
platform-get-key-group '9EDqSTOfoNewWjwM' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "WDKEt6JhbJ0fwTDa", "name": "q6b5RpMwhWPtndri", "status": "INACTIVE", "tags": ["9loOxpmEuwDVc12r", "0DVUGgGHkapTCafF", "MdvYiCBuzUUwyI6V"]}' 'td4v9k4fv3kMiuQ3' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'DhsKLxjt5srPFxBg' --login_with_auth "Bearer foo"
platform-list-keys 'pFtDBmTLH9kP9U53' --login_with_auth "Bearer foo"
platform-upload-keys 'z6joBAhAlJGI2YYb' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '6ajBjgq6eY4PBNHK' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "Px62tHxDb06ZFy3u"}' 'glSp2UxvF2uLXWil' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["RD7HD6LCgdFxRGj0", "0RT6LvcnGMJbJIYL", "ssMvy9gkfTMRrXVR"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "cAVRDX6gmDfNfPGY", "currencyNamespace": "YSTunMgt3C8hEguC", "customParameters": {"qlMHiQN3HWJw9zIW": {}, "siP2JQ24meDrwEuT": {}, "yM2qohglzO8AEl6A": {}}, "description": "9sh2x2ur2ccp7R7O", "extOrderNo": "qPqIjS4i0N9ytb3c", "extUserId": "8pVZ8GlU8962e6gt", "itemType": "COINS", "language": "MPL_052", "metadata": {"MNOAzXmyHEV4g9P6": "a280S5RNB5dVCsB7", "xL4axSPgPCiwLxCF": "LDixZwVtt3RVTl0t", "R00oQgcHdGGK3x76": "U1EIcklttmrpgF5s"}, "notifyUrl": "zl0sMY8es36r1FgR", "omitNotification": false, "platform": "ol1qqbalgizL97yc", "price": 73, "recurringPaymentOrderNo": "CAIfNBSHgpFNw9K9", "region": "pmAIc6VSfE9nbE2P", "returnUrl": "Mv12ZSRJkujxbCu1", "sandbox": true, "sku": "Faj6Vxs3GuA4S1dS", "subscriptionId": "7H7yIS7b5TSDRIoM", "targetNamespace": "g7Dc5APzfzXDELJF", "targetUserId": "aIaEMW5bhJyL72WD", "title": "yhBsCCbnfihnXKxG"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'xaupnTTq9ihZkvFK' --login_with_auth "Bearer foo"
platform-get-payment-order 'fSHQh8I9xk3sFl0c' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "buCRM69XKkLwioRa", "paymentMethod": "KnWhlh80BhYe2fJD", "paymentProvider": "CHECKOUT"}' '6T75Q4ulonMFjmYq' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "E1wJhfogWg2Apm0s"}' 'Uy18aWn65Co0vdCk' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 38, "currencyCode": "Jpa19GJDK46Eehx7", "notifyType": "REFUND", "paymentProvider": "NEONPAY", "salesTax": 0, "vat": 26}' 'sqMY9aulsL6NOV5a' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'gpS6A5mkufBpWVxI' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "K9D2bTcgaKoccaSw", "serviceLabel": 100}' 'US6uwWrCQt86Jrg8' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "tLAJWpcyNkUvqn6e", "sandboxId": "Xr6FNbKJ05Orya6L"}' 'SSUlugIAknXcSaVY' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Playstation", "System", "Epic"]}' 'Oculus' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Oculus' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Twitch", "IOS", "Twitch"]}' 'Steam' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Oculus' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "x7rLwrPoWiywnxuD"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "uIaSxoloIH1gBCWV"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward '{"description": "A9dB4ib8HDOJ8TNi", "eventTopic": "P8KgEAj3dbRTI0i6", "maxAwarded": 6, "maxAwardedPerUser": 9, "namespaceExpression": "O3zkbDseh4tJdoGc", "rewardCode": "wMBmegqVUaWMJBjr", "rewardConditions": [{"condition": "V0p9A7tcHrV0MbJG", "conditionName": "r4drgkDuWS05m0pG", "eventName": "zazM2BUXnzUEWTiK", "rewardItems": [{"duration": 79, "endDate": "1989-11-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "2O7NrTQO7KLdZDGw", "quantity": 33, "sku": "E5gcfF8AMGZ2FBS9"}, {"duration": 38, "endDate": "1991-02-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KwdRMraDLrwh3d0y", "quantity": 21, "sku": "7tprnacA34xmIOjF"}, {"duration": 77, "endDate": "1989-02-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EDiqkwKbpdk7wlDn", "quantity": 13, "sku": "MvEUNfoL7JCcMo7G"}]}, {"condition": "xxXdbYCRexPekTsQ", "conditionName": "xMTfaSot7aohFYy4", "eventName": "VxwHIJ9gzxqAw4vB", "rewardItems": [{"duration": 66, "endDate": "1972-12-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "meDLYEzs2SQUdKr6", "quantity": 43, "sku": "jYI9lsQFD43Df5qU"}, {"duration": 84, "endDate": "1997-09-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zpFd6b5Jc5TETHcu", "quantity": 32, "sku": "jFZgF3erw7UsyHq4"}, {"duration": 2, "endDate": "1985-12-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Hget5hzB52BDFopx", "quantity": 96, "sku": "769zLJdKMexeJc7N"}]}, {"condition": "vgTSgKjCxZjKf8NA", "conditionName": "4cGUaDfy9XnH2r0E", "eventName": "Krk5VlnKsWCPccAF", "rewardItems": [{"duration": 28, "endDate": "1986-08-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5fp1egsx3ErheNwq", "quantity": 6, "sku": "IE1z3rDwZ1HKsOpy"}, {"duration": 33, "endDate": "1991-12-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bfnAdtkujxHff7n1", "quantity": 51, "sku": "ncJJKpqmgvUTr8XA"}, {"duration": 40, "endDate": "1990-05-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CbOn46W2B2uPQLrt", "quantity": 41, "sku": "Tn61A1xW6okIqmd8"}]}], "userIdExpression": "7ir9op4YfGTno5oH"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'Y0xfWddACyHSmo4K' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "X9TPO3K1k5ZM8btm", "eventTopic": "GsgXNXbpqxh76Af5", "maxAwarded": 72, "maxAwardedPerUser": 91, "namespaceExpression": "0dtVAo7w4e3v5mh6", "rewardCode": "Rum5pbgEt39uJQpg", "rewardConditions": [{"condition": "EtchTe3nt7t9ztpr", "conditionName": "SfW9OutADrNGBWSJ", "eventName": "1zQKxVmRTawjiZPM", "rewardItems": [{"duration": 29, "endDate": "1978-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "cyGEHxAKDQher3us", "quantity": 53, "sku": "yveSRiBq23kyH9jQ"}, {"duration": 3, "endDate": "1981-10-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WkcVk0X28GS54vl7", "quantity": 13, "sku": "QHNfIZwrMxf3EnzZ"}, {"duration": 98, "endDate": "1993-04-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kLT0Lb85nmpdN26B", "quantity": 55, "sku": "5YI0jeO2zMDSy4ky"}]}, {"condition": "qyKgrtEPdXXlt8ge", "conditionName": "CdiXu3iNvn7vLZ7h", "eventName": "6alhJNGZF07lsPP5", "rewardItems": [{"duration": 83, "endDate": "1980-02-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bXzWnVO2U4uyzZo1", "quantity": 36, "sku": "OzwuDSdGl1A2vaNe"}, {"duration": 59, "endDate": "1980-03-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SqTfmAVg50kOdJag", "quantity": 63, "sku": "qhx6zv7EURTNIoG1"}, {"duration": 60, "endDate": "1983-08-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1tfW488oYUT4jyCV", "quantity": 73, "sku": "S7snx0Q2Gd8m7Y3w"}]}, {"condition": "iNloJfey3HXL6Sjl", "conditionName": "jNPTXA3qbg55Syie", "eventName": "nCODZ0mnOpPTVxEg", "rewardItems": [{"duration": 55, "endDate": "1987-01-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "tgFXasxp5h780ktj", "quantity": 88, "sku": "7yHvEqpJSrDXVwCk"}, {"duration": 16, "endDate": "1978-11-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "161TFjROYJm75VIu", "quantity": 59, "sku": "CpqnZ5NW623WWn2Z"}, {"duration": 72, "endDate": "1976-10-28T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "DcMnyCPn1FylWdaN", "quantity": 98, "sku": "yyWbUQpbcv3IwmL7"}]}], "userIdExpression": "a1K3zIUYJmdF1YtW"}' 'NSQlcMzxfppNCrsc' --login_with_auth "Bearer foo"
platform-delete-reward 'DPbklTHcmgXsrVj3' --login_with_auth "Bearer foo"
platform-check-event-condition 'Mjml6BpCODWGOLMm' --body '{"payload": {"CZUeelXYyNrXweiC": {}, "nDldRPRfd6mLZ0GT": {}, "JwEjoZrRtaeWKMC8": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "wsOByQAMAgqFEzEt", "userId": "8umj5XhKnw7MHDwF"}' 'VKUC2ecnpUDqvLQi' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": true, "displayOrder": 54, "endDate": "1992-08-19T00:00:00Z", "ext": {"KVSmWa8TGko16XTq": {}, "Hc0cM7ixq8Tjnxp5": {}, "Cl8ggaEmCcuK2hHv": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 94, "itemCount": 57, "rule": "SEQUENCE"}, "items": [{"id": "EWpbusO6EyVqstpg", "sku": "Zpbz77y88rUFum2Z"}, {"id": "cA8iKcF0bkfjcTEF", "sku": "XcTwEtnHxP5pVtN4"}, {"id": "jNVIdruEA39uCJzs", "sku": "E8WObt6t0w8LOBxE"}], "localizations": {"15JYj4IqWK09l4wk": {"description": "rzahXR1sDEDVKDIN", "localExt": {"E3HjCiVR1dQ8kuhb": {}, "4pUwnGptHUplxzaD": {}, "a9PDwhu31d8eOdtr": {}}, "longDescription": "fq6ECDD6OGkuLs9g", "title": "NpNon6DKW9A6AmnQ"}, "TNFidImWONTvCPMG": {"description": "LdbYEknHPKrZ7TiN", "localExt": {"BE0HRsE0GHDOFjrf": {}, "qJcyxT2a7fCFAUzL": {}, "ELiM573TdtWjfVci": {}}, "longDescription": "uLnLsBKGsALPuCOy", "title": "phUUAV95708zaP0w"}, "pZgQEvFzox9wHocX": {"description": "3DRWobEoGr8W97KB", "localExt": {"edcr6PM51z7i0wQ9": {}, "egK2t46EG8I2lTvi": {}, "KbOgVuN3nhkn6QIe": {}}, "longDescription": "sNoYqvVsakylHikK", "title": "kpOjqwgKvfXXs8pD"}}, "name": "qm31AZSRkuw6q8Fg", "rotationType": "FIXED_PERIOD", "startDate": "1997-09-18T00:00:00Z", "viewId": "Lv9iGa5mkZjnRXVc"}' 'g6AByNpBo2JYkwLd' --login_with_auth "Bearer foo"
platform-purge-expired-section 'mR97u9MVUii4KpYc' --login_with_auth "Bearer foo"
platform-get-section 'b1AUsESaBOTHnbX9' --login_with_auth "Bearer foo"
platform-update-section '{"active": true, "displayOrder": 75, "endDate": "1985-10-29T00:00:00Z", "ext": {"9PQlFAGbMtEybfcA": {}, "l0mnsAkRT2k0Azdg": {}, "IunRkTxsGdrpNELM": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 78, "itemCount": 11, "rule": "SEQUENCE"}, "items": [{"id": "kut0wnT24wh59RGS", "sku": "bBMh7jpszuVk6iPd"}, {"id": "J2boQqCCyJfThvCJ", "sku": "ieqRSGN8Mm74HlSZ"}, {"id": "zp4aEW4GkHG5OIVu", "sku": "Gv47XJpkMiopQrVL"}], "localizations": {"3ZZTVxqa9XM2gY14": {"description": "iWk12Jffk8dwKNPU", "localExt": {"OHNZxML3yoBM9qxd": {}, "6PWz7sVnMxge2inL": {}, "8fBFP1ABaIKrEt8d": {}}, "longDescription": "3o7cTS9OIIMErnNT", "title": "LXHrsOFsbhRow4ia"}, "YKy0IjsDgbJ37DN2": {"description": "lDvdh7okHl1wMht2", "localExt": {"Izq7TCUJhDsDefAS": {}, "09VyQB1vR1mx6K17": {}, "GL1CrO4ZuoGZSxTz": {}}, "longDescription": "m8oMSPIHPtqzIWIz", "title": "g8pbjnt1iBV8Dpbj"}, "Gts4UZDTfhAyZKhq": {"description": "ilty9NVlgxUmnfdO", "localExt": {"Amu1dX1NqD20RUvv": {}, "YeJZw6QZFN7wFCnq": {}, "pvNesGiVnt9p2to7": {}}, "longDescription": "Yja1soDE1K0SvGrM", "title": "YwPmPXC2LfL2m5rP"}}, "name": "2A20t6foPPH94SUi", "rotationType": "CUSTOM", "startDate": "1985-03-15T00:00:00Z", "viewId": "5diUlqgvY7dPPyah"}' 'ppgxJhk4EdTZ000r' 'S92594HLvWFsXHtM' --login_with_auth "Bearer foo"
platform-delete-section 'P0k9L5dREQbCqfh0' 'gpABFBER6WNcDOsR' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "zBkf9A6HjCnFRdSi", "defaultRegion": "hcvszzQLZBktk0si", "description": "Mup01kyaFwwD7wec", "supportedLanguages": ["uQb4GNQHVZMKGBnz", "h4suaGIzttTncVBf", "5g3oeuHiNyLkfPQP"], "supportedRegions": ["mjUkvSs5YmIejozm", "G5HlrIfMAvvpkAHR", "JHZyfrXZmiJX4CjK"], "title": "CeIRIr997KKpJXTL"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'APP' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "VIEW", "fieldsToBeIncluded": ["WpqeXjaf1f5fjNMZ", "jKJ05puX3197WrMn", "JtovSMFw8X4zxbdf"], "idsToBeExported": ["Xgunt1oMNZ68eovH", "SH3xV3URIRVDYBd6", "hMB0l7sg7IfMH5Tu"], "storeId": "1ky1ZYvyeHmfoFkU"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'DP864shbnQ3bVvuv' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "psDJXPCWkX4Kpi8C", "defaultRegion": "J88aMPGFFAQZbfbm", "description": "VTEbiRq5Juikmpat", "supportedLanguages": ["75rVbN9ZBtzJ33tC", "wv8H1f451FVZ630H", "NBYZSrz7pMjESLLM"], "supportedRegions": ["PKDXLki6Oz5Bygt8", "Q0RjSf1srB7hGwGb", "UmQmJHNffZENs9X0"], "title": "hFMdzryvhc1YjHmm"}' 'ulSBIElc2CdRvBb0' --login_with_auth "Bearer foo"
platform-delete-store 'aGnMt625bWHb5sbX' --login_with_auth "Bearer foo"
platform-query-changes '6asrjV7XJUOtHlzX' --login_with_auth "Bearer foo"
platform-publish-all 'NHEPpzlMlx7b2H2T' --login_with_auth "Bearer foo"
platform-publish-selected 'HLwZGikW7TFA9gE6' --login_with_auth "Bearer foo"
platform-select-all-records 'SrYKq6lcVOhPJIcE' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'HbiKHW7flVolAWEM' --login_with_auth "Bearer foo"
platform-get-statistic 'mQSPDTRqjlvwnnCA' --login_with_auth "Bearer foo"
platform-unselect-all-records '5tfK5ushaKTPVjyO' --login_with_auth "Bearer foo"
platform-select-record 'UpR3uUdgNlyU4IJn' 'qtrjCOsE8VjvzhJw' --login_with_auth "Bearer foo"
platform-unselect-record 'NX4bhqCjlwrmsSRV' '86iic1FIMyF7CcNu' --login_with_auth "Bearer foo"
platform-clone-store '2DYn6E9Gk51kOTJZ' --login_with_auth "Bearer foo"
platform-query-import-history 'luTekDMCGUJvERxN' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'g8djSb4Vt2vKQ5vl' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'CdI519Pf2iogwxM5' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'DZM0dgozmco41750' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "xdYQg34WUV0WpmsQ"}' 'np1n4YGumTKOlDOy' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '5vhSkxERZ2AQ1jvX' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 41, "orderNo": "Bar5RMmmGdWl0wpj"}' '5tVfKU3D8WVPh0Z7' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 17, "currencyCode": "BbbB9txAvtRQvqJa", "expireAt": "1972-09-09T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "R2Rf4noXDFaEUkPU", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "z2zMU9jLzNV3GaG4", "entitlementOrigin": "Other", "itemIdentity": "6nlRPrEAYqRBeSc5", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 0, "entitlementId": "Shoj3dGHMeoi5DBO"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 87, "currencyCode": "n4lPghHyMEHBzArb", "expireAt": "1983-04-02T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "5NmnSHhxNmCe4txY", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 37, "entitlementCollectionId": "YVEiaereFCPJU2wE", "entitlementOrigin": "Playstation", "itemIdentity": "8ZfwCVJW9yspUOyH", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "9eKeXzrvzBllwzyC"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 93, "currencyCode": "TCZs97TJI8GPrM24", "expireAt": "1987-03-12T00:00:00Z"}, "debitPayload": {"count": 8, "currencyCode": "celFgM62HQtgzQhO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 20, "entitlementCollectionId": "R8j8DlP6OGbn8vmf", "entitlementOrigin": "Twitch", "itemIdentity": "hc8vaN1Off5gRZZM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "z1EH6X2SM3xzsNrJ"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "KNh6GTzKjsCqxx24"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 80, "currencyCode": "J19b5rTfiL2P3r1a", "expireAt": "1997-10-25T00:00:00Z"}, "debitPayload": {"count": 72, "currencyCode": "YIpOLJW52uz3c8pz", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "HA58Jt5NaROjSKFE", "entitlementOrigin": "Other", "itemIdentity": "OzUGHeBKtpvyRNgj", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "dDppvEJiUiDGXgh8"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 50, "currencyCode": "cLqtRZ93LuR8OEyI", "expireAt": "1985-02-04T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "aIbxM3Wev9pZQjWA", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "o8beVQvgeP9qOHaL", "entitlementOrigin": "Other", "itemIdentity": "7JEMRPkdTcAzkIln", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 82, "entitlementId": "f3JA27Qz5SjzQfOL"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 54, "currencyCode": "O46OOzz9p57qSpHe", "expireAt": "1980-12-25T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "Y807VmBT4wZXQZZr", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "28qCRbwwZc4ZS1NM", "entitlementOrigin": "IOS", "itemIdentity": "koCAZuolAWnxkImV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 23, "entitlementId": "DP0QX31gI7VmnGIR"}, "type": "DEBIT_WALLET"}], "userId": "vXe6BiphIFe2bzr6"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 46, "currencyCode": "Qw6fSESkM19OPMBb", "expireAt": "1998-04-19T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "gpmShlmIt2nfhUaZ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "qjslu59GT2E6Aacm", "entitlementOrigin": "Playstation", "itemIdentity": "RXZm626POXWVj3KP", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 25, "entitlementId": "B8EO3YrlyrWowUpU"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 71, "currencyCode": "lTtuJJsHZVsG6izJ", "expireAt": "1997-03-23T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "ZURmoGgxVRMPf8g1", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "bhfIMStMnSqrKWYO", "entitlementOrigin": "Other", "itemIdentity": "J5j18Ou3aY8nceFU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "Lhjz1v0RBIO2rkJG"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 88, "currencyCode": "aK6HEVIQJd3930TG", "expireAt": "1973-08-08T00:00:00Z"}, "debitPayload": {"count": 45, "currencyCode": "qp4O9XSjap24esyj", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 82, "entitlementCollectionId": "6Wc3migf2n6iQyr5", "entitlementOrigin": "Epic", "itemIdentity": "fAg5cFT0gHAkltcR", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 68, "entitlementId": "uzlmi2NY26xrkPPd"}, "type": "CREDIT_WALLET"}], "userId": "HBJX5ln8PZbYVD8R"}], "metadata": {"iaTsdD4d3kSbTkHP": {}, "MUvOAUXkw36cr2WJ": {}, "QqS7Tq4YIyZAFQ6l": {}}, "needPreCheck": true, "transactionId": "fa2jdNvpWf32JS1a", "type": "v9VNpVLT0LvqcfSd"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'O1nAjY5FvADb3GUQ' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "gci632w6LUrHuKBo", "value": 82}, {"id": "Z3SWISs1dYrJKmx1", "value": 56}, {"id": "f0fbCU9QdPuWeMEe", "value": 77}], "steamUserId": "0TqBQprHn3whPKU5"}' 'abnqw8fFa30pVbhr' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '1BHh1arZAyuLcZoE' 'kPpqKhP2jWnRTglw' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "0gdWoE4esuiDrquc", "percentComplete": 5}, {"id": "wE0cXokXbwKDtVmr", "percentComplete": 71}, {"id": "Qu7hZvHfiT9s9pK8", "percentComplete": 69}], "serviceConfigId": "xpAgoK9YDq1x3dkb", "titleId": "JFDEBEOOvJ5BKeip", "xboxUserId": "IldsgB4hOxb88WgK"}' 'SLIpneDQCfwucHRL' --login_with_auth "Bearer foo"
platform-anonymize-campaign '3o2NstrL6TsJeRcE' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '7GuwKn63KIDTkUCq' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'bbHGJGOTvKKRTHDn' --login_with_auth "Bearer foo"
platform-anonymize-integration 'taFiufH2YR6QU7fj' --login_with_auth "Bearer foo"
platform-anonymize-order '6w17arNs12hOoLVM' --login_with_auth "Bearer foo"
platform-anonymize-payment '7UFnuJDzeEkDxaVo' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'gxHrOon2OW4Zw5Qw' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'VKWNy2tnF2MifJR4' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'hr4gdJDujYnVnFK6' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'gB6ZxC6yYUVUJYnQ' 'OCULUS' --login_with_auth "Bearer foo"
platform-get-user-dlc 'Or1FU3QZy3gdDms3' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'kb1htW0UGJpwQZlX' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "uzu3m9u67JjCDwg1", "endDate": "1988-12-20T00:00:00Z", "grantedCode": "hGWKfO9MnoT3t99H", "itemId": "mcxzjDhTrcBKtU95", "itemNamespace": "6hOg8oukDVdweG0s", "language": "jiXV_KTms", "metadata": {"zCqUgq1gLbcIMevT": {}, "mC631p7q794bu49l": {}, "INFTtERAXT2h3hcQ": {}}, "origin": "Other", "quantity": 52, "region": "V3ZbBTnNQnVUhA5W", "source": "OTHER", "startDate": "1983-07-29T00:00:00Z", "storeId": "lsau7wRQmL4i3eRy"}, {"collectionId": "IECEDa1I4lwXqwPf", "endDate": "1979-09-13T00:00:00Z", "grantedCode": "zHQjtolx64w1gyvj", "itemId": "acKtGqxMnoAXRlcq", "itemNamespace": "0mYWKQYlqMmu2pvF", "language": "ST_riAo_dj", "metadata": {"wNFzsbrtYvLh56AW": {}, "XoMiowdWSs9DQ0VU": {}, "1HED9CGo9aUXj3rh": {}}, "origin": "Playstation", "quantity": 18, "region": "qxVWlIMY5tTJw4KV", "source": "REDEEM_CODE", "startDate": "1998-01-14T00:00:00Z", "storeId": "MtMhKHmSjqPuQZX5"}, {"collectionId": "KjdNrEwfWo2MwulL", "endDate": "1974-05-29T00:00:00Z", "grantedCode": "4bsO4YHEYLjTSNDf", "itemId": "3zazm6p5Y1tkG9Ww", "itemNamespace": "U4Ty6Ch5QYyFjuBq", "language": "WfC-SzNk", "metadata": {"ypWzpNXgnoKIz8O8": {}, "NglJtZTh280vflFM": {}, "xIhlIT8AgyZJ16MM": {}}, "origin": "Epic", "quantity": 5, "region": "bzOrTn2huwPgyUzB", "source": "IAP", "startDate": "1973-10-26T00:00:00Z", "storeId": "eDNfUESLlwHv3Jgt"}]' 'eOLyKp8a1VqxXnRh' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'Dd9TGkO6aIYqftw1' 'SrM2nhSEanfUYrMU' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '6A43UKGpvC1cr5T1' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'hduTWchzXDv3TAtB' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'jP4HSuiYCbG0UyYU' 'JmNL8p6AbdtU0CDr' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'lQpKB8qoel2QK3aS' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'OYdmMDikc3Fjm9Ho' 'QDemtiQvURYZCeF3' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '0RT9rBgM8o7lxXq7' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'TkdM7FVDCBcvVegr' '["ZddP8lLQo6tHj4z4", "cAM4LMJfWNZIxAgB", "peubprKX68jTyRd3"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'LrR1x6U1v6zSLjm9' 'zmzUW0vPj90jmLTt' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '5YQGawcomPoiYoQ1' 'f1AYq306Pysv4VPa' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'ZWolXypwucUqqqff' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku '2iWi4yP3uqNcig6Y' 'cDA8Z3g62oGYwkrj' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'LI4EHJEEWgki9fbd' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'vUMDZeO4U55wdCpV' 'pnENiTc9NESV22eR' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'BElD4K2Cy1tJcPAE' 'kCeV29QsQk100eu5' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "UcxuXXpt0YSPX04u", "endDate": "1986-11-27T00:00:00Z", "nullFieldList": ["IdAwgDobopbdJeVC", "iKs2vLyH9kcSBdk7", "MwQzn28Le5neohqh"], "origin": "Steam", "reason": "SuBQdvdhJoT0WK5n", "startDate": "1974-11-22T00:00:00Z", "status": "REVOKED", "useCount": 70}' 'DKfZYofPGUbSaA00' 'nKxQjYU6KlavIiLx' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"U2I1GyJS48Hxu8Ju": {}, "4XSAnlXRYB9BgSZB": {}, "vkehRn83B0nrW1qx": {}}, "options": ["3NJTugVWXz8dv7Bi", "EUqnzxs2deMF8UAJ", "IHEZv5zyUUyNJkvA"], "platform": "5xF3zHtZSd3QzXhk", "requestId": "rN4pWryt4XTNwpp0", "useCount": 28}' '3GaJsdCZND0wgYOi' 'lX1e1825iasunESj' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'cgr2drXG5NkKCySL' 'A8cKCs0dFYRSa2OU' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'LZ0iOZJiOAh1SpLh' 'MF2Pav11FuU8iXCR' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'z8KgqgwijYxpGhsF' 'Arq6lolbj7QKvtVR' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'CPMjr5M3vw1GqUjj' 'Fp6R8mYZwKftVqSE' --body '{"metadata": {"CsypS42NmYQ8HlHb": {}, "Hnfs4tLVOYQCWMkt": {}, "miKd9vLPP0w52JRA": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "ZxMWdoleYNHXeOpa", "useCount": 89}' '15WVuE5cYVP9tQSa' '27BnPyq3I1BLtGEZ' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'DRNkk4DJUofJXK8R' 'GS0zCYRVmbfzwUms' '49' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "UBfPNI9f2oLWDPSZ", "requestId": "exfKVxqdxmh5QWxu", "useCount": 87}' 'jQZcYerH933X7iXE' 'EM2KOusNEHcI95GG' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 8, "endDate": "1994-10-13T00:00:00Z", "entitlementCollectionId": "3MLwJZquMQSPp5XD", "entitlementOrigin": "IOS", "itemId": "1ilfgff7Et4uY8nl", "itemSku": "BwGNHgfgwZwVMvsh", "language": "Gmsg6ZJYnkHDnHTl", "metadata": {"RugM7a2UZgeesipb": {}, "P027okM5E8tAajVS": {}, "vLRj306RDuaSixXE": {}}, "order": {"currency": {"currencyCode": "dloYZBkatNLc42eq", "currencySymbol": "0O6VsXtOlQwj5xPv", "currencyType": "REAL", "decimals": 6, "namespace": "QboMHCtzEF9FSeg6"}, "ext": {"WYgtfuqJHrs4e3Rn": {}, "WR30MdBZezfwc3H0": {}, "qSbMq4GLj8aGsH0q": {}}, "free": true}, "orderNo": "H2DRN6HIEqIFEcS0", "origin": "Playstation", "overrideBundleItemQty": {"v8oYWPUS4Zu0SbTt": 94, "M2XizikCh6q0yq2W": 54, "z43E9FkOPVu2fDtO": 19}, "quantity": 18, "region": "W1iSYQbcebBd5wb5", "source": "PAYMENT", "startDate": "1999-09-19T00:00:00Z", "storeId": "qppoCiHMD4iBK2O7"}' 'qYtOHV5hnpjc5CNL' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "nnEvo25aEtdjls5o", "language": "AE_jkpG", "region": "7y4Q9CU3fjSRaXD4"}' 'HDmdvhMXxiKR29LK' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "IhNU43K8bihdw3pr", "itemSku": "p0UHlWUxkBefhxRt", "quantity": 35}' '7XLoWCGf0dZEeXBd' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "6mGG6SHcZbX2wNnT", "entitlementOrigin": "Playstation", "metadata": {"V1oqNLmPAUIMwa2w": {}, "Yq6DsUq38bYvaWLo": {}, "KzHnngdfFnOfY9st": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "wUwk48XK7MXHbEwA", "namespace": "vvpEeHhXiJcJqYSx"}, "item": {"itemId": "VKUYMimVLzAP6aOz", "itemName": "sTqEFXUhGAwpYq1U", "itemSku": "qZydOB0MThZW6Lwc", "itemType": "Ag57BYBVCbi0ifdP"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "Kf3SwHekWIz4rXlH", "namespace": "5jw99HxCjXWcaXBc"}, "item": {"itemId": "fXXeV7BXefsSgZxS", "itemName": "YnVwXqF6K0WA76Kl", "itemSku": "2mHHoz6qBQnEDgX4", "itemType": "9n1xTDFcmOm1sqdI"}, "quantity": 99, "type": "ITEM"}, {"currency": {"currencyCode": "U6ERylESgf5dXMrP", "namespace": "oYSohfrLyXMSrC62"}, "item": {"itemId": "xYtDwflNGfufW5cW", "itemName": "eg6eSCypsceITTkJ", "itemSku": "GGCVF6LrILDLviUC", "itemType": "zmDAaW5xz1c7ZuZX"}, "quantity": 96, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "yPFcyUnKXA3mcyMm"}' 'X6WF8jtNAVOYqSH5' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '33YlJ93CCGBXv4fP' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '4VPzhcH4UJrrCKvr' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'OAi7lMgkVWJYzSCI' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_SKU", "language": "kxm_aG", "productId": "eRNHIqK5PT404mFw", "region": "4HJv5T2kIQOecfLs", "transactionId": "YKTmUnKlrOsJmEwj", "type": "XBOX"}' 'cA0PwZxTIZVSGQyT' --login_with_auth "Bearer foo"
platform-admin-sync-oculus-subscriptions 'zhs9Asy4d629N4Yn' --body '{"skus": ["olVWA2dWxBs056jk", "PCUuE1pgdHvlQKiR", "7SDQUDavOlKT5EIH"]}' --login_with_auth "Bearer foo"
platform-admin-get-iap-order-line-items 'NhJQq94Re5IM1akN' 'Kz9IltQUku3n32at' --login_with_auth "Bearer foo"
platform-admin-sync-steam-abnormal-transaction 'B0QPQPEp5UtwUWGt' --login_with_auth "Bearer foo"
platform-admin-sync-steam-iap-by-transaction '{"orderId": "6tooHP5kAww01zal"}' 'TddhAQ1pwqnybvUI' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription 'fuulmeegRwPPbn7l' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-group-id 'STADIA' 'LODN3Boi2sSAO2n4' 'MZQt753XQB93rOW0' --login_with_auth "Bearer foo"
platform-get-third-party-platform-subscription-ownership-by-product-id 'EPICGAMES' 'OaRcqTgF0xtQAXoD' 'oFkmA3fgzcwdgJMj' --login_with_auth "Bearer foo"
platform-query-user-third-party-subscription-transactions 'IyGfiNBQy41M1gzG' --login_with_auth "Bearer foo"
platform-get-third-party-subscription-details 'Cbaxw33rNbE4bbDU' '4FMTbQaANJOODGer' --login_with_auth "Bearer foo"
platform-get-subscription-history 'DCWcl3VSJENQopeH' 'D6iKBGm5Cj7RqnJU' --login_with_auth "Bearer foo"
platform-sync-subscription-transaction 'mfDmofxvN8pRGoUt' 'mbWZbEjPyq35BWDo' --login_with_auth "Bearer foo"
platform-get-third-party-user-subscription-details 'c3qNcQFFyHv141NP' 'qjRUMKSQjFdjqTaZ' --login_with_auth "Bearer foo"
platform-sync-subscription 'FsWzbqwTZQIN5jC6' 'a8mEVCXHmFnrSL0P' --login_with_auth "Bearer foo"
platform-query-user-orders 'JcZQaCeNLYxMID9p' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "qZ5rryiMMt6fQtLh", "currencyNamespace": "zylaquioT3QBt29A", "discountCodes": ["F1Qwzz606UGXPhoN", "ZlXMef7AvS3TfKx6", "iRASsuFM4ahGw7Xc"], "discountedPrice": 57, "entitlementPlatform": "Playstation", "ext": {"BBkrXu9czsYr3cFe": {}, "Vw70xdNTuOdLKK0M": {}, "2B2hbqJin37P69t1": {}}, "itemId": "KqeGz7qbPnXEuOzz", "language": "koBmMR9C4qPqJrAd", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 20, "quantity": 69, "region": "z1mFkyxoUzfMFoXC", "returnUrl": "OguSq2A4R3wDdSkN", "sandbox": false, "sectionId": "h5yNbYXmlAOi1SC3"}' 'I1SjkH42LtyZKrTJ' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'o0L5sHil4Q0mqa8G' 'atrjbJ5YT7uvqarT' --login_with_auth "Bearer foo"
platform-get-user-order 'vrG1DXZAWlvz3c3X' 'ALMresGFfsH4aXCD' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "CHARGEBACK_REVERSED", "statusReason": "zXHUvxhvTZcvRKoa"}' 'M4ozSAg8FTLrByWO' 'JhbocoGlPzdfxcC3' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'rpWhSpq0InxMLpP7' 'n7M3JXjEvsj5WcQ9' --login_with_auth "Bearer foo"
platform-get-user-order-histories '9M1yuXeqV31LX2eh' 'cMnM6QtjzQjDlUMC' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "GnxZwak7KHnzGASm"}, "authorisedTime": "1995-06-21T00:00:00Z", "chargebackReversedTime": "1984-02-04T00:00:00Z", "chargebackTime": "1981-12-07T00:00:00Z", "chargedTime": "1994-10-07T00:00:00Z", "createdTime": "1977-05-21T00:00:00Z", "currency": {"currencyCode": "Y6UhDJ4pe0s0Cuhl", "currencySymbol": "3dU9b4seYCyiB4tD", "currencyType": "VIRTUAL", "decimals": 66, "namespace": "Wx3cEX8wTi1v2abp"}, "customParameters": {"CWytPEi9Ze0hL9rP": {}, "kV5GkSrcl2O47XVz": {}, "U7qlNVk7qnmBS3XK": {}}, "extOrderNo": "Dhp1OkMcErmeH0lX", "extTxId": "1hj0LaXgQ94flh77", "extUserId": "5AQfzNjQ7IuMSY2e", "issuedAt": "1978-12-26T00:00:00Z", "metadata": {"GrvKI5EVB9ZFzLNs": "jdCFtKY0KsxR0rCF", "kyiQZfMnTbKdwNhi": "IP7dpJ8B8VwFQnVc", "o2oCn1KvJmbjapW9": "UlEqtzDd7SgxdxB5"}, "namespace": "kvtM8ah9bPsksceG", "nonceStr": "UEX8ERZcKSYLo6y7", "paymentData": {"discountAmount": 51, "discountCode": "H2XLIg3MgmdSvWp3", "subtotalPrice": 15, "tax": 72, "totalPrice": 48}, "paymentMethod": "QwErzjtuP9pUUv7q", "paymentMethodFee": 8, "paymentOrderNo": "NfQSYLFKSl3FNFFJ", "paymentProvider": "NEONPAY", "paymentProviderFee": 91, "paymentStationUrl": "t3rIwZdW02Su6aCn", "price": 77, "refundedTime": "1985-07-21T00:00:00Z", "salesTax": 5, "sandbox": true, "sku": "aH6gOBUIMeL0GL3a", "status": "AUTHORISE_FAILED", "statusReason": "FmKTTUxG0mpmFxxD", "subscriptionId": "NXGlGJvHf558h1lt", "subtotalPrice": 49, "targetNamespace": "Ltjsu6ZJRCoDq3ge", "targetUserId": "uHFFaZzPIjETqcKN", "tax": 66, "totalPrice": 13, "totalTax": 9, "txEndTime": "1971-12-14T00:00:00Z", "type": "z2rtjWpJAlKHF0eb", "userId": "xhJ1176CeD4dWCp4", "vat": 47}' 'LLhO3lGZ7eGOPj2X' 'oFug8BUQUmPHnPum' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'cazKAna0ji757aND' 'FeKnQP2j2WsQImTw' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "YkiuxzLrbJ0BkGzC", "currencyNamespace": "NgesQlZZHIZH0iks", "customParameters": {"6kx0adnimPyyzezs": {}, "HdFftHHR6xbcVVon": {}, "wz27DWfGRVhbZTvC": {}}, "description": "PrrZCTU5WUJizF69", "extOrderNo": "PSsquWUafwbFPX15", "extUserId": "633pFgA7i9tqvfHm", "itemType": "OPTIONBOX", "language": "Tvq", "metadata": {"UW5Y0CYw5OXSGwQk": "Juy9oLFcHHcraLXR", "2n9JQvq7NKWIHYsi": "i3fCh7sieJjZPAki", "WumllU31uXPwYxed": "GHCIkmt4bfJOhNaI"}, "notifyUrl": "T0pv7XeqO8gY3c4S", "omitNotification": true, "platform": "WTGYx2ihgioL8VvE", "price": 52, "recurringPaymentOrderNo": "HkVOW8PnLkgqkqYZ", "region": "WPZTgKagTzdcYcko", "returnUrl": "7U3gH239LhRx2Laa", "sandbox": false, "sku": "dtVb6VgA5yFIH3s9", "subscriptionId": "UyeaFi8OE7BCK4Fe", "title": "VGrl5NpUG9zblWEi"}' 'HaUjyTHb0sSlstb3' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "slUe94NxhXsVcqTY"}' 'i1TMBMzaOrxuKvtU' 'VtqbDWnJ2i9TRmJO' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'qIl7U12hO5vpk9DO' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "SgbsdGVPLD9A5Nmu", "orderNo": "ZDUV3yHurgOfba1X"}' 'eoHYTNoRol84Ulkx' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"tP5Vok9sNK1ORg3t": {}, "ChsS3fFpaS1uq1mH": {}, "3oYfPK2QiAUhIfi1": {}}, "reason": "7YrkWHNxiaNyqBfg", "requestId": "w58Hx0XYL0fJOPYp", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "qej8PRppYY1vlV0M", "namespace": "2g6oreqyBzWzCgMM"}, "entitlement": {"entitlementId": "WZuD6tmIR28xVxbt"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "lg8nmzQx1RsYhcRl", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "srykQFtW8QGKFZLr", "namespace": "IfqrZuu7IwKcT7sA"}, "entitlement": {"entitlementId": "sv2TKCbYMVkXEHms"}, "item": {"entitlementOrigin": "System", "itemIdentity": "BHkgcJ0DcEt23pci", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 61, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "dZsLaf8aZrXW84dt", "namespace": "0TSTmy7XF26K2U7x"}, "entitlement": {"entitlementId": "ttUz8nWKJjv06Puf"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "yGYIVFDbTvRYfpJ4", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 79, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "WZfOOxAzmsbhi5QJ"}' 'uc2SNBaOlXfgsgBd' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "7MYLLoPZrkjRm5Ki", "payload": {"0orhXrISEaPZHLQk": {}, "THvndQsCKAO2JRz3": {}, "CGwtujkzxidLcAQW": {}}, "scid": "GVRg6DVso5TJCSug", "sessionTemplateName": "do4XTm8t1YTWqItj"}' 'NWXm9sraeMA78YSR' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'S2fPy5fpbbbMIu9l' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'u18jIMBUM77XmemN' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 75, "itemId": "LO03mnFSq9jJTVFo", "language": "FjxZjh5qUR1Pq4a4", "reason": "uaMfd0SQAfYIyzHL", "region": "8jxakuVu5r5B08VZ", "source": "xI4TU3apnZXoJ4gI"}' '4EQKO8xC4D0FsUo3' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'IB2kX5REQZsHyXzo' 'IXNf0KbL9HyJttdg' --login_with_auth "Bearer foo"
platform-get-user-subscription 'fLGO3ummpllnV6B6' '2P1Kazg73c6UpmA4' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'ehxNIIlcrZzgameT' '2mLkkAMjHyI0e2Ax' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": false, "reason": "LN3O7CEYjxqElP5l"}' 'A2FJ0iGLRTXGsC5m' 'xxse4eeuMgEctVEu' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 48, "reason": "mCDYsuff3b7G5FDX"}' '4mu0qPHb9Ll2EFEb' '8GnsthmQ2Y6ZGOiq' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'rg3lpqN5bOfnqJ5b' 'zDRzbhMxfEDE4Trt' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "IHyyMq79EdB9MxaF"}, "authorisedTime": "1982-12-20T00:00:00Z", "chargebackReversedTime": "1998-09-25T00:00:00Z", "chargebackTime": "1974-09-23T00:00:00Z", "chargedTime": "1994-11-11T00:00:00Z", "createdTime": "1976-10-11T00:00:00Z", "currency": {"currencyCode": "kcNhoqcRZRNATojM", "currencySymbol": "7daV0VwR3yNKDtMq", "currencyType": "REAL", "decimals": 36, "namespace": "a3Wb5kH1BrLWUetP"}, "customParameters": {"7nmESQDV3BD1nnEz": {}, "oUlUWqP4ElzL44KE": {}, "m3uHBMCP5ckjphUR": {}}, "extOrderNo": "s4ksgsKJ2R6Jacww", "extTxId": "u8W1zvrKMRPvwA9k", "extUserId": "6yJz03NETdywPqYe", "issuedAt": "1980-05-21T00:00:00Z", "metadata": {"0KYKIfFt4GYjUt4F": "1ZVy2qFfSr3psWjO", "yHLyKe2foqsVIfgB": "Tr8RcxRQR0NYdJzf", "3TMhSaynVs05nZC4": "Os7hqIH2NgARSG3Q"}, "namespace": "QNGNH2K0UuJdeGNq", "nonceStr": "uQnaXpDQ5rU2taDW", "paymentData": {"discountAmount": 14, "discountCode": "HiCn2hTefT8gPFJ4", "subtotalPrice": 100, "tax": 34, "totalPrice": 27}, "paymentMethod": "wVA5mozeeOjIFQfX", "paymentMethodFee": 98, "paymentOrderNo": "kwC8azx3IRWme3C6", "paymentProvider": "PAYPAL", "paymentProviderFee": 18, "paymentStationUrl": "r4D3NQdjrjkX3AMg", "price": 75, "refundedTime": "1973-05-26T00:00:00Z", "salesTax": 73, "sandbox": false, "sku": "AxbDPXU5xJBhIpJ9", "status": "AUTHORISED", "statusReason": "jLYBsx8oqMzbE0lj", "subscriptionId": "QaBtb47V691j0FZp", "subtotalPrice": 66, "targetNamespace": "vjOXptxzx6kkaZYp", "targetUserId": "l52sQR9Znp5d1eSw", "tax": 35, "totalPrice": 19, "totalTax": 67, "txEndTime": "1988-12-31T00:00:00Z", "type": "GBBEWrDbQ1ZzhDuL", "userId": "Hq9LTBstguOdN0O7", "vat": 23}' 'wNrfKJrkzwR40tfd' '9GFXChtxB10d4Q8n' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 22, "orderNo": "ZSWdEyOVYrTdDq7I"}' 'qbTVv8BLsqQW8HSr' 'Em5Y7jI232Sjktij' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'iNzTUe8KdizXmrmK' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 38, "balanceOrigin": "Steam", "balanceSource": "TRADE", "metadata": {"UsqxKocHomtjoU1k": {}, "UqRedwIu1TSRr6r8": {}, "mzfMedpcKhvHPlvY": {}}, "reason": "anGqEkn9OEVwLWGT"}' '4MXhmzvRQb7c0vmj' 'Wq9fQqzulLGfQMqS' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'LQDlRFYMVfiAMa6P' 'co7MfvikslpyL9BY' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 77, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"VVznF6hMYfksp8VQ": {}, "hYSFeBOp0ilGQFwH": {}, "UtZugblT3aIDKn9q": {}}, "reason": "JXncm5igpAewbmnW", "walletPlatform": "IOS"}' 'fyshYk3b5cAFVo85' 'r1b8Yp2QnuhQuIdv' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 67, "expireAt": "1972-04-26T00:00:00Z", "metadata": {"j6AspWBfRnLcLbp7": {}, "OmcrDJ7u1rrRPcnG": {}, "89rnNW1Yjfn8lY4D": {}}, "origin": "Nintendo", "reason": "cwfUBMdNuTaiLxFM", "source": "REWARD"}' 'jrSotKnpJWALpToj' '9rgr5RffM5JXvPdz' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 63, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"pDln04F8BQjzobhD": {}, "a8VxKOrfVfBRIfkS": {}, "tOqdXqhDMQ6tBLlj": {}}, "reason": "C7gcT3M1DArk4L80", "walletPlatform": "Epic"}' 'npmLiEu4CNtX2lnq' 'i7cHTSdGoLZbC3UJ' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 36, "metadata": {"zRCNAO6ZpqXJmPJs": {}, "o6M11LLZWKgWxn9Y": {}, "L16HQdtAneXGgxNg": {}}, "walletPlatform": "Nintendo"}' '3ZIUrIkfmdXVvaPQ' 'zzKdFg7N7piT8Vcr' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 41, "localizations": {"LZnuMNpKEIs3GC9V": {"description": "TK7tkJWFpHt7MdKu", "localExt": {"9Xwn5GHJDGatrYOM": {}, "O91CYEjX867n9PT9": {}, "fR7mMuBXPDKCriRK": {}}, "longDescription": "zTZ7TXAVRnUVbxEJ", "title": "cKHE764EwhQfxFKI"}, "OGT1WKSmLoA0ILaE": {"description": "SC1GJXsoBwqh0TQX", "localExt": {"a2j7v3zQJoQLTAlW": {}, "75icIKUpXazsFrma": {}, "GNoi3RPTgWotLNz0": {}}, "longDescription": "u8ySxA0yrjz4q7e0", "title": "EJnADXC2y0DY1E1S"}, "MK9oA4vK56dsYI5S": {"description": "KV5pDANyJ184miBh", "localExt": {"dVJt81fmLSyGuu5r": {}, "bJVIwRMtwApGbXnR": {}, "3yC6f2MHGGedk0Kz": {}}, "longDescription": "XRclOXdPYZQxBntt", "title": "u4yW5etl4Xk8Hd1l"}}, "name": "RtoPMvsu9oswEPTv"}' 'zwwGnpbx8MCIjKzy' --login_with_auth "Bearer foo"
platform-get-view 'lqW8auyseP9wEEyY' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 55, "localizations": {"K705ykRqSPYZgPm4": {"description": "JLsXVtBOEetHsxAJ", "localExt": {"8Ny1LRkPU9hrl5nk": {}, "pEdBe8bYWdok4UnU": {}, "EOyP0cPZf5OvolfI": {}}, "longDescription": "0mqZctohLheRaQkf", "title": "MLFW9B7jHZro4hhw"}, "nANAGp8zGqNGrcQy": {"description": "oA1TWPcy83iXfYXN", "localExt": {"dMkdg9TMwxNcQ6Ck": {}, "Vi8fqVPRqNbF5yLn": {}, "YSa8xFLvcYexMMMi": {}}, "longDescription": "DFh5RbW021cHN3Qb", "title": "zVuJZH3k54cExxWK"}, "tdGTW4FILotv5ycT": {"description": "a0i6ifYP1zfgjsy3", "localExt": {"VRjX4qA4g9OGoWw1": {}, "qnCAvdnAcokJ0rzq": {}, "X2KJcYHgiFDxclBX": {}}, "longDescription": "ap6j73doCWxhubMX", "title": "bxNvT6wAffv4uzKA"}}, "name": "wiI4wTxNIefCmtrx"}' 'Wu293551nQBNKcqC' 'kUXRj8gQHEe4CO37' --login_with_auth "Bearer foo"
platform-delete-view '0OsbzRKKPd6mjzLx' 'llUrFYn7cSuO7NxK' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": true}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 97, "expireAt": "1978-10-06T00:00:00Z", "metadata": {"cOqsd5v5n7eXCo9g": {}, "ZWdxfIdW8fNAM5Yd": {}, "HivK2Q0WwolQy037": {}}, "origin": "IOS", "reason": "paPeudUtKPJUmAvx", "source": "OTHER"}, "currencyCode": "IbrA8XAKKWMDebeh", "userIds": ["75o2MFOa6xgPt69Q", "ROGDeJCyHvUsnLvX", "Sjpt0wrfWPXaI1Jb"]}, {"creditRequest": {"amount": 60, "expireAt": "1981-08-12T00:00:00Z", "metadata": {"gQHvs25eiQO3oWdg": {}, "Xdm1IxL1OtleUBqB": {}, "O0Ze049k9W6ZLVJz": {}}, "origin": "Playstation", "reason": "pUsITfVruDukun42", "source": "OTHER"}, "currencyCode": "tfUs9559ilm3cauh", "userIds": ["a24yBTw3wfNGyWf3", "rw9Yn2z5cnbm7z2A", "VujS7Bq5bcfPW4pP"]}, {"creditRequest": {"amount": 40, "expireAt": "1984-10-14T00:00:00Z", "metadata": {"YXltCxyztUnj17t3": {}, "gHBXvjvziexzOLbO": {}, "WbtcJUxM3AWyDkA5": {}}, "origin": "Twitch", "reason": "BoBmSLi0R7zDFMoN", "source": "REFUND"}, "currencyCode": "5P4kxmHtFbjqurHi", "userIds": ["x0QYycDH5we2Mx0s", "fzJwKuc7EpiQEzz5", "YCnYPT4i4mxc14iR"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "N5osRYO7wbYh7q02", "request": {"allowOverdraft": true, "amount": 53, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"TURUFmqNc8xhQqpt": {}, "ccNorRls7EC3nDnh": {}, "FvDlFd7iyZpvWVJF": {}}, "reason": "K6ZuvlzGCII156hI"}, "userIds": ["4ZlYY3rEuHMWwQNm", "CQmGCF963CbsOawl", "g0g8HIxpzm9AcFhH"]}, {"currencyCode": "RBQJH6fNekhk077g", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"j55huTA6AvmW0567": {}, "BFqbrPIuxKmBXLi6": {}, "GpnqAeMvg3w0FQ15": {}}, "reason": "20WM3TxWXSdTiKdv"}, "userIds": ["LJpIPxzLE1V9U1Ng", "a2UREoBSFtCLy2Cq", "gCG7JwJCDqkzOdFw"]}, {"currencyCode": "pH7Oc44yjRdfqZgv", "request": {"allowOverdraft": false, "amount": 67, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"8AQaCaw9UF7cdSDd": {}, "99DQZ7vnTx8HDXTJ": {}, "Wiyw17ogzmbj4SLY": {}}, "reason": "DrZJvDLGvn6qtroZ"}, "userIds": ["cp16HKXX1ft5nBA9", "FMcKd7c94rEmIYuA", "xNIJVuMz04evSdE2"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'T5OAcUwYHGmG5rND' 'BF1oU37vjfyX5YLa' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["M0wmi0i1WABBbq8I", "zZsMFLX9ZhFXcFtf", "BS3ZIHofhwyM6Bw2"], "apiKey": "sFGQ5DQoDwzrKPOZ", "authoriseAsCapture": false, "blockedPaymentMethods": ["BicX3ZwzZ7aVhrkm", "hSOEozGOv8D0iVxz", "rec5kNwJAxm0Rdm9"], "clientKey": "l6nIhG5SilDDIsmj", "dropInSettings": "4h625dIsMKWBxF9R", "liveEndpointUrlPrefix": "AIrI81ZR2kNzh60R", "merchantAccount": "QNaTEhMXMepgzY9j", "notificationHmacKey": "LiAdMiQ7eDMkeBRM", "notificationPassword": "ur18nCxiV9bQMHpP", "notificationUsername": "bvflI3LkRc1NgZao", "returnUrl": "YAaCCeRgtstsU3Qe", "settings": "cxo4bQZO3P2f8TTO"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "Vf6jrr1OL606QpqC", "privateKey": "gxt0NgDSj1T6EdeY", "publicKey": "FmrLT0HbvS4kSSt3", "returnUrl": "CyDgf6eFAiqSkHi0"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "BR2ElF6z6eJKuOW6", "secretKey": "1akRFizqxCmudSXi"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "vAL3n478mhb2I2yB", "webhookSecretKey": "JeCJghTrk68FWFzu"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "LBdlrKjUbgZQfw6Z", "clientSecret": "ys3mN8fIcC9Ckhar", "returnUrl": "fqaoMsGyv1RuSNdy", "webHookId": "cDssUeHiVDXzSJ8k"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["bFAyidbnXdMSwmkB", "kKC1h6h45u0wuh9p", "Y0011jSmHFTtfM2m"], "publishableKey": "GUUpq3ix7Am7W1fw", "secretKey": "JnV94BrMSP31wAkV", "webhookSecret": "H75UcmNXK5RqcIo9"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "lpz9oM52vHPlwVV3", "key": "jlPKDEYahnlLJaLC", "mchid": "vjRKKX1brmkJDfdn", "returnUrl": "gbQD3pO8U3W94Z8I"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "W2MAL9gYHEV3wnTZ", "flowCompletionUrl": "TvYYf4ZFuV6L2Ald", "merchantId": 30, "projectId": 0, "projectSecretKey": "WWRN5wNYlFiliYmB"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'rqrOc0NIligBrOkB' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["ljwRENjt04ZpyTTZ", "G1LxLdySvyVqY8nx", "BZbHcPHEFuEVP9bF"], "apiKey": "07gnWDULkJPQR0UJ", "authoriseAsCapture": false, "blockedPaymentMethods": ["r8ouccGH0B4LCe2h", "0iFCCZgFWs5s0nT8", "9A88GDOUClGyzYgn"], "clientKey": "YTdim6PkRoq5TO65", "dropInSettings": "KWh8ztRJkXxUAj3j", "liveEndpointUrlPrefix": "zZvEaY103YUIMuSj", "merchantAccount": "DHz0zPWMZQNNP2Jq", "notificationHmacKey": "QqhISTBT1Gofv4Su", "notificationPassword": "aZ8yCB9TVZnuzgvA", "notificationUsername": "ZJRm71EC3ENuvD8O", "returnUrl": "Psp5Z3ez84KVB7He", "settings": "WPnVeFdy5ezlCU6S"}' 'GzkMpTL2wxobjxAb' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'agqEmXn6U2VeV2em' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "K3JecJA4skqCbPxR", "privateKey": "kIAFQh9yDdoLE2s7", "publicKey": "mrVrmTJwtBTzQTrN", "returnUrl": "o1LcWNf7xHpi1JZJ"}' 'jIRtCfqDHSlo54zS' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'nRN0zGMworzym1z3' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "ZdetOic9AQOFWpdI", "secretKey": "tLBhvKJq9tWz9yui"}' '8a6jOflFJlZEhz1Q' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'Deh05hj92bwVVxJ6' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "2Q5AOAOyL65cPaOZ", "webhookSecretKey": "A8BG8KcVWOX9n3Ys"}' 'jJexnFA9Umz3KPIC' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'ya5Fk5TPaEbX29cV' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "8v7MXctihtxMnIr4", "clientSecret": "b7jyfL3zMkklGCPI", "returnUrl": "SlsnVA6z0uSfNNpJ", "webHookId": "UYzJxnOyvqmswrTo"}' 'yBIQumxDfAxNqCUt' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'izYM97ebZcYqwfIH' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["PWMkOmrT5HL16jMw", "ECnmwJv4rpqtzDaz", "0WUJlBCHzJ2v9K8c"], "publishableKey": "1zOlZg30pagfP0Ff", "secretKey": "OMBOpeQT4zYIbU4i", "webhookSecret": "9mLyX46Alt08rrnG"}' '8y2ScXkwjpAp82pG' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'cxvXaG9LzHpMS53j' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "llopwirRo3A8WxnR", "key": "0YaMsF3f5KLtpTSs", "mchid": "PMGDZTOwEP5Bhh0N", "returnUrl": "StWIggmhfAzVdNYP"}' '7Ao1z7FeJM2fWXGk' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '7JObSHksRkabpmvR' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'sc7ZYvXCT6m6mRZA' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "lLBczJVeil7GbG1I", "flowCompletionUrl": "SBCkcnpxKUxLjmxh", "merchantId": 57, "projectId": 91, "projectSecretKey": "hUHA0FJZwP8GslMp"}' 'x3m7lEXTmnTbtjK9' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'RsyoqT3adB48Jxp2' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' 'Itg9jTNZvpFEUI21' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "ADYEN", "namespace": "o5wSDHnyabk493I3", "region": "pvHKDaWhTN1qyxpU", "sandboxTaxJarApiToken": "zWIZWJTDzWguhujw", "specials": ["WXPAY", "WXPAY", "NEONPAY"], "taxJarApiToken": "b37DffTZ7yQz337L", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "CHECKOUT", "namespace": "abmqqi90KTWwZk0H", "region": "GeJNaBjVdMB5kMzK", "sandboxTaxJarApiToken": "ycYrhr4FnNzdT4pW", "specials": ["STRIPE", "ALIPAY", "XSOLLA"], "taxJarApiToken": "4ewKFFLoGggX4gQW", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' '0eT9okl6MlWOl9fe' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'WO2bmOikTBJHTEm5' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "PSeyod5L6OooYoQn", "taxJarApiToken": "9iHEqWO1cVCUIOx9", "taxJarEnabled": true, "taxJarProductCodesMapping": {"FQdwLi3GOQkLtpuR": "NeT1CULEMPaOU5nu", "kycAUlkUSZKUrsxN": "RzF3NaUuCyQyze6z", "PKu5sE89JW8UU0Rs": "B6dvrpmInhHYzVVl"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'HGFSwjby6rMYkVQn' 'ZDUAbINRKQsxUO1Y' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'MxAndOj5O6IBwXJj' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'gQjgLoJyqwFVBd1Z' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'jaRXEdWgS12bSbPg' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'STEAM' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'ACDDQryNf9VGxbOe' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'Je4n9eUlBQZ2UGeP' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'WXbAyGiXa9nUsHCV' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'icuJ7onrUXVlB6xN' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["el4Bxb9KwFYqdhEV", "q3hbsApeASfR0ljK", "xqZcLuhwNDvValv3"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'bkoMXNzl1ywEPiun' 'ixlEAHZzHs8x5oPS' --login_with_auth "Bearer foo"
platform-public-get-app 'kZFIV2feXnTRlzAJ' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'y9oFOHB2KEsIdtoz' --login_with_auth "Bearer foo"
platform-public-get-item 'VltBhoXE4wgcYT5C' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "djaJuUzFIeqaVr1C", "successUrl": "E1gu6cYuzC77J4ir"}, "paymentOrderNo": "vZ9tktWLtDdlmVGK", "paymentProvider": "STRIPE", "returnUrl": "iolEw6IIpDc9X5ij", "ui": "mtDGvd9ESdY0eTkB", "zipCode": "WA44Qqsi5yOjvl5s"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'RN2ENn1RLi5iMPnb' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'g7o1zYpqUsliPyXZ' --login_with_auth "Bearer foo"
platform-pay '{"token": "GYIW5ZDtWbdkzPP4"}' '7RcUIi2CoNj4EG2e' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'mxKQk8cBrt5E8k8r' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'gfB8jIecOx5ugNCD' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'd6jW6fjtBcO3fWq9' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'qfmBv0XgJB6a7uyk' 'ADFpinFcH2ZMSYij' 'PAYPAL' 'Zsf2dvKZyHChRPHv' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'dkcKW21B5EFtD2pY' 'ADYEN' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'UOoMkOppZNOkqxc4' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '2HKv5wvtPJVsuzaB' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'ciSxwzuIpGBYHTHo' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'SVxgQCbpZx5yMGIQ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '1ZxVIefYlKBJyQMq' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "UEfDikX6yOlgZrn0", "language": "bkut_bCby_208", "region": "byp3mvyYT3GuaZVT"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'xBlw1IWeXKFT4rfS' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'bbSlDPGf9Fn32SJN' --body '{"epicGamesJwtToken": "PZkEfkAcJTMS4pVR"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'cCHIGfmCMTr9ACnI' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '2sMrEgl7ZR1HCkf2' --body '{"serviceLabel": 91}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'xFWia7yJ2d87XjA0' --body '{"serviceLabels": [0, 19, 13]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "zqRMuMPrIekxq58f", "steamId": "ikq83hqJ7HP63Se6"}' 'kVW5fkl60ImLBv6n' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'UU0r1rfX9stpvJUu' --body '{"xstsToken": "yPdzx8BM2wEgTtLR"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'T5stwQFUEbTPQ8p7' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'VMlxEXnqHwMyKpwp' 'hjUXvM1GqMkZ44UX' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'gdBqtJaRyDlP9qIZ' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids '5Krx6KkHagEugKJx' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'kU8Y58COtTNjnNSi' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'kJDg6ujKvq0CIa1Y' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'CK9PlMeQprfgLGkH' 'X1tdBjKmCBXETZwq' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'dzAX28DikGk8cWiX' '44azSHcwicUVq2XP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'ljTZj5R0yZSVQ8SS' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'eJ4qy4PIKleuV271' 'bwZ4niLSzQnv0C00' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'dtNGGzbGYSYo9fY2' 'EBZAHQXc4Xcae7VK' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["GKltBNE2UbhNtH3y", "Yg4Qnn2uhdw7C9Bx", "1LQOTCbAPLC3iqrk"], "requestId": "yJFOVaewFcv9h31Y", "useCount": 48}' 'i6LEqJERpbxEq07t' 'xnvZZeAf7QBuZK5G' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "JlBncg8tQnJOKHC1", "useCount": 90}' 'xjJZ4kiU3N8556ll' '2LQWpdESOBV7wZJs' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 2}' '7wSv9lyRyTdYBUlj' 'vBzvYNEtfgBFikt1' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "8cQ677SotDEtU2xB", "metadata": {"operationSource": "INVENTORY"}, "useCount": 62}' 'UxgbN5eElQNESFLD' '8hCc9onSNjbQEqFG' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "wnDG8kz4kvEv6tNj", "language": "smIS_YqsH_812", "region": "sSeKCvtPz7jagBG9"}' 'a1TZ87ltClc3RDXF' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": false, "language": "UI", "productId": "943ClrNhEdxd24ZK", "receiptData": "fvMf1T5FzYMf1jaC", "region": "gZosntPzP1vXXB92", "transactionId": "q150WEIetOXMt37M"}' 'Xy7Fp7lUfQqXrqGa' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'dwvKlJFX1ZHV9yo9' --body '{"epicGamesJwtToken": "Ur1hfhmGEKuVUZdC"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": false, "autoConsume": false, "language": "xhAU_sqVR", "orderId": "6lKWJwHO65aOFDwp", "packageName": "qy7XOU3DwglyMGNl", "productId": "l4O8ELahcNJqRjep", "purchaseTime": 6, "purchaseToken": "iOZJpUf9RpcfEQn0", "region": "O6D8PGQuazAypgWh", "subscriptionPurchase": true}' 'oYfWObyNJKVSQsaC' --login_with_auth "Bearer foo"
platform-sync-oculus-subscriptions 'okoGynp6xcqNKJnA' --body '{"skus": ["hrSt96OaARAjHLGV", "3sNxS8uLBZiVRYIy", "QLcslTEqgVNG8Aqk"]}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'tgvjwNJAwIpEy2ZN' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'pojZ24I2n25smsrm' --body '{"currencyCode": "JFHGiYnyhbqxLuTZ", "price": 0.5623261489741004, "productId": "xgiUaiyy0aWrshpm", "serviceLabel": 2}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "4M78smYdyge6DroO", "price": 0.39349206400528547, "productId": "wOxI4G6jZzoYIFAv", "serviceLabels": [10, 59, 95]}' 'T8XQw2EOq6BFjmN4' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "OqKGLRpNWzKZtZnx", "currencyCode": "gywmr4CYNGm7Tk1m", "language": "sZKE_oJsV-357", "price": 0.1714838943426199, "productId": "sfm7hcIFdkdrwAcK", "region": "2lUda9h9FgvfhiLE", "steamId": "AkA7n6516ydoRT1q"}' 'ZBrdTnGrwHeWoQXP' --login_with_auth "Bearer foo"
platform-sync-steam-abnormal-transaction 'FWFaKbDgrGkv8SVw' --login_with_auth "Bearer foo"
platform-sync-steam-iap-by-transaction '{"orderId": "LyS4VbHJvD0lL7aZ"}' 'UY9d1Idud8bjYeBV' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'XBOX' 'r7zHYmRE4X36KUOd' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "fEmoIYwSxxAsfwDM", "language": "KW-MN", "region": "t0zPkQWRUlgE0kxz"}' 'FMq9ttbEHAEV7C65' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'Ans9SquNSJIay5Vd' --body '{"currencyCode": "UdYy9Y9OCSmmT3WK", "price": 0.14327200815918018, "productId": "jbqhT3uyQRXvvcUY", "xstsToken": "DeWPZ8yhwQ0gIdj1"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'lTJdNLmAvEdEBVAU' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "3rbkv8V98cupW0L5", "discountCodes": ["r4PYf48r66MaToxB", "WsiuITRMSPOUfWQw", "iliy2vtRkpqL6KrV"], "discountedPrice": 6, "ext": {"xOoIpWzacOvwUsnI": {}, "bQM3ZAtyEWKWoZRU": {}, "L7wS3HaMTXAX6y0S": {}}, "itemId": "TTN2sBEijjjpvSzG", "language": "fW_XiEW", "price": 61, "quantity": 89, "region": "BPyd1jJBxbrbuFay", "returnUrl": "9PXgEQS4871QSmss", "sectionId": "pn5sNfifK65tvaH9"}' 'jwcO48pthyYpBJDH' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "IIxTIGI5EssYllIq", "discountCodes": ["O07L9GG1uenDihce", "GlHm8VTN56tJKwD8", "jJzuQ8GglVgxjOGQ"], "discountedPrice": 1, "itemId": "bq5KikDE7hWvT5bz", "price": 5, "quantity": 40}' 'fzIpL2pWB4XsdrxI' --login_with_auth "Bearer foo"
platform-public-get-user-order 'F6kEAmKGNEmFPcUA' 'LNziO9Bz2wx4kDAm' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '8XIleiujtv2NdQTY' 'oHZogW8lBvniHdAR' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'adfSoctA3GYO94ZO' 'o94gS5DHLB65fxQ0' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '6GwTmobiBnfrnq9k' 'OFBWhUTPiKR3qcbH' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'LGplYsS3jsRZffCd' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '00VrgPuNtOv3jbhG' 'paypal' 'E7sH2G9MJ6F7Rr7O' --login_with_auth "Bearer foo"
platform-public-list-active-sections '15jqeKssQpme6eyM' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '48tE7eJRsXNeveQX' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "qnFRYmEIX40XOUoL", "itemId": "Oa7oDz00gxcoaH6u", "language": "uxtF-766", "region": "poPRiClZ6rlwX99A", "returnUrl": "HMLHqguYykVWzNwP", "source": "cvGyieBsRUduW5lx"}' 'SlorWEGN5bPGSOSi' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'iItrSrEJMBAIwTLk' 'rMDFQfpQ9o0GJMTf' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'qRRaZozM8xCBoaS2' 'FMwfWNCbN5GelVOU' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '0hHnsCl5k6Jxh5mk' 'mQzKg0jWCjpGwh7p' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": true, "reason": "T1C6KGTpA7JZ6xul"}' 'lPROSfiW9zcxmgNf' 'THu3vkZt9FgWckjN' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'pHhM2ZXp4N0ROmUC' 'TrS7Gi9Iigk9vamO' --login_with_auth "Bearer foo"
platform-public-list-views '7Q2WQwSWqSs05rjI' --login_with_auth "Bearer foo"
platform-public-get-wallet 'Sy4B0X9AJdkT7UYC' 'V8agvwOI2LlOQNRN' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '132RdgwMXv9olKpR' 'yWQim3qlART9mPPm' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'XBOX' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'vlkBGPJFaFzkABC8' --body '{"itemIds": ["zWMcYW5iRrw32FRg", "8y4rOuj7J6ijJbcy", "cXmBcrJLb7labyot"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "ifVk9KyqceGv0CED", "entitlementOrigin": "Epic", "metadata": {"VSjINYeKLowG7UQB": {}, "9pXzuCK5qd2m8A5a": {}, "xixm9X9TXNhN8y1P": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "1G6bYgIbVKp4Kgew", "namespace": "2mHDksA6Mv9Nzs19"}, "item": {"itemId": "eBq9a1L8S1yduOws", "itemName": "cICro6P8FWIPeqaB", "itemSku": "eD2uBAvIXEc2CCgY", "itemType": "cFo9A93o22UgObCO"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "BWdw2b031dm4N41M", "namespace": "Opmm04BlZUAlYnCT"}, "item": {"itemId": "11qD03er5mdraK47", "itemName": "FdxXisVlo3aVOGAR", "itemSku": "FDJcGWy826ilCxAx", "itemType": "QUM5DyrPfBmpZIzS"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "UZqVR5FWGfH66eFC", "namespace": "MTsLA8vYVvrIAEeh"}, "item": {"itemId": "UV0jsjAyVgxS54NN", "itemName": "s3XdhMbQX9D1znEW", "itemSku": "w9p7g4UsQCTKDh5n", "itemType": "9yc34xF8qFllM1LT"}, "quantity": 35, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "MP3Nl4T3ujvV7W6A"}' 'DLtn7oInn1Bz3wM3' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'BI51etn17OcmSVHZ' --body '{"transactionId": "6wtPVAwgvxYxXJTd"}' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 42, "endDate": "1979-12-17T00:00:00Z", "entitlementCollectionId": "p1nNYHREmm1cBuaR", "entitlementOrigin": "Epic", "itemId": "juDITjifWRbmtK7M", "itemSku": "TxcCWnMiCLsjroKH", "language": "PApA8GsGwyocvY9N", "metadata": {"ePjLJQJXwUApJWoh": {}, "Xn01RB7pu7BaONXy": {}, "E5fIDbsMi48xOYVv": {}}, "orderNo": "EcEm53BYMBacQBIu", "origin": "Steam", "quantity": 83, "region": "Vs7U0AJtWPRteszM", "source": "SELL_BACK", "startDate": "1973-01-29T00:00:00Z", "storeId": "0R5Fsrf9xbVfgvG6"}, {"duration": 87, "endDate": "1995-09-24T00:00:00Z", "entitlementCollectionId": "gPQw3MVXe4xBPDWH", "entitlementOrigin": "Nintendo", "itemId": "HCCVDBRjPUQWYVxG", "itemSku": "QVFJlDDJ7z4Pb5jy", "language": "GID39Ung1D57FjYK", "metadata": {"lJiRIvhej77OSPwd": {}, "zMSmrSvQdsAdTUGp": {}, "d8KFrXKFA2gdjQCY": {}}, "orderNo": "oE8b0CZetLfpFNyp", "origin": "IOS", "quantity": 93, "region": "75rhOmR4zFjoJZVK", "source": "PAYMENT", "startDate": "1975-04-13T00:00:00Z", "storeId": "OD2ePKAKYjJMVnYj"}, {"duration": 90, "endDate": "1983-03-16T00:00:00Z", "entitlementCollectionId": "KqavWpydepM3ap06", "entitlementOrigin": "Other", "itemId": "B9Okr0xJ5XRZVoxP", "itemSku": "GOLVBIlFgTAsXgqx", "language": "3mfB5ZwV25N7NAvZ", "metadata": {"dGuyYEYZE3KaGSdh": {}, "EGKcp6g1A8O9N9cb": {}, "YBK6XOBDpR7SH93A": {}}, "orderNo": "E1Toj5vygVvLSJvd", "origin": "Oculus", "quantity": 88, "region": "GpmmUeMikW3s54zf", "source": "DLC", "startDate": "1980-08-04T00:00:00Z", "storeId": "0O4rEZTbFDj2L2Mc"}]}' 'vCrrR7h9uKLXDaRf' '3pxKtJbRY5luCwKr' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 't6wn3yVrRCh6j7rp' 'v8K8fBAeRa1R6ksx' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'LYGkOLgReff5IHxL' 'JIemNHbzgAFjtjC7' --login_with_auth "Bearer foo"
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
echo "1..507"

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
    'suvgIUkB2PAGJqOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'kdlZB246OY0dPVMd' \
    --body '{"grantDays": "2WDUVEQTpfyAIoF7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'qsANBbEKQrgocpjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'NenRlDORLvP7ynTu' \
    --body '{"grantDays": "XzafCqlMrrVIehVC"}' \
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
    '{"clazz": "f3AwIzUdQ6sTrUg7", "dryRun": false, "fulfillmentUrl": "LrZraV3NLBUSrFnz", "itemType": "MEDIA", "purchaseConditionUrl": "rYz0GFpSVdxFsXAp"}' \
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
    'roclyXllFitPamSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "RzDIZgSk6suS90Zb", "dryRun": true, "fulfillmentUrl": "xgRpTSUppvO3QG68", "purchaseConditionUrl": "KeD7QJQEEVDAg045"}' \
    'BvtPd7ibBA3sd51m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'DooH53vibq3Qcrtt' \
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
    '{"description": "8L5dIebsw7EjkMnJ", "discountConfig": {"categories": [{"categoryPath": "SziEA43WqIMJdrqH", "includeSubCategories": true}, {"categoryPath": "sJ98WRjqYieXRthQ", "includeSubCategories": true}, {"categoryPath": "zLU9w8MJRIzIgJKg", "includeSubCategories": false}], "currencyCode": "y86BgnBQtm5AilVh", "currencyNamespace": "ASFlYMVJtE2dAeC7", "discountAmount": 31, "discountPercentage": 33, "discountType": "PERCENTAGE", "items": [{"itemId": "73y9eALKWinUJ7bA", "itemName": "uUJ7Fxg5LijlQTVq"}, {"itemId": "8Bh1p0NCKWNkLU5t", "itemName": "y3uQa7Fl3ZhSMLtr"}, {"itemId": "wnjTJVDlh112byTY", "itemName": "CDBnAvf8JpFuJSZi"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 79, "itemId": "D7JLsIM3VOMRvvqk", "itemName": "XDMPzOB08tpk0qhZ", "quantity": 1}, {"extraSubscriptionDays": 23, "itemId": "th4b4HtwEYX55pJN", "itemName": "TX1sDjSWiSXsV5rJ", "quantity": 55}, {"extraSubscriptionDays": 8, "itemId": "qC5W7g7hiwumJTI3", "itemName": "jlZPjoCdGiIP6cB3", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 19, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 11, "name": "MJXIuLWYb2iHHVN0", "redeemEnd": "1997-11-02T00:00:00Z", "redeemStart": "1985-07-19T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["PHaxkKxEDvSoi2X9", "SygvMG8QAaWUhIgu", "MvKDOrx0wQXKEroy"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'z2reP63EVHT72Vuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "oGP2IFXGU5hujEfC", "discountConfig": {"categories": [{"categoryPath": "Mt95DEjxqhgYqmMq", "includeSubCategories": true}, {"categoryPath": "dlRrQmuILkeRUafU", "includeSubCategories": true}, {"categoryPath": "GHHGI7csI8ecZSvz", "includeSubCategories": true}], "currencyCode": "ILhUoCh8lmKKocC5", "currencyNamespace": "Ea29JhfFGN964J8W", "discountAmount": 82, "discountPercentage": 8, "discountType": "AMOUNT", "items": [{"itemId": "oGFrDb8unXv1iE7Y", "itemName": "gEZspOJ0NiZl6OVL"}, {"itemId": "xKtkBpaCG8Nu5m4c", "itemName": "twUNV8ncebaJ0DCu"}, {"itemId": "IeEStt3PbyctX7HC", "itemName": "2haQwVWONEpAPedz"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": true}, "items": [{"extraSubscriptionDays": 97, "itemId": "dlqiyEJIQcbZJJ3A", "itemName": "hkrMi0bnppEJFISz", "quantity": 9}, {"extraSubscriptionDays": 16, "itemId": "8rGEr3cilJWhaW6j", "itemName": "NsM94E2FQb6S0Vma", "quantity": 93}, {"extraSubscriptionDays": 57, "itemId": "R7E3mkDSQkgVMhLb", "itemName": "M6H1MnNSKd0KStIT", "quantity": 44}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 66, "maxRedeemCountPerCodePerUser": 46, "maxSaleCount": 86, "name": "jAsgo51XHJBG2Pmy", "redeemEnd": "1973-06-27T00:00:00Z", "redeemStart": "1987-03-25T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["k14782W2oNo3X4m6", "wms9SPaHlqtDPry2", "vMON7sdhlilfpDT8"]}' \
    'o2iFrYtGfCZCcrvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "V2I4X26p21iDBZGJ", "oldName": "8ZMLwPJ871nV5ALS"}' \
    '7cneNLItUJgh74ty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'xkTR8ZCVJtkxjBJr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'NeQRsqkkKK2qxqzy' \
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["REWARD", "IAP", "ENTITLEMENT"]}' \
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
    '{"appConfig": {"appName": "tSXWjANSWIT9TLnu"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "NJAEk3A6A6rYiIu8"}, "extendType": "APP"}' \
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
    '{"appConfig": {"appName": "E2QmYiYqap7masUc"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "9yyBYepIqtrikdAb"}, "extendType": "APP"}' \
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
    '{"categoryPath": "2CgHxdmYDj9vZNgf", "localizationDisplayNames": {"I1AeYHe8WPQGPclC": "hxLfbXrH6f2GDrNb", "LOjGz34ct0ctEeH4": "3wYuLnI7cTzIUERP", "lQI99hMc4NbiJWP5": "r9EwbIGMGJ70P9Iq"}}' \
    'AyNlZ2OwFSebBkXk' \
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
    'axtY97TMJH8bO4GD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"HT6ZaUUkvlTKAhrx": "qHw7f813qNjzlcxX", "smGGcJhauxfhVKIb": "RvUnyElHPuQE3Gc8", "bY4IH0OXHZP6VVB7": "qjDHMS49dkv8vxyg"}}' \
    '6giNKzeFnlgGRgYK' \
    '3SeYvULYNIhs5PZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'TJmgofq7nlF5Ch8J' \
    '2Qs990APOU4hcdwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'nsTap2RJpHtncLyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'P3WlLmNdQGk6vneH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'oB1PXO1vT1AonFO3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "syvkYd78GsJGLbnb", "codeValue": "4Nvw7fnm4MnOqnqN", "quantity": 8}' \
    'jSJi0seeGJIqnatM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'E8GnNWfAY1yY6D1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'uusf0eOzoSyKttYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'UUlMRG8vO0OSsJmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'OJDUyyag9jBDJFJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'OEiWJ8cLrryS5a6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    '4tL8YKMrUBL6dDTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'wPIt1hrg2mhbI0ND' \
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
    '{"currencyCode": "shb7ZzQuBPyNi1Gh", "currencySymbol": "ZHEj6p5grjk5wzdk", "currencyType": "VIRTUAL", "decimals": 34, "localizationDescriptions": {"OUku8dtQoIrpvmM1": "9X4zFOvdRTpGmBUj", "fEU9vL8H96tuVfQw": "YIqDWqbPmwQw8J7n", "a1POTXhXLRU5prAd": "qnnPOiTVzAeQq6rn"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"WJoTpYoe2uHaWnO9": "8YwqHZnEDkfmNbDT", "MGgET2yS6C8a8L0v": "QDS4EVpBmsUzx64G", "r4XEm0uYYuAmqhft": "Ife2zdqZ7ht1vUiJ"}}' \
    '7jBXy8psNoHNalwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'vju62rPFMbE1cW57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'GaNZLT1z0GqDZN7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'tHOhVy48YYg1AkRh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-get-dlc-item-config-history' \
    '3NmbRhMxKeIgwq1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-restore-dlc-item-config-history' \
    'Zmxa0ghRG020QpWT' \
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
    '{"data": [{"autoUpdate": false, "enableRevocation": false, "id": "sVyK8EU8JYc00PA2", "rewards": [{"currency": {"currencyCode": "ef1jFeqQ8mBpTuvL", "namespace": "TJUzwXJFaWW3JVdY"}, "item": {"itemId": "pfHOYoLva2c4JscE", "itemName": "QfBFZXcSXpU81S5H", "itemSku": "9XsZyvZOFJ5RrFZY", "itemType": "cwfQ1Q2BbcjSpv6N"}, "quantity": 40, "type": "ITEM"}, {"currency": {"currencyCode": "1oz4tdgfKu4bmK8k", "namespace": "OKcEoCRjQJlPY3p4"}, "item": {"itemId": "2OS9iGNElTpMlvRD", "itemName": "ZSIuM0OXOHPluvsr", "itemSku": "y8AKSZxOhUhl3Y0E", "itemType": "shaG0uDiJNUuxK22"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "eswvkzLNIITUJGj5", "namespace": "FYaSgewLWHcBxz5L"}, "item": {"itemId": "pdkRCAU8HhmXC68J", "itemName": "FPdxhvBKee6wG66Y", "itemSku": "PD4vNdENY1r1rI0T", "itemType": "97qA1OiblWlz2LXQ"}, "quantity": 80, "type": "ITEM"}], "rvn": 34}, {"autoUpdate": false, "enableRevocation": false, "id": "6OHZzvdZHoIm4tKN", "rewards": [{"currency": {"currencyCode": "hPjNIQGFxGwgnSiZ", "namespace": "tChE0uof77AAPI5t"}, "item": {"itemId": "dPeFz9pGYsLNEGrf", "itemName": "y9qHKufJfk0MeG3q", "itemSku": "YJr6PuCVK9WmDAdp", "itemType": "LVTVsj9pDiyybXY4"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "7JRFMRaeIaQuPWPl", "namespace": "kxeotrNakKGvOSvp"}, "item": {"itemId": "mZZdlNXdx2kWmSqo", "itemName": "dNZgfQyDVVkkqiMi", "itemSku": "Rf2yCyM0Tp5GJHHb", "itemType": "sLJ73mCPhhmUyIwg"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "oVSLrbs5niXkjpkO", "namespace": "gRCC7qfz5jV7NTRY"}, "item": {"itemId": "ld9FJJ10goNq8uq7", "itemName": "9Du28SRRAMaQFEzp", "itemSku": "peticckSUon7awfo", "itemType": "l07696uxp5ieMjjO"}, "quantity": 10, "type": "ITEM"}], "rvn": 65}, {"autoUpdate": true, "enableRevocation": true, "id": "3AJN97kUjwiCmWQv", "rewards": [{"currency": {"currencyCode": "brxQpUSnos6QiHyr", "namespace": "cGeRv27hj73EtufH"}, "item": {"itemId": "uNIp0GXpM4nbG7aw", "itemName": "w2TANW1Or7TvLoL0", "itemSku": "wwHoRMNexBOron8w", "itemType": "IdUbp7xVMKfbAJfW"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "ixULzSeTnUWGxxfn", "namespace": "MIDSCPr1m1Fg6tc2"}, "item": {"itemId": "50c2okDTem6o62xF", "itemName": "Y6TNqoLFFS4wB6Um", "itemSku": "7ir0n6O3vbYVjrcE", "itemType": "rgoApAxyDnHjAx7r"}, "quantity": 39, "type": "ITEM"}, {"currency": {"currencyCode": "mFwLGan2SrKckNxL", "namespace": "WH6rjhRL9uxoV5Oe"}, "item": {"itemId": "8ktlePEo1xBuRSv6", "itemName": "VizgtOXZy9cQ6B07", "itemSku": "4dTJZqeOllKQNwJU", "itemType": "GtC0tAhxn1ay6ruu"}, "quantity": 93, "type": "ITEM"}], "rvn": 100}]}' \
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
    '{"data": [{"platform": "PSN", "platformDlcIdMap": {"HODRb6skOj0lfYFG": "nQCAWidWPjYgyebU", "6rHFirnUpZ9UJ4N7": "8qHTGdn7gE4bwLzD", "Ew2PYt8x9SSaOZcE": "vG6KZh954BmtuIFl"}}, {"platform": "OCULUS", "platformDlcIdMap": {"9QWqwTF2pOJsY86x": "Af5y1iy01FkEEXlK", "iTIDgP7wuXQdfW99": "JglScoOlkkBxiXf8", "OBQRqXWXQ3JdXdFz": "8pc0EEziE5yIvijq"}}, {"platform": "OCULUS", "platformDlcIdMap": {"kSONmw1BDqqSctLL": "4WfGq8JCDnwGWgcc", "uzuc6QDRMGdBPbUy": "HTYPS8CGKXGon2ec", "c65YAFLweD9Z7U2l": "Nkorrw9QH3rNhDep"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdatePlatformDLCConfig' test.out

#- 64 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'DeletePlatformDLCConfig' test.out

#- 65 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryEntitlements' test.out

#- 66 QueryEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-query-entitlements-by-item-ids' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'QueryEntitlementsByItemIds' test.out

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
    '{"entitlementGrantList": [{"collectionId": "Qum4Dj7pR05RTGXG", "endDate": "1993-03-20T00:00:00Z", "grantedCode": "U7s2ZQAarwH0c87v", "itemId": "0PwZjydyzGDZM4zT", "itemNamespace": "TYI6O8coYDWUfcL1", "language": "yTG_448", "metadata": {"qeW5BxVe8iW7sGEL": {}, "nMdXRqdGPzxXvZPt": {}, "rhjeVBnTrsYihhgb": {}}, "origin": "GooglePlay", "quantity": 65, "region": "AZoFncMUdmf8hD3n", "source": "PROMOTION", "startDate": "1982-12-31T00:00:00Z", "storeId": "0wf5mQx6Hs7M5apP"}, {"collectionId": "Mc8ZR3bPCJ5n5s6D", "endDate": "1992-07-04T00:00:00Z", "grantedCode": "DBmrqEhGlkEmGdCb", "itemId": "wodVRjZJWuCQpjuJ", "itemNamespace": "zpPO7BPxVWlRFnIe", "language": "RR-EoCV", "metadata": {"8FQCyQBqKxayGvw7": {}, "MqOsypCJmfRnW0sp": {}, "gvjt7eCLDu6PA3PR": {}}, "origin": "Nintendo", "quantity": 88, "region": "QtB410iWT0SILVGX", "source": "REFERRAL_BONUS", "startDate": "1973-04-27T00:00:00Z", "storeId": "RucRpP1Tq7uYXhB6"}, {"collectionId": "FPfF5DvveMdBsPt1", "endDate": "1998-12-25T00:00:00Z", "grantedCode": "FkBPk0QLufK6eiT3", "itemId": "8raaRG1Fg0hfM5vQ", "itemNamespace": "mahJlT5OUDEMwAjg", "language": "vWGU_gICp_495", "metadata": {"CRdxXOBu3TWmHDVm": {}, "CGFoD7aNFj9wORAV": {}, "qRuNsXxRu4EQqR3K": {}}, "origin": "Epic", "quantity": 83, "region": "YWtFzplXVk36IpbG", "source": "PROMOTION", "startDate": "1981-04-30T00:00:00Z", "storeId": "PnIPwR1BinZ4ULwA"}], "userIds": ["GqWQIPK6mVytM5mB", "Zd9sB6CV9KiWkbdp", "KO8n42UuxEyfzZJs"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["RT39gKYLk9DmjJh6", "PnpTXWAUt8lgqNM4", "poGEvIKCe3MrLxmn"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'jmlAuaBCdhzXb6cB' \
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
    --body '{"body": {"account": "MPNMmjMi2uztFNfX", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 13, "clientTransactionId": "e5cAtTDvwFHcoODi"}, {"amountConsumed": 64, "clientTransactionId": "oF1pccdjjZpFnVLb"}, {"amountConsumed": 39, "clientTransactionId": "xerpjVPfktNnl8UY"}], "entitlementId": "H5kesuOtYHLqcdy0", "usageCount": 89}, {"clientTransaction": [{"amountConsumed": 37, "clientTransactionId": "MDxvlK9RnTEYv5eD"}, {"amountConsumed": 14, "clientTransactionId": "fGLHEAKhp612Y2nc"}, {"amountConsumed": 89, "clientTransactionId": "r3f6UqFGCvsMFEFl"}], "entitlementId": "XHBOK1RqtKYVObVo", "usageCount": 35}, {"clientTransaction": [{"amountConsumed": 3, "clientTransactionId": "IVWWLaVJwe2KAca1"}, {"amountConsumed": 1, "clientTransactionId": "jJZbwMHkFWLSzmAX"}, {"amountConsumed": 55, "clientTransactionId": "o4M51vuaFyqjQsTG"}], "entitlementId": "mzItJIOkEIRsSWOV", "usageCount": 38}], "purpose": "LyivYbMG9LXPbBh2"}, "originalTitleName": "E3wFchP3zTymfVfn", "paymentProductSKU": "y2M0KsS08cY3fjI1", "purchaseDate": "YTT3qUMd0U73RjVe", "sourceOrderItemId": "YSM479gn62lizsWG", "titleName": "rtIgVPb7hoo8YkNP"}, "eventDomain": "W8mWOJGtdXJGDsxR", "eventSource": "AR3NObYp43YXMHqW", "eventType": "eVjnOURxGvOhz9s7", "eventVersion": 21, "id": "jLUZHK0OO1yQsMBQ", "timestamp": "AdOfrtHWyGg5TU3I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "NkMgjsnP8itevmjT", "eventState": "Jjj5tfFQv384ri6A", "lineItemId": "7z0hsW0IHIYvJ7PP", "orderId": "gVaFwGhl5zqkzEu4", "productId": "1hVfVC7eLVWGk0Gj", "productType": "YReIZaDC2Au2bEpy", "purchasedDate": "mbJ4dPJmkdvyuDHF", "sandboxId": "FstLhZzletCqa3lJ", "skuId": "MQ1sGlfqjDBzOjNe", "subscriptionData": {"consumedDurationInDays": 34, "dateTime": "5JiwtMOfDfoMgU2y", "durationInDays": 65, "recurrenceId": "O0Y6TFpFSCsrhSGe"}}, "datacontenttype": "eExZYnGcrZHMKoTc", "id": "IXeKZzZBo6ARaQnN", "source": "ZQ1R0PGBFVnc37aW", "specVersion": "VjM3iVKjr5VDqakK", "subject": "dW767GAH1oiS1JuO", "time": "7MNoFPtRhYYIpNqV", "traceparent": "HbbCVwbitD5tWXZV", "type": "vjYqrEXKUDlmtixw"}' \
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
    '{"appAppleId": 30, "bundleId": "FtBVAWT8PxL8674K", "issuerId": "YMeN2W2CNqmO8JAL", "keyId": "tCiDuGQQsvWV3NSj", "password": "XUXSMKY09x4TKOws", "version": "V2"}' \
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
    '{"sandboxId": "fFFZwkC1PRjBWzTu"}' \
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
    '{"applicationName": "XttDREDWbOM3xQar", "notificationTokenAudience": "aaEVt3vsBCXpIgQz", "notificationTokenEmail": "kWzcBqVcuTTrIk6h", "packageName": "U0mqdwBJax1jBd6Y", "serviceAccountId": "ng8ps5XknDJZK5gF"}' \
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
    '{"data": [{"itemIdentity": "HyIOnLu9WBAS0qUs", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"TP0KrWQ3pgbHM0Sv": "y3GRenDzwlTE9Czh", "nck3GnyPFQHgn9jV": "E6QGkZ8AVzeiaDi6", "7E3rTwN2LrT85Arf": "e6EweJxWANt1bDay"}}, {"itemIdentity": "64EnFyFeW0oNhddK", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"PTfXVzS3hFUXbdYU": "08BQZXTcZnHoYaII", "5c5UqVvKR3ydSEb2": "trPjqlB5c8a78gp4", "BGN4NAydb6GgyFcz": "EOMXF1T1sU9xsmAC"}}, {"itemIdentity": "LFHrXWFobqnDkfPA", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"gVss4JzVKSusdLum": "oHh8TQWYk2vD3mUD", "wtTF1ATVQnAexrRo": "mTZFHX4cgtkxEx6t", "lxks0yGW8qDWfr7M": "F8Ptq10XBhcJfG9q"}}]}' \
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
    '{"appId": "YAEpR44fWWEsCETq", "appSecret": "KlcFcaL6XOoO3WqB", "webhookVerifyToken": "sbDmsTk9UuiQwezv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateOculusIAPConfig' test.out

#- 92 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteOculusIAPConfig' test.out

#- 93 ListOculusSubscriptionGroups
$PYTHON -m $MODULE 'platform-list-oculus-subscription-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ListOculusSubscriptionGroups' test.out

#- 94 CreateOculusSubscriptionGroup
$PYTHON -m $MODULE 'platform-create-oculus-subscription-group' \
    --body '{"sku": "ArAKJwZGVyknpOhu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-group' \
    'GhAnlnjyPBj7h3hn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
$PYTHON -m $MODULE 'platform-list-oculus-subscription-group-tier' \
    'cU5vgL62RA2BI7kn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
$PYTHON -m $MODULE 'platform-add-tier-into-meta-quest-subscription-group' \
    --body '{"groupSku": "izQ4Jx8In4w8yRFO", "sku": "LeTQyplscfsZvvUp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-tier' \
    'CMJRliFCmFC9uUxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteOculusSubscriptionTier' test.out

#- 99 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetPlayStationIAPConfig' test.out

#- 100 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "xI4yyrZIV9M22gRL", "backOfficeServerClientSecret": "sc6Jwt190s6yFiDZ", "enableStreamJob": true, "environment": "G65f3ACfS3A8JeRM", "streamName": "YUCgn7oklNewpAIw", "streamPartnerName": "tlAooXZ7HDb8g2Bh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdatePlaystationIAPConfig' test.out

#- 101 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeletePlaystationIAPConfig' test.out

#- 102 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'ValidateExistedPlaystationIAPConfig' test.out

#- 103 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "zW03O2pp9qVpZbsp", "backOfficeServerClientSecret": "pRsBWQ7RdYqZaQ8s", "enableStreamJob": true, "environment": "zSo0RzUoSen8CjEh", "streamName": "tRcnVsYOwypw6F21", "streamPartnerName": "uYowkPNGANjli9XZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'ValidatePlaystationIAPConfig' test.out

#- 104 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetSteamIAPConfig' test.out

#- 105 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    '{"appId": "kbrkh3dQNtIEwCcf", "env": "LIVE", "publisherAuthenticationKey": "VC0ymY7ABWgZVxM4", "syncMode": "TRANSACTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateSteamIAPConfig' test.out

#- 106 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DeleteSteamIAPConfig' test.out

#- 107 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetTwitchIAPConfig' test.out

#- 108 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    '{"clientId": "7agVhXIgoHE9eEvI", "clientSecret": "yV2DqxWhSV3r9vk4", "organizationId": "HQDiwqJUZHP7HM6J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateTwitchIAPConfig' test.out

#- 109 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DeleteTwitchIAPConfig' test.out

#- 110 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetXblIAPConfig' test.out

#- 111 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    '{"enableClawback": true, "entraAppClientId": "GebVw9nLvVm8UeFU", "entraAppClientSecret": "baGb5on2kvdeu5Df", "entraTenantId": "AxsrX7OiSRs0z2RY", "relyingPartyCert": "A8fTlbfUOSmR4F0p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'UpdateXblIAPConfig' test.out

#- 112 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'DeleteXblAPConfig' test.out

#- 113 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'UpdateXblBPCertFile' test.out

#- 114 QueryThirdPartyNotifications
$PYTHON -m $MODULE 'platform-query-third-party-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryThirdPartyNotifications' test.out

#- 115 QueryAbnormalTransactions
$PYTHON -m $MODULE 'platform-query-abnormal-transactions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'QueryAbnormalTransactions' test.out

#- 116 AdminGetSteamJobInfo
$PYTHON -m $MODULE 'platform-admin-get-steam-job-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetSteamJobInfo' test.out

#- 117 AdminResetSteamJobTime
$PYTHON -m $MODULE 'platform-admin-reset-steam-job-time' \
    '{"env": "LIVE", "lastTime": "1991-01-10T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    '1JlwPxpuUZm1GVuI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminRefundIAPOrder' test.out

#- 119 QuerySteamReportHistories
$PYTHON -m $MODULE 'platform-query-steam-report-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'QuerySteamReportHistories' test.out

#- 120 QueryThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-third-party-subscription' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'QueryThirdPartySubscription' test.out

#- 121 GetIAPOrderConsumeDetails
$PYTHON -m $MODULE 'platform-get-iap-order-consume-details' \
    '2Eihx6IJwMzUqM16' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'MYY2MVvo3MMCL4aV' \
    '6oMUzpMmsvvKTljW' \
    'spMrC4TeRTNUYz7N' \
    'INGAMEITEM' \
    'ZV6J5QloYCaB5Imp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'xpHJCcuqJR2TT3HE' \
    'YBW8Aq2KVQNFGaJE' \
    'yBVlQ5iHlTqgMzvj' \
    'EXTENSION' \
    'KRTVR95IwPCb2qOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "IRbBL0njCbitEJNH", "targetItemId": "wfW76v6GPVwWjIfh", "targetNamespace": "OXemeTgiENbhdRoh"}' \
    'ucoiX0GAQZEbNr6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "tQiKwKuIHMjiIjX7", "appType": "SOFTWARE", "baseAppId": "qb7cexeEhHz7OKYN", "boothName": "IMPTFnrbysdru1Po", "categoryPath": "tArVtIQyxp17b8SH", "clazz": "vRIiJgGrdz6Ar6ZM", "displayOrder": 67, "entitlementType": "CONSUMABLE", "ext": {"UI9Z0Fol65yD1dLB": {}, "QJcBsvUaK2iHOkgy": {}, "hgijqtdzrvCDzH5A": {}}, "features": ["gw3mGmogCJXjHTGh", "CyLXmLsHXWPqYBJT", "zlt302k4rdWgWYgF"], "flexible": true, "images": [{"as": "kSIurSOWI2donULQ", "caption": "okdCSsp87x6Jfe5Y", "height": 53, "imageUrl": "JwyaY7Ho61RoV0VH", "smallImageUrl": "7thk8lnCROZodh1g", "width": 2}, {"as": "rdqELbdqXaPlAMGm", "caption": "4h3PbLHDa7uqaaxq", "height": 86, "imageUrl": "csvlQSS6PyDb3vKb", "smallImageUrl": "Cw9eAGmM6lPAJMiz", "width": 41}, {"as": "8uXBZ2Kxk4a5FeKF", "caption": "m3raYpWl0MfF3iAQ", "height": 3, "imageUrl": "qKdh92wuH9hLkAg9", "smallImageUrl": "0cQgXeZnKRP6Gdv2", "width": 87}], "inventoryConfig": {"customAttributes": {"6DIokID1ZFk9fRCH": {}, "fId0Dhnin8RxnO0q": {}, "s4FykFXDdcUuEE9w": {}}, "serverCustomAttributes": {"h4CEOrPY29A1L1Xi": {}, "jb7GTIFWcZWKcGHG": {}, "9MBp1AEcNUzfWwpd": {}}, "slotUsed": 35}, "itemId": "Jzmy6DtxvO3nUiVM", "itemIds": ["7UfbH7Qv0Eyy6G3n", "83Sb2WXmcXtuUYtY", "kPAHldms0Nwlx85u"], "itemQty": {"nvbUiBJfyM9bc1hg": 65, "bMGheYVteLiiIKPj": 30, "GDNXw2L4mp580sUS": 24}, "itemType": "MEDIA", "listable": false, "localizations": {"3KvzpUEcp3cp4fWJ": {"description": "lLrbVQceKy5JZK1r", "localExt": {"VpGdpzlwFNJyyLoz": {}, "i8eBqPD6pfcv9jGr": {}, "7b2hHbaUEtBnsggb": {}}, "longDescription": "EVNmymBNr5C2BOjU", "title": "iOQVEbp3z13pDy37"}, "1QLVtDb6RZXatSim": {"description": "mKudqURkyz4E3EI1", "localExt": {"bSCYaa8JSNQdhrnv": {}, "uDGFiT4U6WQQwsTH": {}, "CgTvrGllrcttK4Wg": {}}, "longDescription": "zdUhB2YhKWidqRPQ", "title": "1hSmShNaSmVFsmFW"}, "74DkabvmYAT6qTg6": {"description": "ZOaTNC1LAentTXWy", "localExt": {"Bmb2Ir2yOaVvE1N5": {}, "2PwdeTQhMz99aZ3f": {}, "za0rlzqNhVNwgXBC": {}}, "longDescription": "Zr4m1UpizE7fm00I", "title": "B0YnQ5xpjcMxUGok"}}, "lootBoxConfig": {"rewardCount": 67, "rewards": [{"lootBoxItems": [{"count": 66, "duration": 97, "endDate": "1976-12-13T00:00:00Z", "itemId": "eamVgjm0xqJhfraX", "itemSku": "wzn0bbNK5rhgy51k", "itemType": "1e1gZ8QCEx41nhN2"}, {"count": 82, "duration": 41, "endDate": "1991-10-13T00:00:00Z", "itemId": "DXEHz2uROYqy72xP", "itemSku": "htIM8Rw0xHZOUW3j", "itemType": "lXYz8azHYdzaYe7W"}, {"count": 19, "duration": 73, "endDate": "1982-02-27T00:00:00Z", "itemId": "oU21EdgoOvT13nFP", "itemSku": "xMy9YNTBZTR5tZma", "itemType": "ZGxrhAPoREvGmmbG"}], "name": "W3SttwZrmKkREJXu", "odds": 0.0352894813910839, "type": "REWARD_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 71, "duration": 74, "endDate": "1986-11-08T00:00:00Z", "itemId": "t8vZSqh6SjLdDyVf", "itemSku": "6irpvxpCXFlM52jb", "itemType": "80Nlw8icwWRvvZB4"}, {"count": 82, "duration": 25, "endDate": "1985-03-10T00:00:00Z", "itemId": "aRIev5s4q7UwwraC", "itemSku": "Dr326Q66cxtjNTXs", "itemType": "CsfA2pIWzC6nrUav"}, {"count": 37, "duration": 40, "endDate": "1993-06-06T00:00:00Z", "itemId": "5cpOV3Qg6eU0Mc21", "itemSku": "ZZliCydumMW9HWHf", "itemType": "Z3bFTqXqdzpP7Rk1"}], "name": "qbFWhtwNaVCqf0vP", "odds": 0.8739186619281337, "type": "REWARD", "weight": 43}, {"lootBoxItems": [{"count": 50, "duration": 10, "endDate": "1993-10-18T00:00:00Z", "itemId": "AbudR95sQ1FygQvo", "itemSku": "X9pEJ3R0cuQGjCSh", "itemType": "STNyM9yuMOFavgMW"}, {"count": 50, "duration": 6, "endDate": "1983-09-13T00:00:00Z", "itemId": "izWKQdVExukcKDUz", "itemSku": "hKKARjqJSWImXvaL", "itemType": "XkvZvwk0v0OKy45d"}, {"count": 33, "duration": 70, "endDate": "1995-01-23T00:00:00Z", "itemId": "dPwYmvZkT3zo8gxM", "itemSku": "qM1wUdXsMjUbhRjn", "itemType": "DrYWlRfPpgHg36d9"}], "name": "NP5nNvzIlwtYI9wK", "odds": 0.796528289294184, "type": "PROBABILITY_GROUP", "weight": 97}], "rollFunction": "CUSTOM"}, "maxCount": 19, "maxCountPerUser": 43, "name": "xF2CFfEpf0qN2twL", "optionBoxConfig": {"boxItems": [{"count": 54, "duration": 8, "endDate": "1979-07-04T00:00:00Z", "itemId": "4HSEGpaUMmdPXWaJ", "itemSku": "Rdn3WMdrhlWqCc54", "itemType": "JfyGzMMHiVQ6covY"}, {"count": 59, "duration": 92, "endDate": "1981-02-08T00:00:00Z", "itemId": "I4l1d9YaLVuL1mLP", "itemSku": "65pId36F25c13PNq", "itemType": "Pn7XRlnqiWP9WWQM"}, {"count": 67, "duration": 26, "endDate": "1993-04-07T00:00:00Z", "itemId": "5N2egLXRiNNV5Fy4", "itemSku": "ilLbKzQFBHQ0FHWO", "itemType": "ul5WKkzjzRnLLFKG"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 59, "fixedTrialCycles": 0, "graceDays": 65}, "regionData": {"sZtVitkoRyEXWrhL": [{"currencyCode": "NPUvlrOA50xGdlq3", "currencyNamespace": "Dkm52TA4zLBSh2QJ", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1992-06-23T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1988-04-12T00:00:00Z", "expireAt": "1997-11-21T00:00:00Z", "price": 67, "purchaseAt": "1990-10-17T00:00:00Z", "trialPrice": 55}, {"currencyCode": "OPkJvsZhfMwJPOcR", "currencyNamespace": "FJTeKbAMIJChPyIh", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1982-04-13T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1990-07-18T00:00:00Z", "expireAt": "1980-07-27T00:00:00Z", "price": 40, "purchaseAt": "1979-11-23T00:00:00Z", "trialPrice": 52}, {"currencyCode": "KAVWv5cGRm3WTx0o", "currencyNamespace": "yOrycewrnLBAZlvn", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1975-02-08T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1991-11-14T00:00:00Z", "expireAt": "1983-11-29T00:00:00Z", "price": 72, "purchaseAt": "1972-05-30T00:00:00Z", "trialPrice": 93}], "JO7EUYasMTHGgaQ2": [{"currencyCode": "UErhcMpuZW4KtmXp", "currencyNamespace": "tKHAev0UqYpD2R7Y", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1975-08-17T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-02-24T00:00:00Z", "expireAt": "1973-09-03T00:00:00Z", "price": 78, "purchaseAt": "1998-11-11T00:00:00Z", "trialPrice": 46}, {"currencyCode": "U89e6CIBWn2Q3kMt", "currencyNamespace": "F5tiwPCAxM9oFcQU", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1978-03-02T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1979-10-12T00:00:00Z", "expireAt": "1982-10-25T00:00:00Z", "price": 0, "purchaseAt": "1995-03-17T00:00:00Z", "trialPrice": 81}, {"currencyCode": "ZTyB7k7Q9zNJHkXm", "currencyNamespace": "HB9cu1ZdRIZ1hHCp", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1982-09-27T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1980-04-20T00:00:00Z", "expireAt": "1979-12-09T00:00:00Z", "price": 78, "purchaseAt": "1983-07-14T00:00:00Z", "trialPrice": 98}], "UCyNQUITTM8jU9tf": [{"currencyCode": "r6NkPjb60b0Y8RDV", "currencyNamespace": "gsQzaeOv7xB8GlNY", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1984-03-11T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1977-10-28T00:00:00Z", "expireAt": "1993-02-13T00:00:00Z", "price": 69, "purchaseAt": "1989-08-22T00:00:00Z", "trialPrice": 35}, {"currencyCode": "76GaeCobrGOAvaYc", "currencyNamespace": "tXd3jNOlJBjBMsJi", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1990-11-12T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1978-07-21T00:00:00Z", "expireAt": "1976-04-01T00:00:00Z", "price": 87, "purchaseAt": "1979-01-16T00:00:00Z", "trialPrice": 71}, {"currencyCode": "Gm0x3DmUahjPVDOE", "currencyNamespace": "mwpWiJYxvvQCHIre", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1997-03-16T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1974-01-18T00:00:00Z", "expireAt": "1991-05-15T00:00:00Z", "price": 8, "purchaseAt": "1972-06-13T00:00:00Z", "trialPrice": 89}]}, "saleConfig": {"currencyCode": "NaFO3ABy1AeDryAF", "price": 10}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "GXFylcwoCMa2D9Qt", "stackable": true, "status": "ACTIVE", "tags": ["3o2DKmAp8kt8156L", "TKRHukM2BVMu418S", "7Wl7UfG3PbsgYDgJ"], "targetCurrencyCode": "0JRrcPbe1REA4kpx", "targetNamespace": "N9tCjk58n5fBl9xi", "thumbnailUrl": "CZH2KBHwuAW3jLkV", "useCount": 34}' \
    'fXpIPlcaufemZ4xl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'GtWc5UcGIGpI8Yhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItemByAppId' test.out

#- 127 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'QueryItems' test.out

#- 128 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ListBasicItemsByFeatures' test.out

#- 129 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'HkINdPYamt1NNvdm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'y7qa1StMbwcUsu3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'J0yHA6KDH87AmGMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'ChuhxZJsDNCQEtOn' \
    'YVE7i77NKczg6Mao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'Vcixj92JkMWuFc2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetItemIdBySku' test.out

#- 134 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetBulkItemIdBySkus' test.out

#- 135 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '9p8sArSRypvu88Wy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'BulkGetLocaleItems' test.out

#- 136 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetAvailablePredicateTypes' test.out

#- 137 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["RMMRloXySTO9W3BE", "I4eB0PHoEfIdFP0Q", "arAdoCQoVI26D2Id"]}' \
    'XV2RNnCRn6spzE0D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'j97Arjpd7IRveArO' \
    --body '{"changes": [{"itemIdentities": ["FED1MAfVZhADFM15", "pfl1N2CNDu3DpGXJ", "rOgVnrneQPU35uuC"], "itemIdentityType": "ITEM_ID", "regionData": {"kwoIQo88hLxgR5AJ": [{"currencyCode": "VEz4FiSPgU3FLs6L", "currencyNamespace": "bIwwxFBW1RyUyU8G", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1984-03-10T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-03-13T00:00:00Z", "discountedPrice": 69, "expireAt": "1996-01-10T00:00:00Z", "price": 25, "purchaseAt": "1972-10-20T00:00:00Z", "trialPrice": 90}, {"currencyCode": "X1mqJ4BtZCHdlmOz", "currencyNamespace": "x9DrwT5dJMDgZPQt", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1993-10-03T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1995-10-13T00:00:00Z", "discountedPrice": 64, "expireAt": "1993-09-12T00:00:00Z", "price": 6, "purchaseAt": "1990-03-01T00:00:00Z", "trialPrice": 27}, {"currencyCode": "Sr3JiNweUidBVB2v", "currencyNamespace": "TyC482FeT76mWyDr", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1992-09-11T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1988-12-12T00:00:00Z", "discountedPrice": 1, "expireAt": "1991-08-12T00:00:00Z", "price": 19, "purchaseAt": "1975-06-10T00:00:00Z", "trialPrice": 20}], "Rg7ST2UVRJN0qFJa": [{"currencyCode": "GDiDmatCvCembJFN", "currencyNamespace": "yIwxPt19hjyI7ALy", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-12-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1995-11-23T00:00:00Z", "discountedPrice": 55, "expireAt": "1976-02-09T00:00:00Z", "price": 69, "purchaseAt": "1975-05-26T00:00:00Z", "trialPrice": 40}, {"currencyCode": "qyBElA4m1Ywb6nMh", "currencyNamespace": "hSCXGzZMdNwUYOkF", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1991-06-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-07-13T00:00:00Z", "discountedPrice": 18, "expireAt": "1984-06-17T00:00:00Z", "price": 83, "purchaseAt": "1982-09-22T00:00:00Z", "trialPrice": 81}, {"currencyCode": "hLJ2qx2h93yz3Y7Y", "currencyNamespace": "tgdQMhzpcpwawMF0", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1996-10-04T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1975-08-29T00:00:00Z", "discountedPrice": 35, "expireAt": "1996-11-05T00:00:00Z", "price": 3, "purchaseAt": "1973-05-25T00:00:00Z", "trialPrice": 85}], "tw6qiRU6n8IKPZ1k": [{"currencyCode": "pSeRooa84wgi9Qjy", "currencyNamespace": "4LtkYsyCJFj0ayzo", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1972-11-21T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1989-05-18T00:00:00Z", "discountedPrice": 35, "expireAt": "1988-05-09T00:00:00Z", "price": 67, "purchaseAt": "1997-08-15T00:00:00Z", "trialPrice": 8}, {"currencyCode": "tbJmJSU0agO0PXHC", "currencyNamespace": "yo70kyuutjjQDfdr", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1993-02-17T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1993-11-10T00:00:00Z", "discountedPrice": 76, "expireAt": "1990-05-10T00:00:00Z", "price": 17, "purchaseAt": "1982-03-21T00:00:00Z", "trialPrice": 39}, {"currencyCode": "dbDNBB9LNziCP1xQ", "currencyNamespace": "ygVqAioKka1tx56A", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1983-11-26T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-10-18T00:00:00Z", "discountedPrice": 69, "expireAt": "1994-04-11T00:00:00Z", "price": 58, "purchaseAt": "1996-09-15T00:00:00Z", "trialPrice": 83}]}}, {"itemIdentities": ["ldZ0XAvFitLhI0sq", "jfua9x08SJmn2gM2", "q6wuaHlnk9AFkbwV"], "itemIdentityType": "ITEM_ID", "regionData": {"3uxrBGEumeTG434D": [{"currencyCode": "mlbwWuZpKPB4rzvo", "currencyNamespace": "2R5Q7tM4YbPsF33K", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1990-04-26T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-05-22T00:00:00Z", "discountedPrice": 85, "expireAt": "1982-04-04T00:00:00Z", "price": 64, "purchaseAt": "1975-06-09T00:00:00Z", "trialPrice": 40}, {"currencyCode": "47mQAQQzQAxQ8GRg", "currencyNamespace": "WKOBJYYXgFmEZ8kW", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1983-05-24T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1994-05-12T00:00:00Z", "discountedPrice": 71, "expireAt": "1974-02-17T00:00:00Z", "price": 80, "purchaseAt": "1972-03-22T00:00:00Z", "trialPrice": 16}, {"currencyCode": "xzBwWKzJldpqtAlz", "currencyNamespace": "VR0WqkbKYSr7IVc2", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1985-01-22T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1981-06-25T00:00:00Z", "discountedPrice": 54, "expireAt": "1972-10-20T00:00:00Z", "price": 93, "purchaseAt": "1994-01-14T00:00:00Z", "trialPrice": 62}], "rppNGl78VMGk3b5E": [{"currencyCode": "1GgAqoQkgiht0lsg", "currencyNamespace": "1U1DExMK4z32P13a", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-10-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1991-06-02T00:00:00Z", "discountedPrice": 95, "expireAt": "1985-08-25T00:00:00Z", "price": 32, "purchaseAt": "1983-06-27T00:00:00Z", "trialPrice": 7}, {"currencyCode": "bpyJTgwl3ZOMpzNQ", "currencyNamespace": "DtQNlDFMazvRX5v3", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1978-01-15T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1988-04-16T00:00:00Z", "discountedPrice": 44, "expireAt": "1971-07-27T00:00:00Z", "price": 24, "purchaseAt": "1972-09-23T00:00:00Z", "trialPrice": 1}, {"currencyCode": "8WEklkFFkJPn2yom", "currencyNamespace": "TQth1iJOyDZJCwuf", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1986-12-23T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1977-12-08T00:00:00Z", "discountedPrice": 98, "expireAt": "1999-04-27T00:00:00Z", "price": 57, "purchaseAt": "1989-02-06T00:00:00Z", "trialPrice": 33}], "WZ9kuWMnRcGzbD5i": [{"currencyCode": "C34s0kTiXwPjN8E3", "currencyNamespace": "wXz4Q1L3hAG9xOOi", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1995-06-28T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1978-04-30T00:00:00Z", "discountedPrice": 54, "expireAt": "1999-01-10T00:00:00Z", "price": 4, "purchaseAt": "1988-05-27T00:00:00Z", "trialPrice": 21}, {"currencyCode": "Mgh1DJARpi5KzpbD", "currencyNamespace": "PfXdGvodrl6UOwYZ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1999-06-27T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1985-10-16T00:00:00Z", "discountedPrice": 18, "expireAt": "1974-07-27T00:00:00Z", "price": 34, "purchaseAt": "1976-02-24T00:00:00Z", "trialPrice": 51}, {"currencyCode": "tX87XuWOIpQwptcv", "currencyNamespace": "roohLb6q3F16PO9Y", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1982-12-11T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1983-09-06T00:00:00Z", "discountedPrice": 43, "expireAt": "1980-07-24T00:00:00Z", "price": 90, "purchaseAt": "1977-04-19T00:00:00Z", "trialPrice": 90}]}}, {"itemIdentities": ["wVX2rvVr6DpLOyrg", "sLZV9arTxBgnOqH9", "lyv8wx2JosSHLipk"], "itemIdentityType": "ITEM_ID", "regionData": {"6e79zCfL2ar4zJmB": [{"currencyCode": "2wifDA7LpND5zXLh", "currencyNamespace": "rmEeBwTzs9QmLReE", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1980-04-01T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1978-10-13T00:00:00Z", "discountedPrice": 54, "expireAt": "1971-04-23T00:00:00Z", "price": 5, "purchaseAt": "1980-06-03T00:00:00Z", "trialPrice": 50}, {"currencyCode": "XOpDTl6yIwkTTCLl", "currencyNamespace": "RCEQSp3XwOSNJT3B", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1972-09-17T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1982-04-17T00:00:00Z", "discountedPrice": 84, "expireAt": "1979-09-03T00:00:00Z", "price": 11, "purchaseAt": "1983-04-28T00:00:00Z", "trialPrice": 76}, {"currencyCode": "YzBc16XXXuoJGXCy", "currencyNamespace": "zA8a5uh1LdVOaWOj", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1977-04-20T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1997-11-05T00:00:00Z", "discountedPrice": 86, "expireAt": "1994-11-19T00:00:00Z", "price": 48, "purchaseAt": "1997-09-03T00:00:00Z", "trialPrice": 74}], "z6bdDFDqRMyTZOXY": [{"currencyCode": "RC3gIRiYFpDlAEyV", "currencyNamespace": "uvyXITMn2F86xZRH", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1978-11-28T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1992-02-05T00:00:00Z", "discountedPrice": 55, "expireAt": "1999-09-04T00:00:00Z", "price": 48, "purchaseAt": "1972-02-26T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zUY6EuVZznqQVYO5", "currencyNamespace": "728Ri3CuA2GelFQy", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1996-09-19T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-02-13T00:00:00Z", "discountedPrice": 8, "expireAt": "1998-06-26T00:00:00Z", "price": 68, "purchaseAt": "1983-05-04T00:00:00Z", "trialPrice": 94}, {"currencyCode": "aCLekZch7a3b0hFY", "currencyNamespace": "qZQAUm9m9ht4JsrC", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1997-05-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1993-02-27T00:00:00Z", "discountedPrice": 37, "expireAt": "1999-12-21T00:00:00Z", "price": 24, "purchaseAt": "1999-02-21T00:00:00Z", "trialPrice": 68}], "GGsrJv0EyLkZej5v": [{"currencyCode": "oHh0KRDJjPEF1Lpv", "currencyNamespace": "oOxT54t5Ffna72ji", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1977-11-23T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1989-07-30T00:00:00Z", "discountedPrice": 53, "expireAt": "1998-07-06T00:00:00Z", "price": 39, "purchaseAt": "1987-03-23T00:00:00Z", "trialPrice": 63}, {"currencyCode": "794ngDQya3dvyjxR", "currencyNamespace": "120zHmDzxvCGS2mY", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1998-07-12T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1984-02-06T00:00:00Z", "discountedPrice": 25, "expireAt": "1974-04-28T00:00:00Z", "price": 88, "purchaseAt": "1983-07-08T00:00:00Z", "trialPrice": 83}, {"currencyCode": "kL8a1tEpNGaoJWjZ", "currencyNamespace": "SpZNjdKHqDX1jGg2", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1992-01-23T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1974-04-07T00:00:00Z", "discountedPrice": 28, "expireAt": "1990-11-13T00:00:00Z", "price": 64, "purchaseAt": "1989-02-09T00:00:00Z", "trialPrice": 21}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '9wbQz3euR4MhLQs8' \
    'XliOoWqixFdv5aDR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'SearchItems' test.out

#- 140 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QueryUncategorizedItems' test.out

#- 141 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'SnCrIQ2kChyafmo2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "nIKr9krylalbZWuO", "appType": "DLC", "baseAppId": "OVwGUgR3PEWI0N4k", "boothName": "2W2caqaRVdR05rSi", "categoryPath": "lF29Lpg0zAUzpliq", "clazz": "50demc4rS3d2v2ib", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"4gNmB9r9MA5lA6x0": {}, "lY16PWsrsxYq77iF": {}, "Ou0ybeoERsKMCPmt": {}}, "features": ["81nO4RNjvO8rZ5NL", "nE1aHAuVZKYNaKhi", "7EbburWcSjdGGqd3"], "flexible": false, "images": [{"as": "L6KqJTL11T4vlBRD", "caption": "jj3FKvRIguqDEJfd", "height": 48, "imageUrl": "DWJUW3I4SKjp0NOc", "smallImageUrl": "5dWAES7S7wBqBe4F", "width": 33}, {"as": "z2u3wwUBB3KkzIBx", "caption": "4VA9ZxbKQDqG7UJE", "height": 78, "imageUrl": "TCPTrqHc7vqaXxxi", "smallImageUrl": "GOrXbWC2k23JxAI3", "width": 20}, {"as": "Zp9rrR7RJbkDwkEj", "caption": "OWWCzn2paEvjRIcS", "height": 1, "imageUrl": "tVlNaGzoqpAFVT8P", "smallImageUrl": "kW7ouFIdlTuousRc", "width": 35}], "inventoryConfig": {"customAttributes": {"5uo9BT2QqCxWZGjD": {}, "Rc27d9a3AaZO1VcA": {}, "qwHJEyMrwNINM4zH": {}}, "serverCustomAttributes": {"FF9ucrEcYD5hjgrx": {}, "oEVEIkvpWupGhtaU": {}, "3oC1Ly7xHbAN2Bdv": {}}, "slotUsed": 84}, "itemIds": ["CfQOijhEI21znti0", "3vAJizEosjuIsTXK", "AQ4uWLCMgN7rU1yi"], "itemQty": {"WEODovRwzU7QiANY": 71, "x4luTsEk9TNqSiFJ": 50, "KYp3EQx9pSofiZZN": 5}, "itemType": "LOOTBOX", "listable": true, "localizations": {"zGaWok215MnSNTPM": {"description": "RaYf8Chh5tiLsXIO", "localExt": {"SE2JSDRlSX5uOgZ3": {}, "Msm86Jr35oZQ3WcF": {}, "ld5DKwJoCrYrlOXZ": {}}, "longDescription": "N7MoQZDN1sjuHXDU", "title": "9ZFHISuKMr6e9VKi"}, "3lHZdnYzFYEnOA6g": {"description": "FO3zfSvvmLgxlU5M", "localExt": {"dUdF7gHdIf6eMd0i": {}, "VUmBrFwFIESxo8uF": {}, "qKtoZiVPtwECFgcQ": {}}, "longDescription": "RsqYFtxbpKYKp18T", "title": "PWOixbTLfdOF3VtC"}, "UZ0wN81CLC324P82": {"description": "gdsOb5Jp6oxvvtB4", "localExt": {"aireJSZc7Cojp07D": {}, "FR7IvEhnKAMSw1WG": {}, "HPO22mCj7yFmbpIt": {}}, "longDescription": "mTcMVUlRoYFks2UL", "title": "HooisOHhyiZyNxeN"}}, "lootBoxConfig": {"rewardCount": 74, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 4, "endDate": "1972-08-13T00:00:00Z", "itemId": "pUdn8X5IZjtFT6Bs", "itemSku": "8OO0CVqXF6bMzRd2", "itemType": "Z2WjutGAptSES09Z"}, {"count": 4, "duration": 77, "endDate": "1987-09-22T00:00:00Z", "itemId": "6o87DKPLLTcjU87C", "itemSku": "2CAKbiD5PxA5v964", "itemType": "4D4d5jTjzZ8KpdOx"}, {"count": 36, "duration": 56, "endDate": "1993-09-01T00:00:00Z", "itemId": "8r5te5FkJ58wQyrA", "itemSku": "b67d9kC9MEhGrQVQ", "itemType": "3yKCwV9chX3evM1s"}], "name": "eGH9ZwZcLnJPavRN", "odds": 0.2831137470544832, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 37, "duration": 19, "endDate": "1986-02-25T00:00:00Z", "itemId": "p4sIwslUQociDSNS", "itemSku": "6hf28TvyyZjEMbPR", "itemType": "NKUABS8cyK8SnSvs"}, {"count": 96, "duration": 16, "endDate": "1988-01-16T00:00:00Z", "itemId": "LqYJevKKJR5KWRgH", "itemSku": "uLJEAS7pSDlIS4N3", "itemType": "VRydtvWZZFDNIc86"}, {"count": 93, "duration": 30, "endDate": "1989-04-24T00:00:00Z", "itemId": "j3grgVdqSpg9xpXC", "itemSku": "h79kxpJyTba2Sx7l", "itemType": "PUWhfLYtrkZ2V3jz"}], "name": "XzilslRzP96yJ7Rb", "odds": 0.7958545697029868, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 14, "duration": 20, "endDate": "1987-09-20T00:00:00Z", "itemId": "88XOEWI4jARIQkIi", "itemSku": "A44zjyRqefUM764x", "itemType": "XmCkJL9p2OQ5Ll9C"}, {"count": 43, "duration": 11, "endDate": "1980-11-30T00:00:00Z", "itemId": "nntsqrUKREAt8zG7", "itemSku": "Mwy6qt1KRlDGxhO1", "itemType": "YbPoWmG714ZA04yx"}, {"count": 66, "duration": 5, "endDate": "1993-11-06T00:00:00Z", "itemId": "WtFcnNAoxNPXPlSv", "itemSku": "6kWXBTTodpLcEI0m", "itemType": "WFWKlSwI38LyDyLT"}], "name": "QxmA6nDD3EFfeJdw", "odds": 0.2932172984912417, "type": "PROBABILITY_GROUP", "weight": 88}], "rollFunction": "CUSTOM"}, "maxCount": 12, "maxCountPerUser": 97, "name": "WL3hmjUydsgdt98K", "optionBoxConfig": {"boxItems": [{"count": 10, "duration": 23, "endDate": "1971-02-24T00:00:00Z", "itemId": "aQpgEAKKLcKbPxGv", "itemSku": "L2c7KalLFWBzkHql", "itemType": "6eJa7PZ2MvexshOy"}, {"count": 77, "duration": 54, "endDate": "1987-10-23T00:00:00Z", "itemId": "l1xy1H8Ag2XY2Tny", "itemSku": "PCVsWzhPIeHkoUSe", "itemType": "T3lv51D9Vwsfzatv"}, {"count": 73, "duration": 51, "endDate": "1998-02-09T00:00:00Z", "itemId": "y8DGO7yuqGFaSZmL", "itemSku": "nl13NthHP0LDshHS", "itemType": "WtyrOFmeGGIRRLbs"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 78, "fixedTrialCycles": 61, "graceDays": 89}, "regionData": {"O0TIQbgg12LHWqVd": [{"currencyCode": "QIiLCN04Qo69tjPC", "currencyNamespace": "e7O061ScAQ7gSO3G", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1993-09-07T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1994-08-15T00:00:00Z", "expireAt": "1982-10-22T00:00:00Z", "price": 28, "purchaseAt": "1980-08-30T00:00:00Z", "trialPrice": 30}, {"currencyCode": "ilWhSc6XIxh1HqBg", "currencyNamespace": "5FhY2vclqnTbyZ7f", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1998-04-10T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1973-12-31T00:00:00Z", "expireAt": "1983-08-15T00:00:00Z", "price": 6, "purchaseAt": "1974-11-21T00:00:00Z", "trialPrice": 31}, {"currencyCode": "pmibPCLiJaHXEyuL", "currencyNamespace": "QOO6qVUihFznsLFP", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1999-09-19T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1980-06-04T00:00:00Z", "expireAt": "1978-10-09T00:00:00Z", "price": 40, "purchaseAt": "1992-04-11T00:00:00Z", "trialPrice": 55}], "6j0Apyricmsku6ry": [{"currencyCode": "ZK7UKLhMA3DOG2Tu", "currencyNamespace": "IwxdK6goe9uJ8PAn", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1976-10-07T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1978-04-15T00:00:00Z", "expireAt": "1971-05-28T00:00:00Z", "price": 89, "purchaseAt": "1993-09-13T00:00:00Z", "trialPrice": 18}, {"currencyCode": "KACMfaESKKo0RBtK", "currencyNamespace": "Dj9PgWnODMMswus0", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1976-10-27T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1981-12-01T00:00:00Z", "expireAt": "1989-04-05T00:00:00Z", "price": 65, "purchaseAt": "1992-09-27T00:00:00Z", "trialPrice": 18}, {"currencyCode": "9npo1k2W89U6PA5B", "currencyNamespace": "yr1VJKsNpin9ZAg5", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1985-07-25T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1993-02-02T00:00:00Z", "expireAt": "1974-05-13T00:00:00Z", "price": 16, "purchaseAt": "1994-05-24T00:00:00Z", "trialPrice": 80}], "e2ntrz0FUDXjV0Gm": [{"currencyCode": "cFSjmJGQU5YRHjMz", "currencyNamespace": "3bo23SF3XkwdkgeN", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1985-05-03T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1977-02-24T00:00:00Z", "expireAt": "1984-02-12T00:00:00Z", "price": 26, "purchaseAt": "1997-08-02T00:00:00Z", "trialPrice": 2}, {"currencyCode": "cotg9A9VvbcAi4Zm", "currencyNamespace": "dXz2NXfbCObijIWd", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1989-09-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1994-04-20T00:00:00Z", "expireAt": "1979-03-23T00:00:00Z", "price": 57, "purchaseAt": "1978-02-01T00:00:00Z", "trialPrice": 71}, {"currencyCode": "7q6U3V1i7ip9ibQl", "currencyNamespace": "ReTecqcbggfeYn1F", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1997-10-18T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1989-04-21T00:00:00Z", "expireAt": "1979-12-07T00:00:00Z", "price": 90, "purchaseAt": "1999-10-07T00:00:00Z", "trialPrice": 93}]}, "saleConfig": {"currencyCode": "8Z87U0Y5R6IUWUGW", "price": 60}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "A8xCvVNgS0wUvETm", "stackable": true, "status": "INACTIVE", "tags": ["afNaxCNIzvOh61wC", "OA84jougrIsaMHmz", "oLHWsw0m7ZY46mjk"], "targetCurrencyCode": "AYs9Qae7TEBnzFux", "targetNamespace": "HzrR3PiHyAFfiwIi", "thumbnailUrl": "9bI2X8C6xnSImJqw", "useCount": 50}' \
    'Yto2cpXUnj1kXAEn' \
    'U9CvpIjJ6tB2fqN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'D76apW4CsuQx2nME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 12, "orderNo": "E8lGIgW2AWqhlJfH"}' \
    'gWSAjBmziLkAEWkq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'Mo2uv4G0hb2TC5zb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "xqSMQf3ZXRgmEXKP", "previewUrl": "avNUDslWRgXzKcDE", "thumbnailUrl": "z6ivQvlpRKagGd8O", "type": "image", "url": "kQolDEtyxyMGw4ZE", "videoSource": "youtube"}, {"alt": "If5hoyD0oT4csEU6", "previewUrl": "rwlyAZXRltXTRz9W", "thumbnailUrl": "tMMb9e3S9biXun5f", "type": "video", "url": "5DRP307xNIxMniv6", "videoSource": "vimeo"}, {"alt": "DtGhPQu5IgTlvO4w", "previewUrl": "r8D7APHhihwdNSBK", "thumbnailUrl": "pqJ8V1kQHisGldXg", "type": "video", "url": "NvAi5e5Cp2Id8Pqg", "videoSource": "generic"}], "developer": "oAwwCO2c7aEAHcpd", "forumUrl": "x91UabvNvRaUrUqT", "genres": ["Action", "Simulation", "Indie"], "localizations": {"ANjqP7L1mgHDq7oo": {"announcement": "2SQp9UXJYEGGpt55", "slogan": "fVsBfrc4OJ06MAIN"}, "Aypeu3ZwgLF3XSMY": {"announcement": "kGVjcYe2wwruEu9p", "slogan": "KFWxMrOrO7m2fUVM"}, "4vgvN5a9nlua2qF5": {"announcement": "WhoaEpbMKCe8F6OE", "slogan": "3PKy2vHH6XrTj3i1"}}, "platformRequirements": {"nC0J9A8DUtbT9Nim": [{"additionals": "qnzt0awizcaXFFkK", "directXVersion": "f2QcbDNp9wVgloPq", "diskSpace": "ugy2zhY3CjOqLPkN", "graphics": "LoeCULsEptE9wdse", "label": "bmIkQbE3nPbd7YNY", "osVersion": "QJL8jGfdMvM0zEHm", "processor": "Ths6Oydk9jSSY0aq", "ram": "jjeExTo07XGD7r4d", "soundCard": "vtuyipF1FB9RNF3G"}, {"additionals": "6sPweMmOIXU6IcFk", "directXVersion": "TWMTXNI4WIT2qYut", "diskSpace": "qii44IKSSMR4zJKY", "graphics": "xouzcD0pPXkdTrLY", "label": "N48A5DLkL19tXrv2", "osVersion": "bC14hfBeKISP0coy", "processor": "LHG52kcFEHKN66TO", "ram": "zJSyl83HhHTDHO8m", "soundCard": "QoGOS84jEVRGn0aQ"}, {"additionals": "HrmMgGX6WiX9WPUE", "directXVersion": "wP8KagnEKkfRnTAD", "diskSpace": "7nNuqrknaj1Fks8O", "graphics": "hmWshFK5hyfwqkxF", "label": "eK2HSaUyXEOQUwXD", "osVersion": "X8MGlijaR3VVk7nD", "processor": "09WBTm7Hy1AvjH8T", "ram": "O5OIzshGgQ4ThugQ", "soundCard": "FOWwlpo3MnSMNdjV"}], "tLt8CrUFIkcZk3UE": [{"additionals": "aPstaXtLCGf6Pjb7", "directXVersion": "W28XF9eX2LXwaZwD", "diskSpace": "M1CYDLmaPDEUbDvB", "graphics": "Unl1NO7rLa2XTR4I", "label": "EvU0JE2kLOQb2CBE", "osVersion": "oV5Nm182ykfY01Gc", "processor": "ykfqRyXIVnis4SKj", "ram": "pYMZV5AVm0vOTpy2", "soundCard": "xyajHMUnKflmcC3p"}, {"additionals": "OWLT8ckEy2SMQcmx", "directXVersion": "ebThGYrgNOimVrZz", "diskSpace": "kyKHvwa7cbRj2at5", "graphics": "ZJSh02srNNRw3Y1j", "label": "6viZbWeu0WyHCl9X", "osVersion": "s4E416s1Oq4B0c6h", "processor": "cP5jLY1KxbFbyzOe", "ram": "PaXR3ub0i4catfNO", "soundCard": "lhlYHQh4VgYhBaVD"}, {"additionals": "BRlLxoAzljrhdaWN", "directXVersion": "Qoeso9mKjTRboTLj", "diskSpace": "We4LfJee5PI5dFv5", "graphics": "buhIZ4eMnCDQFCYc", "label": "yYCi2g6s9FQKCfcu", "osVersion": "923YpsdjtVRUIv3u", "processor": "IM3CoS6JahcK1Pr6", "ram": "BT8bcW21yKVRUAUf", "soundCard": "5lebfPenWUEBZC8k"}], "eF5vI1QiMb8GRzCE": [{"additionals": "TFWSfJvAnpvMcDHw", "directXVersion": "A9mw8ujZZQUNi4ND", "diskSpace": "zBP7mmM4ZrXjamc3", "graphics": "OX9fjEzscuFPv5tN", "label": "XWb8n1xyB1MxbBG0", "osVersion": "waudrudTuIy3VLkd", "processor": "3YGg9Bzi8uluQOBu", "ram": "TuYNR4hzPkGOuDvT", "soundCard": "1kGGvspIGcvW7T4d"}, {"additionals": "k3MBzfrSZGlXPukj", "directXVersion": "7q5MjU2f4833bcUo", "diskSpace": "BfWLjRXOqaoDBgsP", "graphics": "HcNg0Bapd2WF3ACW", "label": "SPCOIejZfSnIavou", "osVersion": "uFpqcq4Gd9fk7fhp", "processor": "8GNMEX4Ps5vorNX6", "ram": "W3h8ItD6AFXbQvGb", "soundCard": "KVlE5VulHAZZ2SKo"}, {"additionals": "1C0ktvmekdbic6I2", "directXVersion": "n5Hclx6xvlDEhlvz", "diskSpace": "VBqt9fNnODJKrDdt", "graphics": "60vGd1u3lR0fkCW4", "label": "fYJAHmuYyTZt7v3m", "osVersion": "vPolaFeEWrqYB9hL", "processor": "G74YMs1JCrpnpPPU", "ram": "yyCN4MFXqnFzR6C2", "soundCard": "0jVL8heTq0Wmf80d"}]}, "platforms": ["Linux", "Android", "MacOS"], "players": ["Single", "MMO", "Single"], "primaryGenre": "RPG", "publisher": "tcIyIFNDIRhPIRCN", "releaseDate": "1996-12-06T00:00:00Z", "websiteUrl": "8MLBfGHJseAA3xQG"}' \
    '5zPNH4eYMWbtvk7O' \
    'oIixOGXwFzXjpSLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'jqaJnmx4p5ShR3fI' \
    '6ZeDWbxHSLn6kQxq' \
    --body '{"featuresToCheck": ["REWARD", "IAP", "ENTITLEMENT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'FQFpBDG4baNqdGxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'GcHil6iUOTWxf4GH' \
    '0N4kVmTj683Ybw4T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'KyPTxRuzNfmvBcfN' \
    'BFiIw9mkjC9qXOVU' \
    'NHtfbgUqbLQ3WTZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '8gP7LgkxhkSSID9P' \
    'xPyXJHsWipvZANpR' \
    'XHVqJaiwkoaBb8UY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'H2Pz5V5CtSrcX7aR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 44, "code": "gIUMxGfQHmg4I1PJ", "comparison": "isLessThanOrEqual", "name": "o2dQM3ZXq9atijyF", "predicateType": "SeasonPassPredicate", "value": "8B6hECr4zqhZ9lpl", "values": ["F37X9HTu6c4mMUdJ", "18iHO0dKNHWBFM13", "lwasnryjxylwRVcy"]}, {"anyOf": 29, "code": "8qXSfSkxhrHhjWxk", "comparison": "isNot", "name": "2YoSLUIzzQsIU3IZ", "predicateType": "EntitlementPredicate", "value": "P7Yh6ERWyedt6rkP", "values": ["X634iuF8pqhqsqRF", "xW72ya2ruQcikSHw", "HPfyNRUhMXX7FiB3"]}, {"anyOf": 72, "code": "kqMbz4sxPUl2WbQN", "comparison": "isLessThanOrEqual", "name": "NB2IE43MBCGNyjqn", "predicateType": "StatisticCodePredicate", "value": "2z5O9ugNuq4uGu9k", "values": ["3KKHHaSwFS7fAGmA", "m7KeyQB3SUe4ug9J", "4gy2QBm02aTdgp0W"]}]}, {"operator": "and", "predicates": [{"anyOf": 90, "code": "TwcWL7fNlyGuj0Ek", "comparison": "excludes", "name": "7M8G78KZj2jWyKAz", "predicateType": "SeasonTierPredicate", "value": "YP9kO0rmonOpgtON", "values": ["mMvrDH4IXc6tn8Xa", "yBI734jCTSnRqHTW", "C4NCbltixkXwXO0X"]}, {"anyOf": 10, "code": "fsySRn2FX0Ac7Czu", "comparison": "excludes", "name": "XE90ufrBaS458bBT", "predicateType": "EntitlementPredicate", "value": "FnAIz4y9yy462Mnw", "values": ["chld3LWFhC1kBUvs", "EmQiF1OsXfJG3psj", "UcnOXhewthszMsYO"]}, {"anyOf": 72, "code": "EEU6G6YVa5GGFvLt", "comparison": "isNot", "name": "l66DAEkAvXqNdnEf", "predicateType": "EntitlementPredicate", "value": "4IGPYHaRvV3JGi5l", "values": ["0G5NBtXVTXK1JdoC", "gZzuoTiOgT4AtBZJ", "lQQGLneKl3iXOvSG"]}]}, {"operator": "or", "predicates": [{"anyOf": 17, "code": "MBPDcUuWC1NgHaxQ", "comparison": "is", "name": "8YQRsZpn4zsR2KwS", "predicateType": "StatisticCodePredicate", "value": "l0Un3PT2bVzOt2J0", "values": ["VxSVRWxJw7idbmOx", "0vyaMbcnlyBvXdpo", "YVZKx8oPBJncKdya"]}, {"anyOf": 2, "code": "OWkI0sHphIU3KaP7", "comparison": "isGreaterThan", "name": "dXT4YD9fDzx1WPpv", "predicateType": "StatisticCodePredicate", "value": "BMMNJG6TuQ90jhJC", "values": ["5qUyimmVzOJYebI5", "rrsBPvGhWiPLLd5e", "ChF7cgujItr2ZFjL"]}, {"anyOf": 63, "code": "Qu0coThNxwnnpoM2", "comparison": "isGreaterThanOrEqual", "name": "SoHlpDFImJNovlZq", "predicateType": "SeasonTierPredicate", "value": "O6RDUgilQHCts6SU", "values": ["6WeXWf3dBAVfIM2o", "NxUWIGSkxjKL3EiP", "LFaTIhv5XrQvTAdi"]}]}]}}' \
    'sxP0DyxqSYeCl4gE' \
    'ZgIMDALa4nsITUeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'KNh8kgmMjBxD74Lu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "jtGQD9sT5LHkWjFI"}' \
    'o6VbU9gwMgZPR9Q5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'ReturnItem' test.out

#- 156 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'QueryKeyGroups' test.out

#- 157 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    '{"description": "Lstog0ehjEmcjJzk", "name": "f7rNu3ZARHXZ5yuJ", "status": "INACTIVE", "tags": ["LeHVV40sjQ8mtTN0", "8V3MMSrrV6FB8DFw", "D7WXkw7te8pQfvxY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '5zPZKMd5ItnXbDbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "W9KlfgVvjjjExRk4", "name": "JHYGa2nnyqvFCYJO", "status": "ACTIVE", "tags": ["vkAkZ8CS09fFrbdr", "egZfA6pBIXqoaoYo", "HcrIwc6qkDf3ciuV"]}' \
    'B7vM6wSqwns2XJfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'l3uiEO9E03Jk5kBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'uo4jR1HYLJjnydxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'GgqH3ytkroZ2tfFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UploadKeys' test.out

#- 164 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryOrders' test.out

#- 165 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetOrderStatistics' test.out

#- 166 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'NF99VixS5Es3u4km' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "3iKiNLRNa01SihgZ"}' \
    'by9mBdGrJY5J0e9j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'RefundOrder' test.out

#- 168 GetPaymentCallbackConfig
eval_tap 0 168 'GetPaymentCallbackConfig # SKIP deprecated' test.out

#- 169 UpdatePaymentCallbackConfig
eval_tap 0 169 'UpdatePaymentCallbackConfig # SKIP deprecated' test.out

#- 170 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetPaymentMerchantConfig' test.out

#- 171 UpdatePaymentDomainWhitelistConfig
$PYTHON -m $MODULE 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["WcVTCNxjdv8GxhJo", "B4lAkbm1Abh9QxLB", "fhpOp8UlDmFYNBSD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UpdatePaymentDomainWhitelistConfig' test.out

#- 172 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QueryPaymentNotifications' test.out

#- 173 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'QueryPaymentOrders' test.out

#- 174 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "EgsUMikj8NQNDlhA", "currencyNamespace": "hwAc8mPZRllengCd", "customParameters": {"fKGCBZMAbJnqDKuB": {}, "GWmZti7VJ7O7dNzD": {}, "BzVmGSholl8uD1hp": {}}, "description": "Btpd4eLc1PpHJmrL", "extOrderNo": "7AZ1MKcHBB1AfySU", "extUserId": "MZOWhtQEriyOLkuG", "itemType": "SEASON", "language": "ryk-390", "metadata": {"FWLtsLf278ybCNhF": "9RCyMn5VX87u49Hs", "q4hLUkLLTNMnmlFz": "zwpEZwbcCEsJIB0J", "kRcYhCT3pUMiOk2a": "Kaj7wqr7wwPCgByC"}, "notifyUrl": "nljJ7CYvapWO5JGc", "omitNotification": false, "platform": "oD0bb0SXZUy9H0C2", "price": 4, "recurringPaymentOrderNo": "3rnYfZ8c8zURCckW", "region": "WVlTYAkogbV1bNoJ", "returnUrl": "JUhL5p56dnYHk1iL", "sandbox": true, "sku": "Ckzqs0hC50vEOIxc", "subscriptionId": "25vtorwrF6HtcJbq", "targetNamespace": "jCZkEvdWNk2SHYsv", "targetUserId": "a1jk545vt1Vu7dsm", "title": "zSUsCVLjw2QHwjLR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'noGxE4QuZeQkRBv8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'hh81CTYPYD0WHJ0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "zaJpqg9JgEy7Iad7", "paymentMethod": "fAMCaXsZoyeqN5ou", "paymentProvider": "WXPAY"}' \
    'GRQ2i1n2WJVJy6yB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "PVmpbwVG3MwHy6yQ"}' \
    'U2RSNGWKnNDFZOok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 47, "currencyCode": "snWC9CFiRmbELIza", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 10, "vat": 62}' \
    'XvKu5UsuFOUXohEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'KCKphTiityfpZixQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "MzfhG3hC9Be3Cvn1", "serviceLabel": 86}' \
    'WtL2AAtjEKW31SlS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "m20DzdKk8FlVcy0h", "sandboxId": "cEMFRkn8SAQhtiWA"}' \
    '2DHIocFR98KOabgb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Nintendo", "Nintendo", "System"]}' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Nintendo", "Other", "Xbox"]}' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'ResetPlatformWalletConfig' test.out

#- 188 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetRevocationConfig' test.out

#- 189 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'UpdateRevocationConfig' test.out

#- 190 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'DeleteRevocationConfig' test.out

#- 191 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QueryRevocationHistories' test.out

#- 192 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetRevocationPluginConfig' test.out

#- 193 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    '{"appConfig": {"appName": "UB1xXuK2MwrRJukM"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "SRQFfxRIUU3K7sjv"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCert' test.out

#- 196 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "HFmaUGIprrzf5gWN", "eventTopic": "xqxl2qgslinTPbY1", "maxAwarded": 79, "maxAwardedPerUser": 5, "namespaceExpression": "RFPlwtoen6TTQtwM", "rewardCode": "X4QAE2aV1l1P0cjd", "rewardConditions": [{"condition": "c49Ah8hoDWRw7XYz", "conditionName": "ZLlLq8lPGFyb34DD", "eventName": "yqvcwQ3uBzBm355I", "rewardItems": [{"duration": 95, "endDate": "1993-12-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kf8Y5ksiqVvcGZxT", "quantity": 85, "sku": "fWNB8u5Qlf4KGo0N"}, {"duration": 37, "endDate": "1974-06-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RzPsMd90Jrkh4kaH", "quantity": 91, "sku": "Fh7mq6sgk5cHaJYk"}, {"duration": 52, "endDate": "1992-08-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "WPobC0FiwNmp1e9J", "quantity": 52, "sku": "o43Qi5cRehBB7o24"}]}, {"condition": "lw21Z3nE04Cbkpn0", "conditionName": "yX44aL9f0QyO5YXV", "eventName": "hTiaE4WKnEeaUdAm", "rewardItems": [{"duration": 13, "endDate": "1991-04-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nzKSVlXsRNMykbnH", "quantity": 93, "sku": "xavCN2N47HbR5lY7"}, {"duration": 23, "endDate": "1987-08-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Is27hn9TSwEvJPZc", "quantity": 63, "sku": "rXKMnNZIm0ooHCnl"}, {"duration": 35, "endDate": "1982-10-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5IuOvafRIdOXlxxd", "quantity": 51, "sku": "kPtcVfRHox2lJjo1"}]}, {"condition": "I9gluGDrbO6CoGGa", "conditionName": "GBbMIhMZL5o3htHW", "eventName": "6Gx9FaoDIwGJ3pRy", "rewardItems": [{"duration": 80, "endDate": "1985-07-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vsb9aicyajUNH4cy", "quantity": 43, "sku": "xf7BiZI9Jujxs7GK"}, {"duration": 10, "endDate": "1987-06-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lVbEWajKUr3rx7Sd", "quantity": 40, "sku": "D8GqtXguE8Xvdv1a"}, {"duration": 53, "endDate": "1975-10-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2OSkJGMDAkWOP9y3", "quantity": 8, "sku": "5CZu7WE18eU5rtQU"}]}], "userIdExpression": "WRLvu3WEfwBn40sJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'CreateReward' test.out

#- 197 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryRewards' test.out

#- 198 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'ExportRewards' test.out

#- 199 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ImportRewards' test.out

#- 200 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'sbYVp7amyDRQk3QG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetReward' test.out

#- 201 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "p0uzzvAfa6BW7oGw", "eventTopic": "2U9LoHWS4koauo9j", "maxAwarded": 21, "maxAwardedPerUser": 54, "namespaceExpression": "TEI52B8LI9vMEB8O", "rewardCode": "HKsqKaw1EmCxOMl6", "rewardConditions": [{"condition": "uh44gPPfiJZCSkIQ", "conditionName": "I1h6OjoUY4QXecer", "eventName": "XxPodPokDUivfNI3", "rewardItems": [{"duration": 74, "endDate": "1983-01-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "SIbTi8dxU11tPBlM", "quantity": 59, "sku": "bkDk5g9y47AVCmFD"}, {"duration": 68, "endDate": "1978-03-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "stBGTm2OFHVEoRlj", "quantity": 38, "sku": "gpPXxtcOPw0UBm7w"}, {"duration": 6, "endDate": "1977-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ELVo9RYTquwIrGgk", "quantity": 40, "sku": "eqgOf7WwNZWyYuM3"}]}, {"condition": "y1TjdcOVw94gqQYO", "conditionName": "WGw7LSW6Kb9otdVB", "eventName": "jacY5doQGhc8zSCe", "rewardItems": [{"duration": 73, "endDate": "1994-05-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8PHY6vGzNfPWTQ1p", "quantity": 74, "sku": "z6e2UDBycYrDDg5i"}, {"duration": 60, "endDate": "1976-11-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JJmzGW9AQMDnaFw1", "quantity": 41, "sku": "bh95vj0V2ccQ60lu"}, {"duration": 4, "endDate": "1976-12-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "K3cwO9ln34fiLxPN", "quantity": 54, "sku": "xKoNNYd5p2yVsBAv"}]}, {"condition": "2ZVlrnlY8y91hD1Z", "conditionName": "Hh1VjLqa0AODLarM", "eventName": "crlOCtMCyPHnS8ue", "rewardItems": [{"duration": 85, "endDate": "1974-07-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iByYQOgKKv9kQYaS", "quantity": 70, "sku": "f9iY3skbk25jLP6z"}, {"duration": 91, "endDate": "1987-12-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5C6awft8NPNJCopJ", "quantity": 13, "sku": "Zkrfk0Xn6jwfR02G"}, {"duration": 11, "endDate": "1974-11-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "rXzI7oWD1mZ9rW6Q", "quantity": 6, "sku": "Gfh2XhfCB53jlBjz"}]}], "userIdExpression": "XLwoMxshoo8aHsXJ"}' \
    '87ywdDtou8Np74s3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'UpdateReward' test.out

#- 202 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'RLe4gpS550eQ5WiZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DeleteReward' test.out

#- 203 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'iQUzC0vBF108QVF9' \
    --body '{"payload": {"gKmJBuqEpgnV3xNd": {}, "P3uQJ2ZdCStanvPw": {}, "uBVifTkflegYoVHY": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'CheckEventCondition' test.out

#- 204 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "dQPAsGfQVawbSlqU", "userId": "fFfZytHO4xrQvXR8"}' \
    '8ArNPkMbfhbrTb4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'DeleteRewardConditionRecord' test.out

#- 205 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QuerySections' test.out

#- 206 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": true, "displayOrder": 67, "endDate": "1974-04-16T00:00:00Z", "ext": {"R5dqhreKq9si5LTZ": {}, "GjfJI0GRPR9FWa3s": {}, "AlKnzZ5Joq98jWsz": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 94, "itemCount": 26, "rule": "LOOP"}, "items": [{"id": "fATk2jDkPq7n0Vqg", "sku": "iBJsxKkXhiEo0RXg"}, {"id": "JkWelLk7pTvUfmra", "sku": "4esdZ2v5vKHsJ5De"}, {"id": "zdlRlTTSLmDolGdb", "sku": "7yXLAgfgESHWCK8L"}], "localizations": {"ccJJmXX0pmy1KDJt": {"description": "g9FwOewtMPXhsCde", "localExt": {"un9QN513GmIqfQ8m": {}, "Jbg0TSRxhI4XnmuQ": {}, "N65HKi5qvwLIqgfX": {}}, "longDescription": "vKjhXcfKE45hKdn2", "title": "Ay5KgtWue3XkqcMK"}, "E9l0uRkf5RxDdVVe": {"description": "0VvPmen8keuXuWui", "localExt": {"tb85Ns7DhXCIneqd": {}, "dStnBNigsnBpu24g": {}, "a0d3NvXvIgvIynEa": {}}, "longDescription": "AcX7fXbKWmraqNIK", "title": "PX6gPHT29wkZwM8c"}, "vObRjKxi25l9mb1m": {"description": "SJffUaLwOsYRIJea", "localExt": {"rztP7sqwracbiPrT": {}, "7cARnySCNlQCocWB": {}, "q1VspKjs4jxjTNe3": {}}, "longDescription": "vK6XXKdJ9YgLSRyj", "title": "x0xgbEuoPqi79JLK"}}, "name": "Hle3po9nK2MnWISZ", "rotationType": "CUSTOM", "startDate": "1990-08-15T00:00:00Z", "viewId": "UxYanMQUFaZF74Rb"}' \
    'eEi4WAntBdOLVnsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'CreateSection' test.out

#- 207 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '61rzqSDNeQF7Q3XL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'PurgeExpiredSection' test.out

#- 208 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'gdI7tdEmvBnrNtew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetSection' test.out

#- 209 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 2, "endDate": "1973-02-04T00:00:00Z", "ext": {"6VsIsSSdkP3IqaPa": {}, "XJc57cVP8tXCteut": {}, "O2hlDa0voH7Al8vu": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 57, "itemCount": 100, "rule": "SEQUENCE"}, "items": [{"id": "TaiUJpIgLrblSQiw", "sku": "rmWKb8IhCNJqtCtG"}, {"id": "vxKwuL3MuhHXzy6W", "sku": "jNeNYuVWrqxrNDhs"}, {"id": "aw4vbDPKG9aUuCw1", "sku": "ys0BxLbujuXwWEJU"}], "localizations": {"vl8k6CNRAfp1s21w": {"description": "ulz8cb64KjGDHolx", "localExt": {"RGH5sQmA6XL9p83L": {}, "ed5r4J7MEwKxtP0S": {}, "kagDcL89PjvtwaUD": {}}, "longDescription": "i2fDyXlYJu8bIkkF", "title": "h5LqxA2jff0fTRIY"}, "ip6c9di8JeefXJ2P": {"description": "dIoHdoDHgvwcWxlm", "localExt": {"JoJSnhyf4L6dZ66Z": {}, "i7azAJHL5PE9RVZO": {}, "NAcvKXL23ppvor8g": {}}, "longDescription": "rcvFvYajtvdiqyZz", "title": "xREBSrOk54EyWalL"}, "jCH6xr3vtL9JTQ5C": {"description": "WaR2DvfAXB1SrgLn", "localExt": {"5lUQ3Mt9iye7Sb3g": {}, "SolD6u7wIciVVHoF": {}, "tt4AP9G3HyBugfRe": {}}, "longDescription": "iDLdSTRmElGhVQf2", "title": "27V7ADaQHt78b3DT"}}, "name": "7qRYPx0W6cXzOdGX", "rotationType": "NONE", "startDate": "1997-05-24T00:00:00Z", "viewId": "cTxgD0WOWAsThZ6L"}' \
    'n6xBAApmumWxYTfE' \
    'Em2g8JpfOhv1dFmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateSection' test.out

#- 210 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'wcX8cRQpNggDqIfB' \
    '0DPn1CZrBaO9y4CH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'DeleteSection' test.out

#- 211 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'ListStores' test.out

#- 212 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "HaydtaKJNujTvCDw", "defaultRegion": "yDu1QGAcJRAK1mgN", "description": "t0pudyASz9qbHEsb", "supportedLanguages": ["gt8Nb6qoNGzjQQDw", "2Sc4DTbergyuPtRg", "n6fWMWqZYmAvVETT"], "supportedRegions": ["sjp3kTD5DUdBvhgs", "fcLURAHqkEpmWErw", "MkbsCK44WEKYCuqx"], "title": "8xzh9bTsHGm5hk6Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'CreateStore' test.out

#- 213 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'CATEGORY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetCatalogDefinition' test.out

#- 214 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'DownloadCSVTemplates' test.out

#- 215 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["n8KsMKfuARcHovGU", "ZSzWfq3hqssnqUPI", "JabCPMhqOeDXc5LH"], "idsToBeExported": ["8xN38dVbdD5L9eqq", "8PstBnVeYTD7i7fq", "OSZxwOb5jkz9ihTe"], "storeId": "86sjHoBLGz2Km7DE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ExportStoreByCSV' test.out

#- 216 ImportStore
eval_tap 0 216 'ImportStore # SKIP deprecated' test.out

#- 217 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetPublishedStore' test.out

#- 218 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'DeletePublishedStore' test.out

#- 219 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetPublishedStoreBackup' test.out

#- 220 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RollbackPublishedStore' test.out

#- 221 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'tivDSv0mmNGIWjV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetStore' test.out

#- 222 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "L9aA57kR2ACNzI10", "defaultRegion": "tZr3Ajmwxrpjfgam", "description": "Oka0iwQFwqJrWlE1", "supportedLanguages": ["xE0AgbtqawrlckTg", "uotHZZnBkb1WomHQ", "23RrmGI0fa4tSghR"], "supportedRegions": ["EoTAvCltzrUTJgBj", "WwZMcxIcmhutMHEe", "UDIyZ6bUl6Q4DAwz"], "title": "eZS20lWbIy7iWsAE"}' \
    'Y3T2YDXuJSzkSZfZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'UpdateStore' test.out

#- 223 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '5duijZETizaQixMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'DeleteStore' test.out

#- 224 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'pWQ9PgUcB3N69aWe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryChanges' test.out

#- 225 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'qMy8NAiT9jmCgwDP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublishAll' test.out

#- 226 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'gvbhdCorBgPIEGgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublishSelected' test.out

#- 227 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'fwbFJ8VUxv8qZiAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'SelectAllRecords' test.out

#- 228 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'IoUy5BK25PGFQBJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecordsByCriteria' test.out

#- 229 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'HKR8nXRVh36pW5RF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetStatistic' test.out

#- 230 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'N9k93aNy4vvrPXP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'UnselectAllRecords' test.out

#- 231 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'Snc4UqgNJcVC0MQn' \
    'jUphnyKSPgLrITdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'SelectRecord' test.out

#- 232 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'gHGJd9AlCqccvcf4' \
    'aG26GboaJ63McAoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UnselectRecord' test.out

#- 233 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '2wACiUOAYJUhwTgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'CloneStore' test.out

#- 234 ExportStore
eval_tap 0 234 'ExportStore # SKIP deprecated' test.out

#- 235 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    '0tvWir64fqpyffEz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'QueryImportHistory' test.out

#- 236 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    '0xbTHKA2YqU0FWbY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ImportStoreByCSV' test.out

#- 237 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'QuerySubscriptions' test.out

#- 238 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'Oy7zpSeyGBLauvij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'RecurringChargeSubscription' test.out

#- 239 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'I1vUPcP4XMNICniS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetTicketDynamic' test.out

#- 240 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "wlnSYTuNVajwq9on"}' \
    'I9NBO48v6DUJRe1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'DecreaseTicketSale' test.out

#- 241 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'pwuZIoLrVS0AcrY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetTicketBoothID' test.out

#- 242 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 97, "orderNo": "MooXzmW321H7CGe7"}' \
    'BlGbNTtvAEsQs0Wk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'IncreaseTicketSale' test.out

#- 243 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 81, "currencyCode": "6Y555p9oqb5MeMGL", "expireAt": "1974-03-29T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "ITGmF087BWKC6wzH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 4, "entitlementCollectionId": "wFqS6c2YCA1r312B", "entitlementOrigin": "Twitch", "itemIdentity": "RhISjcIvS4I6tzdb", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "4MnrbjAM32RlQ3Wp"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 87, "currencyCode": "XNZCsESCHRPA5OQX", "expireAt": "1975-06-09T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "wQrDu49JFXjPc1tJ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "aHYTZ2IdgUYmmt7H", "entitlementOrigin": "Twitch", "itemIdentity": "T5U0e2LY7yB5EiqQ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "vZmCSswSPGcfasR2"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 77, "currencyCode": "rm0JBGkT1hNjHr2i", "expireAt": "1972-04-21T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "ZYjakKtgPfJHbuwF", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 94, "entitlementCollectionId": "ZQrVPWyZpnVjbpot", "entitlementOrigin": "Steam", "itemIdentity": "ZRaWXjMCSId4tDlI", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "FuGcD5vraJ3WftgZ"}, "type": "CREDIT_WALLET"}], "userId": "3r4ZLb7i2SZkIaAN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Other", "count": 57, "currencyCode": "I2EGVDWs67zwXLLD", "expireAt": "1981-08-10T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "fgrJcwR3qktAdH94", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "ziEpGVXsUvez1lbe", "entitlementOrigin": "Nintendo", "itemIdentity": "YHfMpHxEcJG7c76A", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "JnbFprRWLjHPiPqv"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 73, "currencyCode": "CPLdIk4I9TU6FvvE", "expireAt": "1972-10-22T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "m5GMKtZSng8Oi6TD", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "SGwc7wXieEOkn4KN", "entitlementOrigin": "Epic", "itemIdentity": "w6szojkvjtacFSVT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "gh23BGEa5ftmSBKQ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 68, "currencyCode": "AXk9qVrzEqsDwIwR", "expireAt": "1983-05-18T00:00:00Z"}, "debitPayload": {"count": 70, "currencyCode": "ep49tDHFl18cQlJC", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 70, "entitlementCollectionId": "KFmN851YX8ylpv3h", "entitlementOrigin": "Steam", "itemIdentity": "rc9YYsgvVLN3usfh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "yCf1FOddxtE52sFK"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "jNp3OwcrNR2jH7Xx"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 25, "currencyCode": "vyxtTxuptcOYSTj2", "expireAt": "1984-05-10T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "gJOAfFwvvgYPIFEV", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 78, "entitlementCollectionId": "sNylCwcf2iVxv9Qt", "entitlementOrigin": "IOS", "itemIdentity": "TPuigp3RiJofgD4V", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "qApZ98a9g9AjLDQL"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 33, "currencyCode": "byjCnTkYE0HYHfBc", "expireAt": "1981-07-30T00:00:00Z"}, "debitPayload": {"count": 3, "currencyCode": "DQawQPbbbHLcaHmX", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "PvQLVuKpiiZ4Imog", "entitlementOrigin": "Oculus", "itemIdentity": "aAycmEvk3rVTLjZT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 33, "entitlementId": "UdMES0mVVI1FilcO"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 67, "currencyCode": "ajEhkRLMvZnYZKCk", "expireAt": "1997-03-16T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "yQsgv5n6Vn7Tiakc", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "JHhAnY7QeDSRroVk", "entitlementOrigin": "Epic", "itemIdentity": "LfcjvOko7332ZZa1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 9, "entitlementId": "uaQ7gPgiz2EBME5i"}, "type": "DEBIT_WALLET"}], "userId": "dDmIy4Ia2UtS4T1v"}], "metadata": {"2y9Je7apQfNdDyT3": {}, "a0EGpHgGLUqdG3kB": {}, "fGvwjwttys4GvDvs": {}}, "needPreCheck": false, "transactionId": "aBXzn8z72hf4D4NO", "type": "pbUDnyVmYotZCA9L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'Commit' test.out

#- 244 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetTradeHistoryByCriteria' test.out

#- 245 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'ADbjj6viKPQxoVP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByTransactionId' test.out

#- 246 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "7RuEzCRLrZmVBFc2", "value": 85}, {"id": "y9m5s6oIWMnk88GX", "value": 80}, {"id": "osv2p6WtLfgPM8t1", "value": 41}], "steamUserId": "0x9St2EFfU2FbyIX"}' \
    'ierPr2qLKBXRYt7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UnlockSteamUserAchievement' test.out

#- 247 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '7Wfg2omS11YyIWGP' \
    'c92PcmK9zTgGQs1F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetXblUserAchievements' test.out

#- 248 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "IKxCXUhNdJ4cK7rz", "percentComplete": 97}, {"id": "9sy7dEuiT7OrRdHj", "percentComplete": 51}, {"id": "zPZbllwvt3TjGezR", "percentComplete": 89}], "serviceConfigId": "aYqdXkBqt2UfrBE1", "titleId": "JhOOdYFVxYR0XhaQ", "xboxUserId": "30cHb0re0TJwuS3N"}' \
    'PZi6h1nN0txahdhp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'UpdateXblUserAchievement' test.out

#- 249 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '0tmV4jjIkC8lqpB9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'AnonymizeCampaign' test.out

#- 250 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'cbsDlreKfjfpUz3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeEntitlement' test.out

#- 251 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'tg1bKaDBROm6TJ2q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeFulfillment' test.out

#- 252 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Mul8cl55U4RB2xVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeIntegration' test.out

#- 253 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'iARcFLzOW7Uz8Gz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeOrder' test.out

#- 254 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'TN3bJ6UVKAdNp2Re' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AnonymizePayment' test.out

#- 255 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Rw5WPjohGmJKCjbE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AnonymizeRevocation' test.out

#- 256 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'tFKLGvBQOS81LpIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeSubscription' test.out

#- 257 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '5QqEOKQXnUYMXvJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeWallet' test.out

#- 258 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'rO8K9yVaSV6MkQpP' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserDLCByPlatform' test.out

#- 259 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'MOoEllCitDiZDBLq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLC' test.out

#- 260 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'mmiE0hD2A6L9zZJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'QueryUserEntitlements' test.out

#- 261 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "I7J4njh6wMyuNtA5", "endDate": "1977-11-12T00:00:00Z", "grantedCode": "U28IE7EVvQkoqOZI", "itemId": "FeJQSrnPscIMJRSt", "itemNamespace": "F3LRa7q49EdmhBpI", "language": "nMI-IOLN", "metadata": {"HrNI7XsRCD3YOzMK": {}, "1ZWOxnVMpyEziAPi": {}, "9dBg5J0me0BhvZVr": {}}, "origin": "Xbox", "quantity": 37, "region": "bjy4nFkl8n6PSoXY", "source": "ACHIEVEMENT", "startDate": "1975-10-08T00:00:00Z", "storeId": "tc6rYyOiaUKC8t4G"}, {"collectionId": "V0JiE7ZbWP80Zctu", "endDate": "1977-06-16T00:00:00Z", "grantedCode": "Iw8zzjr1oeY1p4P0", "itemId": "xno1luSqciM4rfqs", "itemNamespace": "oJ7AkLiYjJvlKhH1", "language": "VC", "metadata": {"rp3T2fKqq9CzJlj0": {}, "UGtCqJnqpaur75iS": {}, "sLSqGKfGJDmzFepq": {}}, "origin": "Nintendo", "quantity": 90, "region": "oIzofQ17bQpOtqU8", "source": "REWARD", "startDate": "1986-09-24T00:00:00Z", "storeId": "FSnh5IbdftTLRLUG"}, {"collectionId": "wenKzXRT99U5B5j9", "endDate": "1985-09-27T00:00:00Z", "grantedCode": "T2YI1qt4AYI54fgX", "itemId": "lDCLFwNGzR7zvW33", "itemNamespace": "BLQ5NyteBZg7IM93", "language": "ThDp", "metadata": {"xu5cYFtJZeinW64n": {}, "9q4asIfg6qpRvHGY": {}, "NAfvls7pbw9yPFof": {}}, "origin": "System", "quantity": 77, "region": "SVjTbM9IHL2JcpnL", "source": "PURCHASE", "startDate": "1980-03-11T00:00:00Z", "storeId": "P84rgl0AQlBikeTe"}]' \
    'A9eq8hIKrzAUsKqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GrantUserEntitlement' test.out

#- 262 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'jQGHI3Wkg4HIrEmq' \
    'fnhjjtIQ7ipAfw6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetUserAppEntitlementByAppId' test.out

#- 263 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'TfJiEwGhGbMCnu8N' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'QueryUserEntitlementsByAppType' test.out

#- 264 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'DPiOQzKhR4x3pYj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetUserEntitlementsByIds' test.out

#- 265 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'be9x03hTzeUaFK6P' \
    '6yxOlFhdtyrLQHkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementByItemId' test.out

#- 266 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '1Es8nQbk4SztMOdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserActiveEntitlementsByItemIds' test.out

#- 267 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'HQXjAZrDNCoJ22Rr' \
    'oweT9Xanvbg8nAmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserEntitlementBySku' test.out

#- 268 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'srmzoPN3GJz77wPr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'ExistsAnyUserActiveEntitlement' test.out

#- 269 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'algkstRsUi0oaze9' \
    '["bInjdq27RgguQ45J", "SoDgfLayvPNWmvzO", "aDtopfGPnF4i8PP7"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 270 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'jdmy3KsRDI0m4nKN' \
    'GlXp2jJfLGd0zQqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 271 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'mGkk8Pcq83l2hWOu' \
    'qsilAWXNFfxIWM9j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetUserEntitlementOwnershipByItemId' test.out

#- 272 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'L08jtCIr8STWuiyz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemIds' test.out

#- 273 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '2eOgny7d8WVlcOTK' \
    'oZimYNHB2ph25oEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipBySku' test.out

#- 274 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'CRrlY6AX1ksmS6Cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'RevokeAllEntitlements' test.out

#- 275 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '75yFZVt1HZPcFbl4' \
    'XrKUphPevxFz1b7Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RevokeUserEntitlements' test.out

#- 276 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '3NwVn8PU8JfFPiZp' \
    'cqq8qH8MR9K5kA67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetUserEntitlement' test.out

#- 277 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "H3XOJlQfOCN2keFN", "endDate": "1988-12-13T00:00:00Z", "nullFieldList": ["QusmcAYWBLZg00dm", "qgWRmPnXpH8xifqa", "vEfKK0Dei3ChLwkI"], "origin": "System", "reason": "O6YDgQ4TLdkZgouT", "startDate": "1986-03-06T00:00:00Z", "status": "SOLD", "useCount": 79}' \
    '9doNSCRrqi0F1FGx' \
    'hrYszqB4U4xH3Npx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserEntitlement' test.out

#- 278 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"EEE1xE1teY5Ma16S": {}, "r2B137kVZhkISgON": {}, "grrElIGGV8sY9ZaF": {}}, "options": ["aHBtEtzzbIbJ6nsm", "YALYAas29PBhKjKk", "XDnEXVzzBDNoUXOI"], "platform": "kGhmAMgJu6c1uzCA", "requestId": "657ulArgYuyjFEve", "useCount": 90}' \
    'fQ5iJtNrVbjnyYER' \
    'w24T1DBdzzVbhZKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'ConsumeUserEntitlement' test.out

#- 279 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'h9FfHsuwhOtgOWtZ' \
    'uhAp0yxLpfWB0inH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'DisableUserEntitlement' test.out

#- 280 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '8xFDMoqbLU4KGsev' \
    'VGPnqXXPustpaZz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'EnableUserEntitlement' test.out

#- 281 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '7mZuZptSindV4Kpi' \
    'fmfS94ybYG4wLaPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetUserEntitlementHistories' test.out

#- 282 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'hpGODmwJCF4HCv6D' \
    'G2DfogFpQ6h4G1Jw' \
    --body '{"metadata": {"gwqyIOpmNMgpfDY1": {}, "FR9rKaxaWsCGgI79": {}, "Hr331YipwCDOc9FN": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'RevokeUserEntitlement' test.out

#- 283 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "s0rjVHzs9C25B5DY", "useCount": 70}' \
    '7ZLwTA0wt5op6F6Z' \
    '1a1sBmUaCx3pnw2U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlementByUseCount' test.out

#- 284 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'qOcXFVD0pboKkDZJ' \
    'ufSvoXGyr43yZ4vi' \
    '32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 285 RevokeUseCount
eval_tap 0 285 'RevokeUseCount # SKIP deprecated' test.out

#- 286 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "VFTTx0TcboB98Gf5", "requestId": "PcmWICZpV13Vxw1I", "useCount": 27}' \
    'Cw7S3b8oIW8rduVE' \
    'pRjbhlZ8rATgmfiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'SellUserEntitlement' test.out

#- 287 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 53, "endDate": "1983-11-03T00:00:00Z", "entitlementCollectionId": "6LtOu3SAtYQcZ2M0", "entitlementOrigin": "Nintendo", "itemId": "Ezq26aXSjyAQ2QsM", "itemSku": "JlAxZUci2CC1SEp5", "language": "5TimgFFENNE15Oyf", "metadata": {"Cm3JLSdyxEkUrupa": {}, "Ag8X3qrN4NJQHucD": {}, "PcorTkEhvJJBHTf7": {}}, "order": {"currency": {"currencyCode": "gHQdNqoM8JpOKNAU", "currencySymbol": "33hDeba57ZY9YNNr", "currencyType": "REAL", "decimals": 5, "namespace": "xOoikruHKYKNEVJS"}, "ext": {"zeli2Uey4fuSj1kS": {}, "eWA3702McnnKWV37": {}, "CLHYvul2IsFExmn4": {}}, "free": false}, "orderNo": "V4MH5mOZyTMMDazz", "origin": "IOS", "overrideBundleItemQty": {"zG1FmCCywXfHj329": 100, "bHeBy2yYQJsEZNAn": 96, "lQDfleFLBKj8h7Zr": 83}, "quantity": 62, "region": "pTU7jATbVBcDGudQ", "source": "PURCHASE", "startDate": "1977-10-06T00:00:00Z", "storeId": "8BKOdsoaTqFhdLfB"}' \
    'WZeRFQvrB1lsWaPG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'FulfillItem' test.out

#- 288 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "fJVUla8UlMM4Cc3k", "language": "kTBQ", "region": "kvKte7LEbOajs9HW"}' \
    'ygfQVPPqE6XNxmrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'RedeemCode' test.out

#- 289 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "Fx6AenNJCzeLqjOh", "itemSku": "HMsieBzDBhi6oZhj", "quantity": 63}' \
    'DI8f5EWndhcek3at' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PreCheckFulfillItem' test.out

#- 290 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "mhTw5TDjWYgm2yGv", "entitlementOrigin": "IOS", "metadata": {"vytcmR4QRN7ybL3l": {}, "T1Ois7OsTElVV8XJ": {}, "7Jg2JP8JKQ1Fia4j": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "q1qbbj3sLmfYzDVA", "namespace": "VhXts4CdsniSJKrJ"}, "item": {"itemId": "4BrdfV658ZBVGgxl", "itemName": "pGxhD9kKX2uBUIh1", "itemSku": "pfP8bRBVoq807roC", "itemType": "No3Qw4Z54sNMs82e"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "TtAImWjuqib3nbPk", "namespace": "ju9PQ5pN0XXmk4ow"}, "item": {"itemId": "knspUKyKWqOaF8En", "itemName": "9Ut2qFCzvpinQCQg", "itemSku": "8fidwt7qJ1Y75wS8", "itemType": "MCmOepp9Tx45YPBP"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "CwsAVcQ0VGEUxlcN", "namespace": "QWOpRLETWMAv0uJ3"}, "item": {"itemId": "0L51TxrdknW52x2o", "itemName": "1yDO6bwcKYeFoxUW", "itemSku": "dvEBTwUyzq5bzdNE", "itemType": "Hv6GmaokUOIadEDA"}, "quantity": 25, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "524IRplmKcwvGguz"}' \
    '7SAcGvV4lCJgcrAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'FulfillRewards' test.out

#- 291 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    't2gYpuKbE8ulWHoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'QueryUserIAPOrders' test.out

#- 292 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '1zC1K7oT3iNe5yhZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryAllUserIAPOrders' test.out

#- 293 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'bqmAgI6LUauh1GlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryUserIAPConsumeHistory' test.out

#- 294 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "FeAE", "productId": "eXSROEb0iXucFoRm", "region": "7DFw5ArJzNAElybJ", "transactionId": "SWLbZCdcwYHhOIGu", "type": "EPICGAMES"}' \
    'vXLFZoXt8k5ZtRJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'MockFulfillIAPItem' test.out

#- 295 AdminSyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-admin-sync-oculus-subscriptions' \
    'wh0BPRCWdTnytxme' \
    --body '{"skus": ["sJ8JDDcPDev3e8oc", "7sh3o0r9VYIh3Jj1", "5pf4bXUrytKH5rM5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminSyncOculusSubscriptions' test.out

#- 296 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    '4pVKLq2niQIIF3Qc' \
    '9pq9UUur5zNNHf53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetIAPOrderLineItems' test.out

#- 297 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    'CHNLzMNElAaW04oQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminSyncSteamAbnormalTransaction' test.out

#- 298 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "Xa8waozlr2ftyZkl"}' \
    'pNPl881jOSvCvj20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamIAPByTransaction' test.out

#- 299 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'fgU419HQGug3ApiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'QueryUserThirdPartySubscription' test.out

#- 300 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'STEAM' \
    '5ukyHmVB2oTqRWbK' \
    '0ubDt08F3Ptynki7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'PLAYSTATION' \
    'NZANUG3XywOPxcLT' \
    'U0y3maqZGwBZAszr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 302 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    's6F6qWE8F5UT7Jy1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 303 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'J0W4BcrVEEfr25k1' \
    'H2s4V2KN0PLlR8cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetThirdPartySubscriptionDetails' test.out

#- 304 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'Ho3XR1GqcOtFZDsj' \
    'HNjL304sV2h9pg3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetSubscriptionHistory' test.out

#- 305 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'vd9MZqnUseNuEx7Y' \
    'DEkdFOw34ZkvghT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'SyncSubscriptionTransaction' test.out

#- 306 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'B0olJY1qewjIDEZe' \
    'db90DCSoLAgeUlju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetThirdPartyUserSubscriptionDetails' test.out

#- 307 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'QXNi35z75tQmcrR0' \
    '8dqYhgjNEKxgigqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'SyncSubscription' test.out

#- 308 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Iaaftddfk3N3FUGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'QueryUserOrders' test.out

#- 309 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "7hRJWz66woOwujZi", "currencyNamespace": "qrVmhfRRK7pehYZg", "discountCodes": ["kvzgJn2pWVs6zZRX", "LjFarF9k0U2fuxYp", "TLF2CAqFwYdrzmGz"], "discountedPrice": 56, "entitlementPlatform": "Steam", "ext": {"AexxsuLkWktcAyka": {}, "y7LItVjr1YSzeXfU": {}, "iXANoRioh11etL7r": {}}, "itemId": "vPzXTBq3cXU8GYxE", "language": "0OhdSVFcSQWMXN21", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 39, "quantity": 91, "region": "lGGfo4IJnwUyJDPc", "returnUrl": "4Bi2BT8WWMNZ7MQ0", "sandbox": true, "sectionId": "gV63aIt0NDFEcKEQ"}' \
    'axvtIGC9xYvHbX0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserOrder' test.out

#- 310 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'twZqHLOEqFcFlBmz' \
    'nrLziwCnnibCjn2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'CountOfPurchasedItem' test.out

#- 311 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'xoSkuKry9iZZvtre' \
    'yTjGpaUSGjv2AbKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'GetUserOrder' test.out

#- 312 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "REFUNDED", "statusReason": "usCtKYo61c23RG7T"}' \
    '7E4yKJUPzM18zamm' \
    'JN39lhBPiRxSSC36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'UpdateUserOrderStatus' test.out

#- 313 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '9UVGTnts7qK33YCs' \
    'De0la83cvnj5Ut4Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'FulfillUserOrder' test.out

#- 314 GetUserOrderGrant
eval_tap 0 314 'GetUserOrderGrant # SKIP deprecated' test.out

#- 315 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'TxIBMay1sHQoxlbh' \
    'fnh1larFYcM0OoFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'GetUserOrderHistories' test.out

#- 316 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "93hG5GVHrcfGpWAu"}, "authorisedTime": "1973-08-09T00:00:00Z", "chargebackReversedTime": "1977-08-18T00:00:00Z", "chargebackTime": "1990-05-25T00:00:00Z", "chargedTime": "1978-03-31T00:00:00Z", "createdTime": "1978-02-09T00:00:00Z", "currency": {"currencyCode": "vSUYD0K7Y5bCch6u", "currencySymbol": "r33FthZ0FOWCXy70", "currencyType": "REAL", "decimals": 5, "namespace": "M2iJtgpMAKpwx7WN"}, "customParameters": {"70b3lBnY61oiTLHd": {}, "BClY8kIt120hKXcl": {}, "uepkD2cjAyU8thUL": {}}, "extOrderNo": "0rK6YlDgS7DF6WHO", "extTxId": "4xKI3DzXlqZ97UEX", "extUserId": "77J2ZaCgl5zfvvm6", "issuedAt": "1998-03-22T00:00:00Z", "metadata": {"VIJWtArjNf9ClzJi": "LrK8iwSKwTNINv7M", "bR3h7N9mLvImrGFR": "73LVKd3lHIIZTnzt", "swBHIOUcpBs05S6V": "CRgcpqzF0Wdx4tTi"}, "namespace": "Oqvd6is3iMkUYXGJ", "nonceStr": "52LhrcYmNqU8FNr2", "paymentData": {"discountAmount": 91, "discountCode": "ccqHPLY7ScjfHWvp", "subtotalPrice": 89, "tax": 51, "totalPrice": 48}, "paymentMethod": "H8lmeTjzHxgwKaMj", "paymentMethodFee": 95, "paymentOrderNo": "P8MEJHjkHXgaYcrI", "paymentProvider": "PAYPAL", "paymentProviderFee": 61, "paymentStationUrl": "GgAK3QR9g0C7nE1t", "price": 4, "refundedTime": "1986-10-30T00:00:00Z", "salesTax": 86, "sandbox": false, "sku": "7S4nZymFu9HDayb3", "status": "CHARGEBACK_REVERSED", "statusReason": "EqRaoWkdV23II0TE", "subscriptionId": "DjWcIzfsSrF9JBbs", "subtotalPrice": 73, "targetNamespace": "ioKOVcrfhki2j4K5", "targetUserId": "qHkvYSU2i8wpPg4f", "tax": 59, "totalPrice": 50, "totalTax": 53, "txEndTime": "1981-02-19T00:00:00Z", "type": "NOpTcy8nFxnyUhq8", "userId": "QCACdn9QBrEBZ0FG", "vat": 4}' \
    'j351m51uwOolqmdu' \
    '4KlKLptx5DKFWYNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'ProcessUserOrderNotification' test.out

#- 317 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'RNbzpFsjJLszOiHF' \
    's5xAVg39H5hnoP20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'DownloadUserOrderReceipt' test.out

#- 318 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "tlphew85KPyj4EGR", "currencyNamespace": "MQTeDUODYJlL3GEb", "customParameters": {"7CgXWeXJrzNrt0fk": {}, "jelr7hVgkvQdto2P": {}, "uC14Lu2G4Mw4Mo4T": {}}, "description": "irGDZ6OUYrf6N5Bj", "extOrderNo": "G6bELZwjEmKgZXlg", "extUserId": "bV3dBwrK8hpKlmw6", "itemType": "APP", "language": "OM-UI", "metadata": {"g6bypXmwZRpU8Qcr": "mp46NHHKuQExWorl", "4PYKJ1GJKlZ26mxx": "5rFWCDjFeol1Ra8c", "5c3F5otSicHNAFf6": "XoFjTyGzUy7Gy3lI"}, "notifyUrl": "bJD3ko0KsF8jqH84", "omitNotification": false, "platform": "95YMkpzkat1qYXph", "price": 97, "recurringPaymentOrderNo": "83wae7z4E6bRC4uf", "region": "nScsyhWe6QJ1Ov7w", "returnUrl": "z26xkkYYxgGLN3OJ", "sandbox": false, "sku": "EcW3bKxXuYOn0ULO", "subscriptionId": "8bwirHmfnBivLKin", "title": "rwTNNliEMZaebfXS"}' \
    '8gZ4cc4oVqQk9tqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'CreateUserPaymentOrder' test.out

#- 319 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "zt1BHwaxrSepYwXW"}' \
    'bcBNnyBdWMRvISdc' \
    'F4Db7MaqeC6go22o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'RefundUserPaymentOrder' test.out

#- 320 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'GxiuAknxwcqyDyOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'GetUserPlatformAccountClosureHistories' test.out

#- 321 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "Q18AhUON0V9Qm5Gi", "orderNo": "Vkyg2ApoZozOLaCr"}' \
    'fo6qFXI3sUf1uYi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'ApplyUserRedemption' test.out

#- 322 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"GvXliGeEan1MCH7t": {}, "D6ENaY8enBjqk85C": {}, "Iocwu2hQOOqU4lxw": {}}, "reason": "yKbYKZdZvXUVezIt", "requestId": "3HezhSE8IGOaRsie", "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "2wvWDhsYWwX5hKxg", "namespace": "CMD1qRyNe4g5DSTB"}, "entitlement": {"entitlementId": "pRPaWHEoCnndVYqg"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "lt7ssE0BVP1MHJQh", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 13, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "HktlLrVbhm9d4y2S", "namespace": "bI0OO1ououcz4taA"}, "entitlement": {"entitlementId": "COl097nqfMF4iGEw"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "eCPSEkHvpI9pfGr7", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 38, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "4HRfPSShguxCFDvH", "namespace": "cOou9G8lXxC3R0xI"}, "entitlement": {"entitlementId": "fzLRFel1aMfEV5Zv"}, "item": {"entitlementOrigin": "Other", "itemIdentity": "bfvPjkpdcTxG4LML", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 62, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "ZC06KMQoJCvczbpT"}' \
    'e8wnvbAKMlJZvUxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'DoRevocation' test.out

#- 323 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "zYBSzriljJODaZNF", "payload": {"JFbzIchkAZmUviJb": {}, "cnsW6uK889Ccm0VW": {}, "wNdNaPLrz9N2oRxN": {}}, "scid": "d2x7bzAMbnc0ESgN", "sessionTemplateName": "D3Bzn0RXiwLSoaZy"}' \
    'giLJ4dBRmXwqKSWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'RegisterXblSessions' test.out

#- 324 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'RuDBWveCv1Rj0emR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'QueryUserSubscriptions' test.out

#- 325 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'qo5yTUCEJDyanAif' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetUserSubscriptionActivities' test.out

#- 326 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 39, "itemId": "cayR34iibMmlb6vl", "language": "F1mVrcAyqXXnKEtS", "reason": "QkLh10xq2zgtaigO", "region": "B2XWLXBkH6l2KW0s", "source": "Sf0vJS3l5sWDcfVx"}' \
    'x8PSjamcbAWAUiz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PlatformSubscribeSubscription' test.out

#- 327 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'UhK7hY9Xv4bnujVO' \
    'haDvf3evXo0m3jJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 328 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'xtenPXW0Eog3qNqo' \
    'Lr5uxNWDT3hlTaFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'GetUserSubscription' test.out

#- 329 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'n4ThPY3oU02EfGsD' \
    'jENbnYSDYXgkcUGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'DeleteUserSubscription' test.out

#- 330 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "hRGIRsqJTdlIm2TA"}' \
    '1uiNbPsWP4dql0ED' \
    'A4cU4WstdHC5KGE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'CancelSubscription' test.out

#- 331 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 28, "reason": "h7I7UbUNrp02FBwx"}' \
    'eZXuYnlq95T6quy9' \
    'PsI3dx75GAWm1WfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'GrantDaysToSubscription' test.out

#- 332 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'ALgsjwfd3eYGpxI9' \
    'DQs2vOJH76fEQ8WC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GetUserSubscriptionBillingHistories' test.out

#- 333 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "3iZ6amfE0NHQzAvm"}, "authorisedTime": "1992-12-02T00:00:00Z", "chargebackReversedTime": "1997-02-07T00:00:00Z", "chargebackTime": "1993-07-09T00:00:00Z", "chargedTime": "1978-05-16T00:00:00Z", "createdTime": "1990-06-03T00:00:00Z", "currency": {"currencyCode": "IfYW2kPDBgq17Elb", "currencySymbol": "CwKI3aXhSEFUvuqv", "currencyType": "REAL", "decimals": 0, "namespace": "zikf2tQ7LhwHqc9m"}, "customParameters": {"wHFQ3JQtpRpQVAOe": {}, "xmqWb9l5yHbiXZ6T": {}, "hrZy4bUEBAVPV9L4": {}}, "extOrderNo": "ILPJqDbKXtFPmTQO", "extTxId": "O3dJd2YP1XIUKL9g", "extUserId": "3ACu1VGeRPwa2XfZ", "issuedAt": "1986-07-02T00:00:00Z", "metadata": {"0izLTURYUzEglKz4": "HU03X04OxvZytaM4", "c4qTIV7vRV6x146g": "CIrSkEiZX9iHZkth", "OUUtPBx2Kqt9eEQQ": "5qXZd41KiSlLVmN9"}, "namespace": "KSbiFMGQMewQlUnk", "nonceStr": "cE3UYV2aj9PL4PQG", "paymentData": {"discountAmount": 73, "discountCode": "y9ZqaNySvpXwMac4", "subtotalPrice": 16, "tax": 81, "totalPrice": 47}, "paymentMethod": "N0H6yn3PYiqbIBvN", "paymentMethodFee": 3, "paymentOrderNo": "304rwbySnVTSdmqy", "paymentProvider": "ALIPAY", "paymentProviderFee": 20, "paymentStationUrl": "tEYQl2xFFtZWlWKm", "price": 87, "refundedTime": "1988-06-24T00:00:00Z", "salesTax": 73, "sandbox": true, "sku": "fgPEZmTs18vZnFst", "status": "CHARGEBACK_REVERSED", "statusReason": "7Xy3gYPJQEukOcBt", "subscriptionId": "FyzW1aKe15m4NorN", "subtotalPrice": 87, "targetNamespace": "PP1hXmALwnidAmiL", "targetUserId": "FK5Dwak0R9n1WBVW", "tax": 31, "totalPrice": 72, "totalTax": 88, "txEndTime": "1995-01-07T00:00:00Z", "type": "NNivS5r4NDhqj2sH", "userId": "H7hGbYOjo5zLgQb3", "vat": 14}' \
    'kzGQPBQoXpXVvDLu' \
    'lelX30R2hPYkRArS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'ProcessUserSubscriptionNotification' test.out

#- 334 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 12, "orderNo": "iI7gI536KVAx0UzI"}' \
    'c4Ou1SpoEwl9NhPb' \
    'f7Fy05sDwOSuSEBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AcquireUserTicket' test.out

#- 335 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'XGahhtxfa1XwrrRM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'QueryUserCurrencyWallets' test.out

#- 336 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": true, "amount": 78, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"2ciimYDeDceMEtPk": {}, "jYd9PNBi79WHorOJ": {}, "PVoTCRV5enPlVeOc": {}}, "reason": "8uDGuA9ZVtPuyxsP"}' \
    'GoUCgc3BsZJVlVle' \
    'wocIRWjmJ81aRTbD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'DebitUserWalletByCurrencyCode' test.out

#- 337 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'oFbYLVqxK4NVV4KP' \
    'vi1IDd9h3DkrqAqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'ListUserCurrencyTransactions' test.out

#- 338 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 34, "debitBalanceSource": "OTHER", "metadata": {"czq4VIqU80fLtA9E": {}, "i7lNOS1nzf1JGU0A": {}, "qSFsHZyeSTGysSto": {}}, "reason": "p5Pu3KNnlg5aQvtZ", "walletPlatform": "Oculus"}' \
    'eEugVd3X7cq2K0e7' \
    'A1xHVzxmePZ06tOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'CheckBalance' test.out

#- 339 CheckWallet
eval_tap 0 339 'CheckWallet # SKIP deprecated' test.out

#- 340 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 31, "expireAt": "1972-07-14T00:00:00Z", "metadata": {"JBA4b3QbH3tCVfHK": {}, "GFiQvPyj1FCk4QM8": {}, "cZueXeYkC0oo7aTh": {}}, "origin": "System", "reason": "eaMDVE3ODebYRPEk", "source": "GIFT"}' \
    'hMg8bi8TTnK6au87' \
    '1df3bxo2XjwMhbca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'CreditUserWallet' test.out

#- 341 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 65, "debitBalanceSource": "TRADE", "metadata": {"VUwJJdMacFatm236": {}, "DRyTtXhEPzahVXYK": {}, "rblYxb89S0lysrME": {}}, "reason": "ifhjrwrJGqlmyy5E", "walletPlatform": "Playstation"}' \
    'RRKQ4tLERFGopzQ8' \
    '7CbxAJ0xdAPFrw8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'DebitByWalletPlatform' test.out

#- 342 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 38, "metadata": {"HR4Bp38TGeyfWQES": {}, "VLLj435Tsq6xxQZB": {}, "Giif91rgOdzASMsV": {}}, "walletPlatform": "Playstation"}' \
    'rHYlWFx0rb4eSExh' \
    'Chscwh8P6pejiRuU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PayWithUserWallet' test.out

#- 343 GetUserWallet
eval_tap 0 343 'GetUserWallet # SKIP deprecated' test.out

#- 344 DebitUserWallet
eval_tap 0 344 'DebitUserWallet # SKIP deprecated' test.out

#- 345 DisableUserWallet
eval_tap 0 345 'DisableUserWallet # SKIP deprecated' test.out

#- 346 EnableUserWallet
eval_tap 0 346 'EnableUserWallet # SKIP deprecated' test.out

#- 347 ListUserWalletTransactions
eval_tap 0 347 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 348 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'ListViews' test.out

#- 349 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 20, "localizations": {"AHfO9FrQ9lwzAWiJ": {"description": "H282OIiKU7MRx3xe", "localExt": {"fM47AsxVCXefUTho": {}, "flsBWhnubnROvA1C": {}, "xkXWIlkrF4cf9E2p": {}}, "longDescription": "KWkX7et7rl9ow7BD", "title": "niJH2zFRgcuTMYiB"}, "ESlCYdNui4AfrJuS": {"description": "aiOYxuj6n1UTUHsg", "localExt": {"jv4O66qvH38lYKeE": {}, "iUS3GYxZHMK3ybnM": {}, "1cQEihWjWNwYN6xe": {}}, "longDescription": "NeZMtT7f2d2NhlIg", "title": "GSvbXe1Hyw3mylk3"}, "Hwg4Wtj5wR9o07yp": {"description": "JFcZroi0QeG6cD8t", "localExt": {"rKjrFSu4MOj7pBAb": {}, "AKLICuRvKGIR3uSM": {}, "Syy1zY8VkZd3qEIV": {}}, "longDescription": "QCbFYV3NuJgscT8d", "title": "Y4nux3S39sGE4zXV"}}, "name": "kI5AV7Af2Tu32ZzA"}' \
    'TykI3Y8spu5S6I5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'CreateView' test.out

#- 350 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '9Aa4tLrATtqIhJQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'GetView' test.out

#- 351 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 42, "localizations": {"XPNCh5Rfq2UC1TCP": {"description": "Csq2BAEzRa56radY", "localExt": {"ciedOlGrfTUc5ACZ": {}, "JjhP2aqyZJps39vN": {}, "gtqv552OktaS7Id9": {}}, "longDescription": "oPGerpovdmW3j3eS", "title": "po6vhwdrFa4npr0q"}, "t5yxg5LXtD40Rsib": {"description": "RBputNAcV0wHVw4O", "localExt": {"JZ9KRfK3ElT6izH6": {}, "Pdx5D1ZrPFTEv91K": {}, "nFOHx4QGVt5sQ7M7": {}}, "longDescription": "4MHRwGWuXrmWB81v", "title": "pVnNLvfxMVPORdXW"}, "vsGZrPVAZ2ZLrDa1": {"description": "xpqIziihTn1qm3WY", "localExt": {"Y19InV7B8tHIYiWB": {}, "gIkW9QrR9bMgSr1O": {}, "TY7V3CTRYI1Nyon9": {}}, "longDescription": "lvA8o43VZXjofWhP", "title": "Jjqdf6RBiYws6MPq"}}, "name": "sSKy9SsYw3NP5yL2"}' \
    'qIrhx90T4EDNbgre' \
    '3EwhoEBW0FNQL1GY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'UpdateView' test.out

#- 352 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '5CSEzZsaak9MNj0m' \
    'Kis5KQHhwB99zMKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'DeleteView' test.out

#- 353 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetWalletConfig' test.out

#- 354 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'UpdateWalletConfig' test.out

#- 355 QueryWallets
eval_tap 0 355 'QueryWallets # SKIP deprecated' test.out

#- 356 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 49, "expireAt": "1984-11-17T00:00:00Z", "metadata": {"2mKAvkSzld2vfGrb": {}, "c2jP3wtM1fSokFng": {}, "c559mMToWdIIC6lF": {}}, "origin": "Oculus", "reason": "oAXWUBY9BL1BmvNw", "source": "REDEEM_CODE"}, "currencyCode": "IYCmOOskIKiuKPVq", "userIds": ["NdfcbarmjmzkYQML", "ffgy1mpc59V2qKD8", "lNq4hOjr98OLoHsz"]}, {"creditRequest": {"amount": 85, "expireAt": "1975-10-15T00:00:00Z", "metadata": {"17CLEa8QbsGBZrZx": {}, "DKJWeWYfQ5eExWeq": {}, "j0EGyRTt1yUKDmgU": {}}, "origin": "Epic", "reason": "sI3cSyJGEsS9JnHf", "source": "ACHIEVEMENT"}, "currencyCode": "7UTJHBJE3tOlW5QY", "userIds": ["YAf28mqvM4LzAMy1", "uLjZOmtY6jje5osr", "RcQcxJjxgx0It94B"]}, {"creditRequest": {"amount": 56, "expireAt": "1996-07-23T00:00:00Z", "metadata": {"TDWnlXZ0fFMUOsM2": {}, "D6XBEfj5FBqjqhaV": {}, "BjVf2bpiMDOiSWOp": {}}, "origin": "Nintendo", "reason": "ULctkrQt7UdVDHgE", "source": "OTHER"}, "currencyCode": "dNQhgapqGnYl698V", "userIds": ["RGqR2jdN2MQUBknT", "nbrD6I10HAKBM66I", "g4h5oxaA4ecsKGNr"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'BulkCredit' test.out

#- 357 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "uoLw9nJkDd0eeHTK", "request": {"allowOverdraft": false, "amount": 97, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"009o01wDwPk87RGZ": {}, "xhbon95Kr4kABVvv": {}, "oyJHCJBXauQb7rZO": {}}, "reason": "3cLAcITU9eaHQK6b"}, "userIds": ["9P66amF5l35onaRK", "tDxqspEHxJ7HIZTm", "r9S9JzIoTTXKTR2Z"]}, {"currencyCode": "2kOt01My99Nzxfq4", "request": {"allowOverdraft": false, "amount": 62, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"8AYrRRr985p7F8iN": {}, "9R9kmB5pdeZ7PqPh": {}, "viqqmJ2XxbkLOOWQ": {}}, "reason": "T73tzAjekCOilOpo"}, "userIds": ["W9jjIhrEmkNYBheQ", "ouKkx1qj85bRrVwu", "OnqEPcdhXj214NDt"]}, {"currencyCode": "NR4zCS89KqvbOl0D", "request": {"allowOverdraft": false, "amount": 67, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"b9zBS6MQ3orSyb3f": {}, "SoG1E1gohjzQBWPV": {}, "D8fgTZBggdAj0B01": {}}, "reason": "7EuJVu3uC314IH9M"}, "userIds": ["XZZg9Qz8cBJEfDTE", "Rg40yRzHF2sUxlgc", "8ndimKYOwqvWgcSM"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'BulkDebit' test.out

#- 358 GetWallet
eval_tap 0 358 'GetWallet # SKIP deprecated' test.out

#- 359 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'iL3ADcBZC1b1ulnq' \
    'TNaXTLYftRvPlpA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'SyncOrders' test.out

#- 360 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["xbm6EVV6HtbTcLIM", "pXtDVIHpxYskyOZ9", "GTOpAmyjwPmzYZp1"], "apiKey": "Cer18YeUzcRemWJu", "authoriseAsCapture": true, "blockedPaymentMethods": ["baHMsMOQdoVhxkHA", "GG58la2mBmEsorfA", "QM1flkB5I8W0zaXL"], "clientKey": "Bbr6dEvFXUrJEtc0", "dropInSettings": "XkTqZCdBgcQYrtBw", "liveEndpointUrlPrefix": "2f7cfdtSv2P9Gxo0", "merchantAccount": "lrSb1DeSFz0rREHw", "notificationHmacKey": "WGWNIB0y0jX59yF5", "notificationPassword": "X1xzeylWJrNvKlRF", "notificationUsername": "eIOal5139ds1poYn", "returnUrl": "2c28hYjUXTNy1fFd", "settings": "ZFpgDZL5cgPFdfkk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'TestAdyenConfig' test.out

#- 361 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "emcXh4pNS6sh71ns", "privateKey": "TcYAqRmpQJ4iKsMR", "publicKey": "zrkq6bbxROX48x3z", "returnUrl": "6oqsbyJVZinLIVPc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestAliPayConfig' test.out

#- 362 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "caYI6l6fKrVA93qr", "secretKey": "eneWTQ0fb8ClHBQX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'TestCheckoutConfig' test.out

#- 363 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'DebugMatchedPaymentMerchantConfig' test.out

#- 364 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "SaPIU1SAfAfEzm7o", "webhookSecretKey": "rhTTcA4tRZdrCvas"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestNeonPayConfig' test.out

#- 365 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "M0LBo8pp2WxzCDgX", "clientSecret": "IN2T2y2ghUM22Sod", "returnUrl": "o4xBNE56wEz4NNes", "webHookId": "lnTClsU2sYSfcMmI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'TestPayPalConfig' test.out

#- 366 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["5rwQFFHJVtc0SoSj", "cBoYhfbT5F3zL27s", "zSOYd9Y0NpVE2aa5"], "publishableKey": "kTg04QRdr4bKBKfi", "secretKey": "q3tQENj55DMrhcrF", "webhookSecret": "1L6pYsesFql7XfSk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestStripeConfig' test.out

#- 367 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "Thfq5OwxwX51WDxm", "key": "rewNJafvdNvKldM0", "mchid": "rekJkWWoqwGQqu93", "returnUrl": "mWqYwItRTQVKkxYE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'TestWxPayConfig' test.out

#- 368 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "WAJyifVsl4tsCWoX", "flowCompletionUrl": "1lSzPYNF01Lahplx", "merchantId": 5, "projectId": 47, "projectSecretKey": "jNC6mnTmEkvGygUo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestXsollaConfig' test.out

#- 369 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'YZDyX1XgjjnrUVMh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'GetPaymentMerchantConfig1' test.out

#- 370 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["Dfw4eyyzx2XNh0EY", "35JVEQoV68grUjl9", "Qae3pK8C8CdtTw2J"], "apiKey": "5ZQEu9BANVmy4KLy", "authoriseAsCapture": true, "blockedPaymentMethods": ["RCKGC9EJ56TgtZfr", "BCM5NKhIaT1B5Rkb", "c6yUtoHNPAPLpeC9"], "clientKey": "2ROlmtwrNVp1hq3d", "dropInSettings": "Vtu3cDHRPMJTQpwu", "liveEndpointUrlPrefix": "vc5CHBSCrAHrYQJh", "merchantAccount": "GB6o1O006QlzwNpw", "notificationHmacKey": "lkXg5rRaOG40vwmu", "notificationPassword": "x5X7eWoUz63g5ldL", "notificationUsername": "NvDsFRxvIWPhDHlg", "returnUrl": "uiwW43ftI0abvQQB", "settings": "yahJAdStJsp8I8Sv"}' \
    'YIsj0HTDvNXyTxvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'UpdateAdyenConfig' test.out

#- 371 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'RnlFSQ6v7K73Xi2A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'TestAdyenConfigById' test.out

#- 372 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "B5OYFvqKEDfQUOT5", "privateKey": "Zg2G1BWvZyqW6CSt", "publicKey": "rsDUMYOj7smPuH5B", "returnUrl": "ZrTsNJRR5uMT5lIH"}' \
    'TRyEidwdTqJoLD9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'UpdateAliPayConfig' test.out

#- 373 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'VnRYM4lgdcOb3Jx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'TestAliPayConfigById' test.out

#- 374 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "X529dtXtK0d0nuIB", "secretKey": "jVZjOjrIUNPjErpm"}' \
    'dsCqI9mZu9LEeOTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'UpdateCheckoutConfig' test.out

#- 375 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'HP4LtwjLUYUJQk80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'TestCheckoutConfigById' test.out

#- 376 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "tPmdgSg2KTH1uoBU", "webhookSecretKey": "pdqwNpqsh9jEInUN"}' \
    'jjzDzEs7bfi9Y5qN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateNeonPayConfig' test.out

#- 377 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'yFFoN9kFG7qVot9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestNeonPayConfigById' test.out

#- 378 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "EFUcFqi9IXEnojjP", "clientSecret": "0c29b1WNB9WkCyTo", "returnUrl": "Ri2vfZMlKU7yv9DA", "webHookId": "nbOd7qQPOKIe1lgN"}' \
    'xUznu6Mjx3XgwCS1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdatePayPalConfig' test.out

#- 379 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'yYFaMMSsZH370QWA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'TestPayPalConfigById' test.out

#- 380 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["B8aAtASkEknQOBTB", "GEdEfyK3mIRHA74v", "LT0RK95W5F4wbgjw"], "publishableKey": "LQ0g8wHSHjSLr6q5", "secretKey": "SdMiLPibZ6RvJ4Fp", "webhookSecret": "irWyaX4XU6HXjJ8o"}' \
    'ZkH55s6PT6eXj6a4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'UpdateStripeConfig' test.out

#- 381 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'a2T55JSy63UIiICb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'TestStripeConfigById' test.out

#- 382 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "L0NSbXYXl80IXa09", "key": "qvdnZbUJ9uSIJAuv", "mchid": "bRoyVKQWhRCa4Meq", "returnUrl": "aWAGntKi5VcfdJHS"}' \
    'Q99MzsmCz9csPD3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'UpdateWxPayConfig' test.out

#- 383 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'AixnTRCntYAOhAPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfigCert' test.out

#- 384 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '9lCMI8Jae96k6wPI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'TestWxPayConfigById' test.out

#- 385 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "bIRIjiYukur4iEhl", "flowCompletionUrl": "cmn3nMM88ZHroUTL", "merchantId": 49, "projectId": 2, "projectSecretKey": "sZkcJy594BukgYrU"}' \
    'kqKLhOtCoMjjcsvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'UpdateXsollaConfig' test.out

#- 386 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'UgpfrF2pDBhsviMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'TestXsollaConfigById' test.out

#- 387 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    'Kxm5AvwhDq9hlVwa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaUIConfig' test.out

#- 388 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'QueryPaymentProviderConfig' test.out

#- 389 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "Pt64Un3vbUiPzqRl", "region": "G9blKnrHstZmSBos", "sandboxTaxJarApiToken": "9B4FBRgTZf5xSoV4", "specials": ["NEONPAY", "NEONPAY", "PAYPAL"], "taxJarApiToken": "fWaKU8Ip9YwI71rp", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'CreatePaymentProviderConfig' test.out

#- 390 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'GetAggregatePaymentProviders' test.out

#- 391 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'DebugMatchedPaymentProviderConfig' test.out

#- 392 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'GetSpecialPaymentProviders' test.out

#- 393 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "STRIPE", "namespace": "lKslVxaomke2UPri", "region": "XGZvs3NmW1Oq88IV", "sandboxTaxJarApiToken": "mlOYuPb1aUarkc4H", "specials": ["NEONPAY", "WXPAY", "ADYEN"], "taxJarApiToken": "OSJ3cWczEEGO3c34", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    'FmlM5vFocITDTP5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'UpdatePaymentProviderConfig' test.out

#- 394 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'BOko0gsrX5YmIHaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'DeletePaymentProviderConfig' test.out

#- 395 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'GetPaymentTaxConfig' test.out

#- 396 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "juL7g0PIjLnAoNjz", "taxJarApiToken": "CHCUKdVx6o2rdsiM", "taxJarEnabled": true, "taxJarProductCodesMapping": {"VLZiKm15hez2Mgri": "Z60A9qKACSJnrZAW", "DQGJdqaQ6yjAOKmx": "scQRCmbWTm1PRgpz", "XRHuGgWoSnSmEo0d": "L02zFIdAPaaghTcA"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'UpdatePaymentTaxConfig' test.out

#- 397 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'cuTSz8tViSRVKzwW' \
    'qYcgoQp44IwVEXXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'SyncPaymentOrders' test.out

#- 398 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetRootCategories' test.out

#- 399 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'DownloadCategories' test.out

#- 400 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    '779DcEb5nBVeAEY8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetCategory' test.out

#- 401 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '9xEnoKKlyPtaGSVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetChildCategories' test.out

#- 402 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'lRTRrauD2sfxOt0y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetDescendantCategories' test.out

#- 403 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicListCurrencies' test.out

#- 404 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'GeDLCDurableRewardShortMap' test.out

#- 405 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'GetAppleConfigVersion' test.out

#- 406 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GetIAPItemMapping' test.out

#- 407 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'n1T6t1Gtc06fMGRK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetItemByAppId' test.out

#- 408 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicQueryItems' test.out

#- 409 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'whR0ZPvwplWQITcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemBySku' test.out

#- 410 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'a8Pk58cdH7Udivaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetEstimatedPrice' test.out

#- 411 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'vHNmSOYNlojMWEfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicBulkGetItems' test.out

#- 412 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["T6ZPygSkfhXyykcl", "GUJ6YBDI6H0BLhMQ", "NcUFUuoIPjHtjlsA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicValidateItemPurchaseCondition' test.out

#- 413 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'VWEExJQvJmELMA89' \
    'ixWjkF5JwpR9Zt9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicSearchItems' test.out

#- 414 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'hwk7ORkQcyu5lxJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetApp' test.out

#- 415 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '6HGJ8Ih3lT8pzoI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetItemDynamicData' test.out

#- 416 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '6PcpuwiYC0cysoxU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItem' test.out

#- 417 GetPaymentCustomization
eval_tap 0 417 'GetPaymentCustomization # SKIP deprecated' test.out

#- 418 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "GXNjS5quHgrhtzk9", "successUrl": "E9cWWrZXa2EG94tg"}, "paymentOrderNo": "rGpAyKwLIbU47jEq", "paymentProvider": "WXPAY", "returnUrl": "5mDZyNmi9Nee8E16", "ui": "CJURxlwSvm0n7bp8", "zipCode": "8FcFKPGv9PMYogmU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetPaymentUrl' test.out

#- 419 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'VrSepOEo9ODEl88l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentMethods' test.out

#- 420 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'Sj9W9Qui3Qm0WGaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUnpaidPaymentOrder' test.out

#- 421 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "whFTQ6M5yBhQNfv1"}' \
    '1khOgEX8q4XcyM1q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'Pay' test.out

#- 422 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'uCP7gHWdrdkbXfhV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicCheckPaymentOrderPaidStatus' test.out

#- 423 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    '7MAA1c3t56EpmqXt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'GetPaymentPublicConfig' test.out

#- 424 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'I1ea94zZAdFCTO6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGetQRCode' test.out

#- 425 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'C2QUf0Whdcum4saj' \
    'e9BnJ8xXUB2jgA8f' \
    'STRIPE' \
    'XdoImFIj7wmEGJ3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicNormalizePaymentReturnUrl' test.out

#- 426 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'RDNuaHQZFDy0zd6u' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'GetPaymentTaxValue' test.out

#- 427 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'rFMIeo9PYRTxSprB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'GetRewardByCode' test.out

#- 428 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'QueryRewards1' test.out

#- 429 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    '0BtuiJEqmbaRx6F3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'GetReward1' test.out

#- 430 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicListStores' test.out

#- 431 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicExistsAnyMyActiveEntitlement' test.out

#- 432 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'iux9udWaDYHSt1EE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 433 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'ifnuSTtCN8i2tS7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 434 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'AMAxwXuiaHCNLmnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 435 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetEntitlementOwnershipToken' test.out

#- 436 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "RPStXhqg4XeI32fE", "language": "gebr_EcLJ", "region": "Yj6o1GSa6NGHHLhy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'SyncTwitchDropsEntitlement' test.out

#- 437 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'P7oboUMlvsFaoUMm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicGetMyWallet' test.out

#- 438 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    '7qtHKySXXtUEByVb' \
    --body '{"epicGamesJwtToken": "F44ZXRI1UU4mMQOT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'SyncEpicGameDLC' test.out

#- 439 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    '2uy3CoHMYJNBA3ZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'SyncOculusDLC' test.out

#- 440 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'RQrb2Dz3s65mOtCi' \
    --body '{"serviceLabel": 9}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicSyncPsnDlcInventory' test.out

#- 441 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'uw6EucgA75jV5cXe' \
    --body '{"serviceLabels": [8, 50, 43]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 442 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "kx4piMtnYep4qMEi", "steamId": "jH07e7HJsG6fiR0i"}' \
    'mQt0JNbgDRBXsG5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'SyncSteamDLC' test.out

#- 443 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'NHroQDKwoHHnyDbU' \
    --body '{"xstsToken": "xgpdscOtCH10NfsD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'SyncXboxDLC' test.out

#- 444 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'VwASx4C5vUvk9EIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicQueryUserEntitlements' test.out

#- 445 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'bSzg8oOPBDgEhBUn' \
    'AibqWQYaieasz9kv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserAppEntitlementByAppId' test.out

#- 446 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'rFaaYiZO9uil887o' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlementsByAppType' test.out

#- 447 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'lefkOBCLDC1UuFwh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserEntitlementsByIds' test.out

#- 448 PublicGetUserEntitlementByItemId
eval_tap 0 448 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 449 PublicGetUserEntitlementBySku
eval_tap 0 449 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 450 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'yu1Iem83ei0Y4vfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 450 'PublicUserEntitlementHistory' test.out

#- 451 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'CaZq3M9FhVaHT51C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicExistsAnyUserActiveEntitlement' test.out

#- 452 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'YJCZK9kz9FkJg1Z8' \
    'rxzVxQff0U7Yg4JR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 453 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'kEi3eToF7Xn3jX3N' \
    'YM8lZTtctONZpmzO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '2FoQfKpeRnDp96Q4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 455 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'Kc2SuWvtgC60a1W5' \
    'NbXGzAcTpSSar2yA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 456 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'CKSgTLLhfpe6fOhc' \
    'juByeSW8hYtAfRY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlement' test.out

#- 457 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["M5BHryGVAVHgXTyS", "x0ui9SG992PUNJjy", "BkLHCJw8ZxKr2hhz"], "requestId": "SgEVDTchtwhQp2LA", "useCount": 19}' \
    'gIQhGe5QDctKW2dD' \
    'MadFf2HvnNcdQko2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicConsumeUserEntitlement' test.out

#- 458 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "4IrllBLgRbKXSWc1", "useCount": 64}' \
    'ujkaWDqUU627KpJn' \
    'SnPzwlgrOizTeAjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicSellUserEntitlement' test.out

#- 459 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 98}' \
    'PNIVw3l4lq6EBsgR' \
    'IweAJUroJ8CWZayK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicSplitUserEntitlement' test.out

#- 460 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "nRlYPxuMiEWl2YYu", "metadata": {"operationSource": "INVENTORY"}, "useCount": 90}' \
    'iEAHUJuW7Y2KJEH6' \
    'UuvOmu2ptkKPy0Gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicTransferUserEntitlement' test.out

#- 461 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "WFWBkFOuRT7ullmb", "language": "Wqc-273", "region": "lq6UHrZrPFUufhem"}' \
    'qcYTjPlHf8VEuKiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicRedeemCode' test.out

#- 462 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "LQ_285", "productId": "e4ZffXJQ3ETXfQnF", "receiptData": "fOmDYHeD3I494uw3", "region": "RdIA2wJ5cEseHkDE", "transactionId": "sLlMzlivuvvLVhp4"}' \
    'pvZaXuJcgNDwcHbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicFulfillAppleIAPItem' test.out

#- 463 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'eulJ0qmAMOxQN2tq' \
    --body '{"epicGamesJwtToken": "3ANW3j2knM82Js3M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'SyncEpicGamesInventory' test.out

#- 464 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": true, "language": "zxnl", "orderId": "gZIsLFKNLEWSf3xc", "packageName": "BSJmVJzcCB0Zx2kI", "productId": "BmEY9AGikaZJ2fla", "purchaseTime": 87, "purchaseToken": "ViPnPIspBwL7FLtM", "region": "U7AARIZojppBuCbl", "subscriptionPurchase": false}' \
    'aT5zrESuLoU4WFfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillGoogleIAPItem' test.out

#- 465 SyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-sync-oculus-subscriptions' \
    'qhTf020WVESn3Lq3' \
    --body '{"skus": ["vc3ONzvBgKDPEX7Z", "irJaKrszETGuWESP", "DCrsw8wGhpJWYgTB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'SyncOculusSubscriptions' test.out

#- 466 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'MAqnV7TlTDpCts9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusConsumableEntitlements' test.out

#- 467 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'LzVbQmMiR5z2zAUS' \
    --body '{"currencyCode": "TeMo4h6vddaV7tlG", "price": 0.19808585583168414, "productId": "SltmTF1Rc4FRD9FC", "serviceLabel": 64}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'PublicReconcilePlayStationStore' test.out

#- 468 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "zjpbZYwmB6mjB4WL", "price": 0.1693757626676382, "productId": "FEbz1aaXClnbKhW1", "serviceLabels": [68, 13, 6]}' \
    'j8siRtfLBrOtMCUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 469 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "RqPgqjqL5sOSWb72", "currencyCode": "ObZi7fW369P70k7N", "language": "uTB-193", "price": 0.97284888194068, "productId": "uJAsbAxWxy80okxa", "region": "YaNSXzxd2oRSinjI", "steamId": "KU2N42M5XJnyM5Tv"}' \
    'M5NJ9UFoefZdeND5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'SyncSteamInventory' test.out

#- 470 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'EahSZeodABnaVuUH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamAbnormalTransaction' test.out

#- 471 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "HBtfHmq5d54tGJLH"}' \
    'nnQAM0DREcq6d87t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamIAPByTransaction' test.out

#- 472 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'APPLE' \
    '1bxGCZTRsbLMecwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'PublicQueryUserThirdPartySubscription' test.out

#- 473 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "kE2St3jReFAEQ1wU", "language": "PN", "region": "zxbogRXHBHxz5rKc"}' \
    'xfdG9prJLxAKKoiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'SyncTwitchDropsEntitlement1' test.out

#- 474 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '3OVxYsGgVzsIOyFr' \
    --body '{"currencyCode": "UNQTGPDgO1DYPpkU", "price": 0.29436686109079546, "productId": "IxAMvQ0TYyioYSsq", "xstsToken": "vixE24A0MBZILiVJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'SyncXboxInventory' test.out

#- 475 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'pRPjbkDPIc5VKxCJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'PublicQueryUserOrders' test.out

#- 476 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "v2JADKAlbiwvSCh7", "discountCodes": ["Ghlo6BJVxNK6m3dL", "3nAeUS40JxsNUjSV", "gGsouhPkDuF7dDQ8"], "discountedPrice": 44, "ext": {"pTtsmzJtuOWKZOaS": {}, "MJHAxVRHDzHpHJ0b": {}, "dnZomYJoJJTExoot": {}}, "itemId": "NzMPSXZiLgCh92m9", "language": "df-Fp", "price": 60, "quantity": 98, "region": "Fq8rcYfG8Z9PgWjy", "returnUrl": "2W7npJxp6vrbIUXH", "sectionId": "WViHiwgQxiaDuZwY"}' \
    'sAt9fGKNjmyiX8Bw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'PublicCreateUserOrder' test.out

#- 477 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "W15hXKp1SF6rFNCe", "discountCodes": ["kjryYdmc2XymIObj", "4IbY0HX1WWNf2XD8", "RrxucZTOtfIlJrMO"], "discountedPrice": 85, "itemId": "esbUpxGfZJIyifvw", "price": 26, "quantity": 36}' \
    'sbXIs1j2kdfY9jVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicPreviewOrderPrice' test.out

#- 478 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'PTTfSopAH3k7WRbB' \
    'nExLSlEBkIhkcYsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicGetUserOrder' test.out

#- 479 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'lko7aPaqrCwlwxAY' \
    'SodwJnbozMWXk0Ia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicCancelUserOrder' test.out

#- 480 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'fEeZiiyd7fv9BMDJ' \
    'jJPbrYcp304cHsi4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrderHistories' test.out

#- 481 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'N013hrlkY0fX6m0y' \
    '4oC4cK1B2rFxEper' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicDownloadUserOrderReceipt' test.out

#- 482 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'uU9eQbEZT9w603Yc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicGetPaymentAccounts' test.out

#- 483 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'Gu5NpJQGVsYAcnwt' \
    'paypal' \
    '3xQHAKaroEL6WcEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicDeletePaymentAccount' test.out

#- 484 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'fkqADxDJekvCkzUk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicListActiveSections' test.out

#- 485 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '7CFpTd1Fy4galHYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicQueryUserSubscriptions' test.out

#- 486 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "WoM0gqpktaqz3Riz", "itemId": "5qKt4QbzYc1vSzFO", "language": "sHcj", "region": "3ck0l8mOK0kpUyeN", "returnUrl": "ZKy2iBQotCRSvH1D", "source": "a6ph8feFAQdPnACA"}' \
    'mtiWRzvYJUsYMz1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'PublicSubscribeSubscription' test.out

#- 487 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'DEdxhs9Fxl7ZjEYG' \
    'euqo7IFvww79F27f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 487 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 488 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'of6S1Rehi3ZZ7d9v' \
    'k8P3v6DcFUnX1vw4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 488 'PublicGetUserSubscription' test.out

#- 489 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'uhVCqrs11e0iPV2G' \
    'PJGNNZWYwungysf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 489 'PublicChangeSubscriptionBillingAccount' test.out

#- 490 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": true, "reason": "ddQRq4snlpfQTa0w"}' \
    'BlJwb8gc7EIBJIKo' \
    'ubLJP5UIfhGfCHQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 490 'PublicCancelSubscription' test.out

#- 491 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'GTdjvw8KQZ00gJM1' \
    'CfnjdHJX3yCxhko4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 491 'PublicGetUserSubscriptionBillingHistories' test.out

#- 492 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'vfBfr53TVizk09fy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 492 'PublicListViews' test.out

#- 493 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'HgSbImHW11IEk63C' \
    'pmSigPZeDvc6TeWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 493 'PublicGetWallet' test.out

#- 494 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'i65UMASaXxaUHbPf' \
    'HkAIPuvmuzR0bwUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 494 'PublicListUserWalletTransactions' test.out

#- 495 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 495 'PublicGetMyDLCContent' test.out

#- 496 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'QueryFulfillments' test.out

#- 497 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'QueryItemsV2' test.out

#- 498 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 498 'ImportStore1' test.out

#- 499 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'v7u1YlkQNEVsJzUP' \
    --body '{"itemIds": ["CRam34YuUk280BxA", "xexZB4EErArsCARm", "VlNfne35Jx8S9YCi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 499 'ExportStore1' test.out

#- 500 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "ABOEkZ1hv7zx2tjZ", "entitlementOrigin": "Twitch", "metadata": {"mB7W0EhLgAiPA3yI": {}, "E2iRHDV6KTBcyqAg": {}, "jLhYxqBLkJqCtqM0": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "RU6346MJE2Z5gvfv", "namespace": "hJoQ6KTnc70J3JNz"}, "item": {"itemId": "hUB7BaWaCv0yipDx", "itemName": "A1dpehk0z89ChLgg", "itemSku": "pl5I3N3i0llxVU5W", "itemType": "ZTOvW4MiVum8HuuX"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "z88R6CZzwdLFexMs", "namespace": "FUBv4AFzMvefUJf0"}, "item": {"itemId": "82K6GVUNdcW7dNRH", "itemName": "WkAYwtCmTIookYhY", "itemSku": "fhFqmfOX2gTbFgW9", "itemType": "MW8EHRDKkx4iquJN"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "PR6izcot8gfvyFFG", "namespace": "nP0iW9zzvYAiICmc"}, "item": {"itemId": "uUGrDkQ9ODsNGS0v", "itemName": "pz0yafOqaviwjyzt", "itemSku": "0XEbXHRjjX4Niijp", "itemType": "jEEO1RcLcC8hsGfl"}, "quantity": 18, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "O1oQKqILibtG6Mbn"}' \
    'P79hl3Kb1CkI9RZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 500 'FulfillRewardsV2' test.out

#- 501 FulfillItems
eval_tap 0 501 'FulfillItems # SKIP deprecated' test.out

#- 502 RetryFulfillItems
eval_tap 0 502 'RetryFulfillItems # SKIP deprecated' test.out

#- 503 RevokeItems
eval_tap 0 503 'RevokeItems # SKIP deprecated' test.out

#- 504 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'aGRAD0VBJdjdGbRm' \
    --body '{"transactionId": "u0NOO1EEkgQLfvmZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 504 'V2PublicFulfillAppleIAPItem' test.out

#- 505 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 21, "endDate": "1973-11-01T00:00:00Z", "entitlementCollectionId": "45avoS9lAap4MA8S", "entitlementOrigin": "Oculus", "itemId": "XlXqzLTA9oE0P2GC", "itemSku": "MDAQtHC3JC2VNhGT", "language": "7fhjYQTM1c7DHt6M", "metadata": {"8XTi82GCqjUr8gdO": {}, "oavW1xfmnfY6D9Vp": {}, "8jcEx9slNViyQfbf": {}}, "orderNo": "wj7AXqGTTwPlpxCk", "origin": "Nintendo", "quantity": 68, "region": "b7a65HnETCgoe1sa", "source": "REWARD", "startDate": "1976-07-17T00:00:00Z", "storeId": "gEHpu1xxUOzWTXbN"}, {"duration": 80, "endDate": "1989-12-26T00:00:00Z", "entitlementCollectionId": "XJFWjPFtofaaD5XQ", "entitlementOrigin": "Nintendo", "itemId": "shsUocqjbtC1Op2D", "itemSku": "n5tRZqzKJ4QbnnFk", "language": "6KIslv4wOTronWgt", "metadata": {"TV5xsbAFzTuNBE9p": {}, "Ih3TQy7NnIqBatyS": {}, "Ur0WYKIgcYxs2y0N": {}}, "orderNo": "ZhKDD2TFPinU9e1G", "origin": "IOS", "quantity": 88, "region": "AjugsLKAHvYSJ54o", "source": "GIFT", "startDate": "1999-11-13T00:00:00Z", "storeId": "iaAzzQv6dC4l6pF1"}, {"duration": 35, "endDate": "1976-12-28T00:00:00Z", "entitlementCollectionId": "k3pi1AxKacdaPDd2", "entitlementOrigin": "GooglePlay", "itemId": "TsBDWWpuCelJqAea", "itemSku": "cALBFrVv5aVm8Td8", "language": "naeWbyesDcgMssCK", "metadata": {"pqLjbaXhUxZbiQcR": {}, "uZKqotcQlZUu10eN": {}, "0TR3kmazjYtxQCax": {}}, "orderNo": "jgJs8PxPe5xliMfQ", "origin": "Epic", "quantity": 94, "region": "9VODcVtjS9uNr6ON", "source": "REDEEM_CODE", "startDate": "1996-12-28T00:00:00Z", "storeId": "0hVFUeRNd0TRUiFy"}]}' \
    'v0DiRwyWu8QLiY5E' \
    'w7ynZyinDXgHG7BE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 505 'FulfillItemsV3' test.out

#- 506 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'XkKHDRIsjXMxauFr' \
    '15aVXZDvfYUjbqSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 506 'RetryFulfillItemsV3' test.out

#- 507 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'ESwKuxLG6SLbij0Z' \
    'JrNfKBCmfOZfEEtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 507 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
