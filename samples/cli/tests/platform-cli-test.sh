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
platform-grant-entitlements '{"entitlementGrantList": [{"collectionId": "LF6M4lNa4JUMSHNg", "endDate": "1979-06-15T00:00:00Z", "grantedCode": "RqCV7usamANkZlOX", "itemId": "9Sfo95HgXqKhTPkw", "itemNamespace": "fLM9uSybRzWek2gZ", "language": "Ksw-SUOB", "metadata": {"c6bWvgpVyW9dD1kO": {}, "mvrAejcq2LgkQuaS": {}, "7RBx3vim02jBOxrZ": {}}, "origin": "Steam", "quantity": 100, "region": "yvpcLYOWA8NjxOna", "source": "REFERRAL_BONUS", "startDate": "1980-04-30T00:00:00Z", "storeId": "9Sk4lq2faBcAXXKl"}, {"collectionId": "hvyH8paOJtxqMPpc", "endDate": "1995-09-19T00:00:00Z", "grantedCode": "fRwNj547fH0XrKED", "itemId": "pEY8VnocGAjci0V3", "itemNamespace": "tBf2jnHGKXphn50c", "language": "Uqog-DJnH", "metadata": {"qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}, "oGH1XEfY6QAYn6WQ": {}}, "origin": "Playstation", "quantity": 95, "region": "Y6vSkVFWdsbYuVEG", "source": "ACHIEVEMENT", "startDate": "1983-06-17T00:00:00Z", "storeId": "YheR3j5mNZ6vwv7K"}, {"collectionId": "8Asvt1j1Rx59hesN", "endDate": "1995-11-08T00:00:00Z", "grantedCode": "y2NvZ85DDKDAF8KD", "itemId": "sBZOuYQJ03BAHZ7c", "itemNamespace": "53q7akMpcmnnx6RV", "language": "RSK-WQ", "metadata": {"7aZK3h65hbN15zfQ": {}, "SfQrtfF3TQN0OcND": {}, "Lr36vzohZyjMQAg5": {}}, "origin": "Nintendo", "quantity": 69, "region": "PYhrLTyU8OhgfY9J", "source": "REWARD", "startDate": "1990-09-14T00:00:00Z", "storeId": "yvfvHEsJKQQewVLM"}], "userIds": ["UoAnaRcYp7FUjfIG", "meGelYF5wWaDhukU", "affoflEIByYqeKN0"]}' --login_with_auth "Bearer foo"
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
platform-update-item '{"appId": "A9DkaSOWgtg8yw8l", "appType": "SOFTWARE", "baseAppId": "qJqzoKMRMG541PAi", "boothName": "NjULsx4SnKNXLMUa", "categoryPath": "DSwwQlnNRZJHBSB4", "clazz": "fZWEFIZs28Ff1kZp", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"ktx3N7WNMYIfcDKb": {}, "Lu8pnK34oA1keYXJ": {}, "vtggDdXjbdjMBahF": {}}, "features": ["z1eI7Q5pu9PutLf6", "BJ9Sgl7H1sdH2RIJ", "ZZGMTcqnWrIprOv0"], "flexible": false, "images": [{"as": "rvZoBGQbO4S3rURG", "caption": "WUzPAE6SdV4D5jft", "height": 89, "imageUrl": "2FI3vyyqRzc20O7F", "smallImageUrl": "dsJP1G9tyBTfERXd", "width": 44}, {"as": "MYDUTLBeCidXjuGg", "caption": "x8ncXejmeZtzT0qj", "height": 59, "imageUrl": "ltsqfiZrthVvyX0O", "smallImageUrl": "CKDJE3RMUddwSSgx", "width": 58}, {"as": "R3hCGNgaJmuALlMQ", "caption": "l9RLrthbfp0VgweL", "height": 24, "imageUrl": "oNB6hI6IpGcToWgF", "smallImageUrl": "vdRhG9NwV3zDuqVl", "width": 98}], "inventoryConfig": {"customAttributes": {"vJrBCqeg67d4RWOq": {}, "O4U0bitNQLzwRoWn": {}, "R0AbkCPY70FmvviV": {}}, "serverCustomAttributes": {"IBbcujF8Vk5qb8Nh": {}, "WWwaxyMchkt8l5IP": {}, "SrwrJl7wYIVw13NC": {}}, "slotUsed": 29}, "itemIds": ["l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG", "ZGwiVj7eDTaka9AB"], "itemQty": {"fX1IByPEOuPhGspR": 17, "3b6o5uB2XM6IHy7E": 63, "cubN4AUUPFPscZsX": 8}, "itemType": "SEASON", "listable": false, "localizations": {"D4DMtqfIGiGJovgW": {"description": "SRxZ8N4UQ2fg3V1o", "localExt": {"2x0hL5DuBDqMyIAz": {}, "Wze94MEdJFAy2JTl": {}, "lJkRGB8jqJEd6eqq": {}}, "longDescription": "sBVyONV0JRtozI0j", "title": "pliCFQ6WgJpGPigd"}, "c5VyC4qvWjVac1cQ": {"description": "vSxgTNIUzxDgBlIb", "localExt": {"uzm7DzJ20NFRJIhF": {}, "XR2dYprPmbpuptEC": {}, "Gd5cdXC2Sesc6y68": {}}, "longDescription": "whNBYl9iCqfW6rqG", "title": "OQny4ij4ysYPonb5"}, "9gQffkNOmubxEJr2": {"description": "qEAuJbpZSrcbc4LW", "localExt": {"fKaY5c1tP5TDuI5f": {}, "6m4KC07CnsZe32hq": {}, "EcB1ExYMBb3ckvoa": {}}, "longDescription": "JYdMqGegcg3eRvBZ", "title": "XN3cjIXmFWRJnj8x"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 27, "endDate": "1988-08-27T00:00:00Z", "itemId": "a6Zuxk6u6HXXdiC9", "itemSku": "ZDj4E4mv12FNXypo", "itemType": "OLl13j84P0KqirJ4"}, {"count": 86, "duration": 14, "endDate": "1976-11-13T00:00:00Z", "itemId": "eUYcYJ4QzXCmqr6g", "itemSku": "mPGaHP5SVPvRLiDi", "itemType": "0mNHb6Lx8eq8SGNw"}, {"count": 62, "duration": 62, "endDate": "1992-11-25T00:00:00Z", "itemId": "eRj17xGhaBKoUfiH", "itemSku": "jGmCyPsKCJTv1ic9", "itemType": "gvagF2cSuztsJ5tj"}], "name": "64gV7nmDk29mcjSu", "odds": 0.40713130669594944, "type": "PROBABILITY_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 85, "duration": 3, "endDate": "1991-12-03T00:00:00Z", "itemId": "StqPtQmQN6eKAGiZ", "itemSku": "FCftT0RWECdjWYrn", "itemType": "ulxcCKAru8pOaAVL"}, {"count": 59, "duration": 85, "endDate": "1985-04-27T00:00:00Z", "itemId": "4k3JwkdaxR7GJpYm", "itemSku": "uYCPG181q9GA5Dyd", "itemType": "C2D8UT6KOc4VPDUR"}, {"count": 45, "duration": 0, "endDate": "1979-07-19T00:00:00Z", "itemId": "JligLlRxOelKykIC", "itemSku": "RxF6HtlER2txs4qr", "itemType": "NARATn6KXOutlYBb"}], "name": "LhL8KXx25FZfQIod", "odds": 0.7643235281614817, "type": "REWARD", "weight": 45}, {"lootBoxItems": [{"count": 34, "duration": 79, "endDate": "1992-02-07T00:00:00Z", "itemId": "sBpCJBIXLGYcwWVR", "itemSku": "K6UKk5ozrXA4HZHN", "itemType": "yq9odanhR1Zrm3th"}, {"count": 95, "duration": 1, "endDate": "1982-06-14T00:00:00Z", "itemId": "V87yfkycLSVdleSa", "itemSku": "AylsmLYe2phYOgT5", "itemType": "kDTyPl3dKF7NXEjr"}, {"count": 74, "duration": 79, "endDate": "1995-03-23T00:00:00Z", "itemId": "OHGwbADMfuOmh0lc", "itemSku": "iRhVZ2DeoODXMzLS", "itemType": "rzoiBnYi5UWs3tYl"}], "name": "YeMoCimJySocRvUW", "odds": 0.4684644644629602, "type": "REWARD_GROUP", "weight": 37}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 85, "name": "ZKPNoN9AWtLK9TFg", "optionBoxConfig": {"boxItems": [{"count": 16, "duration": 6, "endDate": "1984-03-14T00:00:00Z", "itemId": "oijBPAp6EPb988Nz", "itemSku": "xrDKVpULjjiw3NeV", "itemType": "G4DJi9DaMrc0WFgK"}, {"count": 18, "duration": 63, "endDate": "1993-12-24T00:00:00Z", "itemId": "5x2CPVYYG9WvoGmA", "itemSku": "mvaVV5YfxnUNcwjr", "itemType": "7gSGhnfuF4WZiQVI"}, {"count": 59, "duration": 8, "endDate": "1995-12-19T00:00:00Z", "itemId": "pWd3UM08gMXhdf3j", "itemSku": "uXW4JprIb3CJCAtv", "itemType": "SG8Cfa9dzOJDGCTH"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 60, "graceDays": 10}, "regionData": {"xeR6d7r1SQw80JfM": [{"currencyCode": "pPrSqYypRUnq5o4E", "currencyNamespace": "TeCUYG9ccTt7Wxw8", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-01-17T00:00:00Z", "expireAt": "1994-07-25T00:00:00Z", "price": 46, "purchaseAt": "1993-05-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "dk0HATGylx2JG2KN", "currencyNamespace": "GfhzfCTxxrsRRLee", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-10-17T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-08-29T00:00:00Z", "expireAt": "1996-12-08T00:00:00Z", "price": 67, "purchaseAt": "1988-01-27T00:00:00Z", "trialPrice": 18}, {"currencyCode": "YohxMp3uOQIybqWf", "currencyNamespace": "G9BJ6FVKlbYHtbPt", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1981-01-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-02-19T00:00:00Z", "expireAt": "1982-12-28T00:00:00Z", "price": 42, "purchaseAt": "1976-02-19T00:00:00Z", "trialPrice": 31}], "FDa6wUQvehKqwCh8": [{"currencyCode": "6XmRkCEcfHDCdl59", "currencyNamespace": "Wp9A3tXGve6DdK6u", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1986-06-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-05-01T00:00:00Z", "expireAt": "1972-10-15T00:00:00Z", "price": 29, "purchaseAt": "1985-02-27T00:00:00Z", "trialPrice": 50}, {"currencyCode": "zBw3xLUcCEt0Dzmk", "currencyNamespace": "Jq1sml5bYt76BNsi", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-03-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1993-03-31T00:00:00Z", "expireAt": "1971-01-24T00:00:00Z", "price": 61, "purchaseAt": "1985-01-30T00:00:00Z", "trialPrice": 32}, {"currencyCode": "Fe8ATUqVxcSthrpn", "currencyNamespace": "MUBsnUfuQIcSbUt5", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1982-03-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-03-22T00:00:00Z", "expireAt": "1977-09-21T00:00:00Z", "price": 66, "purchaseAt": "1992-05-04T00:00:00Z", "trialPrice": 27}], "uUsdtq4dOwNESzCE": [{"currencyCode": "W9dUVhZjLftC3sCS", "currencyNamespace": "8CpLCqPD9CeDEdCn", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1990-09-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-06-10T00:00:00Z", "expireAt": "1998-08-12T00:00:00Z", "price": 1, "purchaseAt": "1976-09-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "r8CDapjwNOl4k8rV", "currencyNamespace": "Nrm8drv8QD2JOe2N", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1984-05-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-09-11T00:00:00Z", "expireAt": "1985-06-23T00:00:00Z", "price": 12, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 91}, {"currencyCode": "PgIGuetxFMqXCQMA", "currencyNamespace": "qQ2ZRGzNtrThFa9X", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-04-26T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-11-14T00:00:00Z", "expireAt": "1977-11-13T00:00:00Z", "price": 41, "purchaseAt": "1975-10-06T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "ZJ7O8sAQ32wj9uaD", "price": 53}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "qs2mqtnGAqXUjNyp", "stackable": true, "status": "INACTIVE", "tags": ["FlounC3vJKBC7Swg", "JEhxPGbEk7s7gw07", "oViPeIB4Ehy0Y5aS"], "targetCurrencyCode": "JVDginxAM77eY9C1", "targetNamespace": "4FbfiI2NPvl1kCY5", "thumbnailUrl": "bEokxXxkWZbjf7GZ", "useCount": 48}' 'yumBeIqdQGZC5kM0' '3HHijsQRj7N8IAjm' --login_with_auth "Bearer foo"
platform-delete-item 'sonjj0ZR50BQ1U6a' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 64, "orderNo": "DV5uTcYsoahUrELQ"}' '1btjJOqQMgZWAU6E' --login_with_auth "Bearer foo"
platform-get-app '92nHJzvw7tnYtGfv' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "0EJyjBu4EzwRjD7j", "previewUrl": "mQJeFPghqamSc5y0", "thumbnailUrl": "X48eT7Mluexk87b9", "type": "video", "url": "5BTsEA3EdmW8saab", "videoSource": "youtube"}, {"alt": "edopzwSluBtRFPKT", "previewUrl": "hyGnbjmPDKFS6u9F", "thumbnailUrl": "Huv1M3qfch4SqIV6", "type": "image", "url": "PHlaeYl4csFq65cU", "videoSource": "generic"}, {"alt": "6yJaj4ovoKWE4EW0", "previewUrl": "sw8v5peiuxoBJATa", "thumbnailUrl": "uyD3XCXVMiyEvMf9", "type": "video", "url": "Ca2vWadLmQtYKmEM", "videoSource": "vimeo"}], "developer": "TFzwdOMdupwD4O3u", "forumUrl": "NbcIDcIyvZbOy1T4", "genres": ["Adventure", "Action", "Adventure"], "localizations": {"Z2PofaJoSqtrEOqx": {"announcement": "H46fRTSZoDdT0fef", "slogan": "o74eg3Nt2c0r4GqF"}, "0NHglOVuNZ9LzNeJ": {"announcement": "nBurh54CWbYb0Peb", "slogan": "yt8b4DGscjwrizsF"}, "UgYwbaLvqvQ2NbmD": {"announcement": "ITuymTBjn3d2sFzM", "slogan": "S3QaVjZF7Ax6115K"}}, "platformRequirements": {"g9U8vrQJXQxoIbVi": [{"additionals": "2CLEk277Ivjj1A64", "directXVersion": "7XQ3koaAfZIim0sF", "diskSpace": "Pm1YN27bojDVaZLp", "graphics": "x4kEWYkO6KrKUMhJ", "label": "rASBh61hmWKSSrF3", "osVersion": "5anDGvur19V18oIr", "processor": "UKXttgAI2QdWJFLm", "ram": "oPEgd8EMspOs8nki", "soundCard": "c9gj5vyUMAAmIHYb"}, {"additionals": "sxG5N066FXb88SbL", "directXVersion": "Oa21DiSFsm0XXQJW", "diskSpace": "szvTQEuALzDNp1SZ", "graphics": "58aDllwzTRHak1MX", "label": "xj7Esrg7900nml5B", "osVersion": "idsK9dCEzhVnOv0P", "processor": "QbVIaKiHfoeorY7A", "ram": "1otGFyv2SMjbEr50", "soundCard": "qGdCZIc6EFqBKxbS"}, {"additionals": "7Q2OgRucL1jwRXzf", "directXVersion": "jDZZBmOau6syme06", "diskSpace": "c6SKLc2mEC3IXl5X", "graphics": "CbkOfHaGr5kdazly", "label": "pvt6lSLfU7HByGXP", "osVersion": "Mqxj4hBgVY3YAxZL", "processor": "KbcOdyjqf6Q4oiwo", "ram": "JcaRMEb15LBlTVuf", "soundCard": "c5ZyODR2NVyn4PRq"}], "f3eRbZqBAoKGcVCd": [{"additionals": "MiSNV4qBrt1kcLmR", "directXVersion": "v6EJtl5xWnsb8oWq", "diskSpace": "94RImNWVIJnhhwFD", "graphics": "V1VitaomvWTzdsW4", "label": "N70wYS4Kj7Yi2Vvo", "osVersion": "QNW8Yc481dYdvGxJ", "processor": "AMDRA1LF7jdWlekF", "ram": "wO94VBCV9qJhWva2", "soundCard": "FPBujX0geYCpGJM4"}, {"additionals": "sqsPNJMiZXXOFwmG", "directXVersion": "WAvNF0Z0GkwxUNYy", "diskSpace": "NwGiKrknH0Y5mrQg", "graphics": "LC6D2qsFiQHglUQM", "label": "Zi5WjMZfOadpgegC", "osVersion": "UjTdi1Ehr8OtqpNJ", "processor": "9R8TuNy4ejmVA3vM", "ram": "CsGyPd12B8QNUz0h", "soundCard": "FFNbH6j2W4roZM2U"}, {"additionals": "KAXEEsL5D0oiFchQ", "directXVersion": "nVeq3g2AB2WIRUQm", "diskSpace": "auIY5HXCZ0W4XmWP", "graphics": "0HzSdiylLhVYszm8", "label": "xY33OQbumu2QHLyZ", "osVersion": "NuysyM4OfCzdQCXM", "processor": "AWnf87YPNOe9Eevf", "ram": "1fhMg1E2k7QLFrVg", "soundCard": "tX7y0fPOieDCow2z"}], "XyFFVpM87yqEwEac": [{"additionals": "QMTlqN4LKkxJ5v3S", "directXVersion": "BafnKNiMPbFkFGA8", "diskSpace": "5W3HJkqgS2B37wwo", "graphics": "PYOHiIsxmsLBPBJu", "label": "NLnWRrtW870qD88Z", "osVersion": "cduZSe7W20UZcDai", "processor": "q0nEZ7PyhqFJkDCl", "ram": "OsKmfsgJdmzsDPsW", "soundCard": "h1k0cQ08NG6dX2TZ"}, {"additionals": "kil67kRngoUa83EC", "directXVersion": "h1gqPeS193TNNzot", "diskSpace": "3sVli3GN2XTrFibR", "graphics": "AhzzEWzWlTY70qdg", "label": "JRvpZrSpWX3KEe2B", "osVersion": "jV00ReCXFffjJJxl", "processor": "gjzIhpgOoIOD74V2", "ram": "1HWDAfvXwdxbyp4H", "soundCard": "APbBbNPStVBUpKgO"}, {"additionals": "ssFkz0F36piDYXeH", "directXVersion": "Z7FHls3nyvconqbH", "diskSpace": "QqKLQKe3xmj6s0Gq", "graphics": "sWncp5LrqbiKudv9", "label": "z75SzoCV8ZMi2o1n", "osVersion": "R482D6gNClk9c87h", "processor": "osaPFC5zBW3ZgVZC", "ram": "j9ObVGT0Scwl4kNm", "soundCard": "Ci15XTJTgCNNH7Rt"}]}, "platforms": ["Windows", "IOS", "IOS"], "players": ["CrossPlatformMulti", "MMO", "Multi"], "primaryGenre": "Strategy", "publisher": "gaVfw5Vnyq8OzTE8", "releaseDate": "1971-09-12T00:00:00Z", "websiteUrl": "DNoMcOmbfJrCJQIj"}' '1haAosKglqaCXE9y' 'tpIO8btO3OwNEGSW' --login_with_auth "Bearer foo"
platform-disable-item '5TaW4to7QCY2NGGv' 'i9kg3rMIzNmhJTNQ' --body '{"featuresToCheck": ["CATALOG", "DLC", "IAP"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '86IaDFjjx6uZerWb' --login_with_auth "Bearer foo"
platform-enable-item 'twTX9gNRByjbE8lO' 'LAfTXKLzbrddqcKL' --login_with_auth "Bearer foo"
platform-feature-item 'a7LevxNHOSEhQRZI' 'p693lRwtc43atCuC' 'Fxbfbz4aQERziPL4' --login_with_auth "Bearer foo"
platform-defeature-item 'dHhOqG5KDdUvk0LE' 'i26Ls7mjRxNmvvNt' 'jJNQepUTGhwlY4lP' --login_with_auth "Bearer foo"
platform-get-locale-item 'zlsCR5rVsyfcH7Wj' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 9, "code": "Gz3b5WAEvdRF9bqM", "comparison": "is", "name": "uhh3bvadRthdbVAp", "predicateType": "EntitlementPredicate", "value": "dVw0zCqoMZvpIOO9", "values": ["0IifzMhkk5Pxsjqb", "7DmQ5ZOzx6iCJTu6", "CKpMv2Yky9DYkD2s"]}, {"anyOf": 71, "code": "X4FCK5ucTFsAFzaO", "comparison": "isLessThanOrEqual", "name": "htWm8RQvRUbUDSie", "predicateType": "EntitlementPredicate", "value": "qdTelFAadM9y66Dr", "values": ["f4SSGGt3MiBKohow", "IfOCDyVAHrHncR5d", "3kKoaP1K4CDuH1mM"]}, {"anyOf": 90, "code": "XqQ1oHFJ9Q0vqsL9", "comparison": "includes", "name": "omqWsGA76yxi0QzZ", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["xs1WId9WlalqshF9", "Rh2o7GCQGPCxwEdk", "Acm960EYQEuGJVl8"]}]}, {"operator": "or", "predicates": [{"anyOf": 74, "code": "uT3MgzReRq0112IS", "comparison": "isLessThanOrEqual", "name": "acO5MnjnxD1OXkxS", "predicateType": "EntitlementPredicate", "value": "WWaYvBLE46bpuJip", "values": ["ZbSqBSKp8AmgwhYz", "8JyxJ39vrtuWWrqT", "k33J34fiTxK63OHp"]}, {"anyOf": 28, "code": "pE130YWSgxpKWtdt", "comparison": "excludes", "name": "ZXQcb2o1J5euLAbB", "predicateType": "EntitlementPredicate", "value": "ZV3ig8Jg5VByeI3y", "values": ["cMcYYBixKJXCISQd", "wec1m8BusV9tUh74", "KVo6Xqjz2xUKLNWS"]}, {"anyOf": 25, "code": "efgFIiJssShBKsQj", "comparison": "is", "name": "vfQgQDt6ce8NDMEr", "predicateType": "StatisticCodePredicate", "value": "rsZyo6CBRRnoOikI", "values": ["AU1cKApdJDnE73GL", "mSZns5owBhoUg4Ls", "xXKKIR6kPmswm5TC"]}]}, {"operator": "or", "predicates": [{"anyOf": 85, "code": "AHQpBOgHEP5l94s7", "comparison": "isNot", "name": "smaxjTZPlLitytGk", "predicateType": "EntitlementPredicate", "value": "7FTexsOZ0b2p3b63", "values": ["6boOLGCcg16DqwdQ", "KrcwIcXMhGy83Xit", "PQ9HkSSV8e1MgTTL"]}, {"anyOf": 91, "code": "82GF3eTC0vzZUDj9", "comparison": "excludes", "name": "RBEj7qms9AGQExPh", "predicateType": "EntitlementPredicate", "value": "fuBNisecYbcOpR45", "values": ["VDlvSc0Mr7ImwCwG", "qOf0bNs97KvKyj3M", "qS7Dcmtfh50eObbr"]}, {"anyOf": 24, "code": "zWTqgYPixtHk6lWq", "comparison": "isLessThan", "name": "eD1La16Bw3JbUnUD", "predicateType": "EntitlementPredicate", "value": "jRYldcTpdeCD9XPR", "values": ["i4bAQL7VE2wL8Y4J", "rorbKIKuOXJPm5zt", "FVUdzA8bvXlDhG7B"]}]}]}}' 'rr09CDA8Ij5bGKSu' 'opWQbaCvdPSq8Z27' --login_with_auth "Bearer foo"
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
platform-upload-revocation-plugin-config-cert-v2 --login_with_auth "Bearer foo"
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
platform-admin-create-user-order '{"currencyCode": "qZ5rryiMMt6fQtLh", "currencyNamespace": "zylaquioT3QBt29A", "discountCodes": ["F1Qwzz606UGXPhoN", "iRASsuFM4ahGw7Xc", "ZlXMef7AvS3TfKx6"], "discountedPrice": 57, "entitlementPlatform": "Playstation", "ext": {"BBkrXu9czsYr3cFe": {}, "Vw70xdNTuOdLKK0M": {}, "2B2hbqJin37P69t1": {}}, "itemId": "KqeGz7qbPnXEuOzz", "language": "koBmMR9C4qPqJrAd", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 20, "quantity": 69, "region": "z1mFkyxoUzfMFoXC", "returnUrl": "OguSq2A4R3wDdSkN", "sandbox": false, "sectionId": "h5yNbYXmlAOi1SC3"}' 'I1SjkH42LtyZKrTJ' --login_with_auth "Bearer foo"
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
platform-bulk-credit '[{"creditRequest": {"amount": 97, "expireAt": "1978-10-06T00:00:00Z", "metadata": {"cOqsd5v5n7eXCo9g": {}, "ZWdxfIdW8fNAM5Yd": {}, "HivK2Q0WwolQy037": {}}, "origin": "IOS", "reason": "paPeudUtKPJUmAvx", "source": "OTHER"}, "currencyCode": "IbrA8XAKKWMDebeh", "userIds": ["Sjpt0wrfWPXaI1Jb", "ROGDeJCyHvUsnLvX", "75o2MFOa6xgPt69Q"]}, {"creditRequest": {"amount": 60, "expireAt": "1981-08-12T00:00:00Z", "metadata": {"gQHvs25eiQO3oWdg": {}, "Xdm1IxL1OtleUBqB": {}, "O0Ze049k9W6ZLVJz": {}}, "origin": "Playstation", "reason": "pUsITfVruDukun42", "source": "OTHER"}, "currencyCode": "tfUs9559ilm3cauh", "userIds": ["rw9Yn2z5cnbm7z2A", "a24yBTw3wfNGyWf3", "VujS7Bq5bcfPW4pP"]}, {"creditRequest": {"amount": 40, "expireAt": "1984-10-14T00:00:00Z", "metadata": {"YXltCxyztUnj17t3": {}, "gHBXvjvziexzOLbO": {}, "WbtcJUxM3AWyDkA5": {}}, "origin": "Twitch", "reason": "BoBmSLi0R7zDFMoN", "source": "REFUND"}, "currencyCode": "5P4kxmHtFbjqurHi", "userIds": ["YCnYPT4i4mxc14iR", "x0QYycDH5we2Mx0s", "fzJwKuc7EpiQEzz5"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "N5osRYO7wbYh7q02", "request": {"allowOverdraft": true, "amount": 53, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"TURUFmqNc8xhQqpt": {}, "ccNorRls7EC3nDnh": {}, "FvDlFd7iyZpvWVJF": {}}, "reason": "K6ZuvlzGCII156hI"}, "userIds": ["g0g8HIxpzm9AcFhH", "4ZlYY3rEuHMWwQNm", "CQmGCF963CbsOawl"]}, {"currencyCode": "RBQJH6fNekhk077g", "request": {"allowOverdraft": true, "amount": 79, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"j55huTA6AvmW0567": {}, "BFqbrPIuxKmBXLi6": {}, "GpnqAeMvg3w0FQ15": {}}, "reason": "20WM3TxWXSdTiKdv"}, "userIds": ["gCG7JwJCDqkzOdFw", "LJpIPxzLE1V9U1Ng", "a2UREoBSFtCLy2Cq"]}, {"currencyCode": "pH7Oc44yjRdfqZgv", "request": {"allowOverdraft": false, "amount": 67, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"8AQaCaw9UF7cdSDd": {}, "99DQZ7vnTx8HDXTJ": {}, "Wiyw17ogzmbj4SLY": {}}, "reason": "DrZJvDLGvn6qtroZ"}, "userIds": ["FMcKd7c94rEmIYuA", "xNIJVuMz04evSdE2", "cp16HKXX1ft5nBA9"]}]' --login_with_auth "Bearer foo"
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
platform-public-create-user-order '{"currencyCode": "3rbkv8V98cupW0L5", "discountCodes": ["r4PYf48r66MaToxB", "iliy2vtRkpqL6KrV", "WsiuITRMSPOUfWQw"], "discountedPrice": 6, "ext": {"xOoIpWzacOvwUsnI": {}, "bQM3ZAtyEWKWoZRU": {}, "L7wS3HaMTXAX6y0S": {}}, "itemId": "TTN2sBEijjjpvSzG", "language": "fW_XiEW", "price": 61, "quantity": 89, "region": "BPyd1jJBxbrbuFay", "returnUrl": "9PXgEQS4871QSmss", "sectionId": "pn5sNfifK65tvaH9"}' 'jwcO48pthyYpBJDH' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "IIxTIGI5EssYllIq", "discountCodes": ["O07L9GG1uenDihce", "jJzuQ8GglVgxjOGQ", "GlHm8VTN56tJKwD8"], "discountedPrice": 1, "itemId": "bq5KikDE7hWvT5bz", "price": 5, "quantity": 40}' 'fzIpL2pWB4XsdrxI' --login_with_auth "Bearer foo"
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
platform-bulk-fulfill-items-v3 '[{"items": [{"duration": 42, "endDate": "1979-12-17T00:00:00Z", "entitlementCollectionId": "p1nNYHREmm1cBuaR", "entitlementOrigin": "Epic", "itemId": "juDITjifWRbmtK7M", "itemSku": "TxcCWnMiCLsjroKH", "language": "PApA8GsGwyocvY9N", "metadata": {"ePjLJQJXwUApJWoh": {}, "Xn01RB7pu7BaONXy": {}, "E5fIDbsMi48xOYVv": {}}, "orderNo": "EcEm53BYMBacQBIu", "origin": "Steam", "quantity": 83, "region": "Vs7U0AJtWPRteszM", "source": "SELL_BACK", "startDate": "1973-01-29T00:00:00Z", "storeId": "0R5Fsrf9xbVfgvG6"}, {"duration": 87, "endDate": "1995-09-24T00:00:00Z", "entitlementCollectionId": "gPQw3MVXe4xBPDWH", "entitlementOrigin": "Nintendo", "itemId": "HCCVDBRjPUQWYVxG", "itemSku": "QVFJlDDJ7z4Pb5jy", "language": "GID39Ung1D57FjYK", "metadata": {"lJiRIvhej77OSPwd": {}, "zMSmrSvQdsAdTUGp": {}, "d8KFrXKFA2gdjQCY": {}}, "orderNo": "oE8b0CZetLfpFNyp", "origin": "IOS", "quantity": 93, "region": "75rhOmR4zFjoJZVK", "source": "PAYMENT", "startDate": "1975-04-13T00:00:00Z", "storeId": "OD2ePKAKYjJMVnYj"}, {"duration": 90, "endDate": "1983-03-16T00:00:00Z", "entitlementCollectionId": "KqavWpydepM3ap06", "entitlementOrigin": "Other", "itemId": "B9Okr0xJ5XRZVoxP", "itemSku": "GOLVBIlFgTAsXgqx", "language": "3mfB5ZwV25N7NAvZ", "metadata": {"dGuyYEYZE3KaGSdh": {}, "EGKcp6g1A8O9N9cb": {}, "YBK6XOBDpR7SH93A": {}}, "orderNo": "E1Toj5vygVvLSJvd", "origin": "Oculus", "quantity": 88, "region": "GpmmUeMikW3s54zf", "source": "DLC", "startDate": "1980-08-04T00:00:00Z", "storeId": "0O4rEZTbFDj2L2Mc"}], "transactionId": "vCrrR7h9uKLXDaRf"}, {"items": [{"duration": 100, "endDate": "1978-09-01T00:00:00Z", "entitlementCollectionId": "xKtJbRY5luCwKrt6", "entitlementOrigin": "Other", "itemId": "uI7F1xpVrcoXzSOE", "itemSku": "GEDYfiGPYo2K3dN3", "language": "YBOJfvV6SuHovoQl", "metadata": {"k5wL2oXDZ20Bw2H4": {}, "tz6KUC4jXGj2G0GZ": {}, "3JBYi9bBKBRpdbLC": {}}, "orderNo": "iwxOx2XQn94xPqXh", "origin": "Oculus", "quantity": 81, "region": "eNMDGA3O5hQAl6U2", "source": "EXPIRATION", "startDate": "1976-08-30T00:00:00Z", "storeId": "imVMh3i7j095rDL6"}, {"duration": 23, "endDate": "1977-09-09T00:00:00Z", "entitlementCollectionId": "MrrVIehVCf3AwIzU", "entitlementOrigin": "Epic", "itemId": "9t2u8ZZnyHKkk6Gh", "itemSku": "25tEcX9GegDnrYz0", "language": "GFpSVdxFsXAp1roc", "metadata": {"lyXllFitPamSKRzD": {}, "IZgSk6suS90ZbDdm": {}, "jU11QIZtkSn8QRbA": {}}, "orderNo": "5V4gjWv1W6cqnvSu", "origin": "Twitch", "quantity": 85, "region": "swQ7vH8GScnP5QzR", "source": "REWARD", "startDate": "1996-06-25T00:00:00Z", "storeId": "UrefgmVFBVz4KRCU"}, {"duration": 39, "endDate": "1978-07-04T00:00:00Z", "entitlementCollectionId": "4jIt01gzH17IcfJy", "entitlementOrigin": "System", "itemId": "IMJdrqHIsJ98WRjq", "itemSku": "YieXRthQZvzRi7pq", "language": "pajYEHs9TIkcnrJ6", "metadata": {"4BOKqywS6DKNSeb2": {}, "UMWOgVeYkCvqq0tO": {}, "15pEVG7sNihxpuuL": {}}, "orderNo": "7DJCxvzZnh8oBAk1", "origin": "Twitch", "quantity": 32, "region": "NCAUmdnLaVRUu5Vb", "source": "GIFT", "startDate": "1982-09-15T00:00:00Z", "storeId": "Pa9rYgHaxeTT3ebu"}], "transactionId": "aYPNBp9wA4LxO2n7"}, {"items": [{"duration": 100, "endDate": "1989-10-21T00:00:00Z", "entitlementCollectionId": "QFzBCD9S03D7JLsI", "entitlementOrigin": "Twitch", "itemId": "DlVK8taScpV0NtCx", "itemSku": "DDz5rxt6LflBJjok", "language": "LAaL4oAF2lqx8yne", "metadata": {"WKrOy4xcg30BqC5W": {}, "7g7hiwumJTI3jlZP": {}, "joCdGiIP6cB3Pj63": {}}, "orderNo": "MJXIuLWYb2iHHVN0", "origin": "Twitch", "quantity": 57, "region": "yFPHaxkKxEDvSoi2", "source": "REDEEM_CODE", "startDate": "1992-06-19T00:00:00Z", "storeId": "ygvMG8QAaWUhIguM"}, {"duration": 44, "endDate": "1989-09-14T00:00:00Z", "entitlementCollectionId": "DOrx0wQXKEroyKz2", "entitlementOrigin": "Oculus", "itemId": "2oF99xI1VVtVrVT6", "itemSku": "Hn8B2d1hZUnoQwg5", "language": "uqgoHaFyoczck0qJ", "metadata": {"sgZPfuelAiZBZcQG": {}, "HHGI7csI8ecZSvzX": {}, "YOytshBcKQytQagu": {}}, "orderNo": "i6lsKF28n7UC7y1M", "origin": "Twitch", "quantity": 100, "region": "VeoGFrDb8unXv1iE", "source": "REDEEM_CODE", "startDate": "1996-02-15T00:00:00Z", "storeId": "RNRVyeEGu1ICOCmL"}, {"duration": 55, "endDate": "1990-04-11T00:00:00Z", "entitlementCollectionId": "tkBpaCG8Nu5m4ctw", "entitlementOrigin": "Steam", "itemId": "NV8ncebaJ0DCuIeE", "itemSku": "Stt3PbyctX7HC2ha", "language": "QwVWONEpAPedzI2A", "metadata": {"dlqiyEJIQcbZJJ3A": {}, "hkrMi0bnppEJFISz": {}, "e88rGEr3cilJWhaW": {}}, "orderNo": "6jNsM94E2FQb6S0V", "origin": "Nintendo", "quantity": 24, "region": "aTR7E3mkDSQkgVMh", "source": "ACHIEVEMENT", "startDate": "1995-11-07T00:00:00Z", "storeId": "UUVEHCB5wzF6oLIr"}], "transactionId": "AwjAsgo51XHJBG2P"}]' 'myeFaBiT3SyLHXZS' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 51, "endDate": "1999-02-08T00:00:00Z", "entitlementCollectionId": "X4m6wms9SPaHlqtD", "entitlementOrigin": "Xbox", "itemId": "WBVH66JU1IICVNNR", "itemSku": "V4lBToTcn1l44ebr", "language": "KEKdeo779KG5yCz9", "metadata": {"jVs1lYK1Mx9rEFkD": {}, "qb31AZzwiQBaGdS4": {}, "1VRIyAHjYxVhCbXb": {}}, "orderNo": "eBEoTlfR33jqIRoX", "origin": "Epic", "quantity": 34, "region": "CPaLXJM2B9bMohkW", "source": "PAYMENT", "startDate": "1995-09-15T00:00:00Z", "storeId": "IT9TLnuMLNJAEk3A"}, {"duration": 76, "endDate": "1984-09-15T00:00:00Z", "entitlementCollectionId": "6rYiIu8eLdWykhBx", "entitlementOrigin": "Twitch", "itemId": "p7masUcayqmp7vhz", "itemSku": "1T6cSrZL2CgHxdmY", "language": "Dj9vZNgfI1AeYHe8", "metadata": {"WPQGPclChxLfbXrH": {}, "6f2GDrNbLOjGz34c": {}, "t0ctEeH43wYuLnI7": {}}, "orderNo": "cTzIUERPlQI99hMc", "origin": "Oculus", "quantity": 80, "region": "xUjGPKKLMoAy1stm", "source": "REDEEM_CODE", "startDate": "1992-09-13T00:00:00Z", "storeId": "P9IqAyNlZ2OwFSeb"}, {"duration": 56, "endDate": "1996-03-24T00:00:00Z", "entitlementCollectionId": "GlKR9ss8b8udl6fL", "entitlementOrigin": "IOS", "itemId": "GDHT6ZaUUkvlTKAh", "itemSku": "rxqHw7f813qNjzlc", "language": "xXsmGGcJhauxfhVK", "metadata": {"IbRvUnyElHPuQE3G": {}, "c8bY4IH0OXHZP6VV": {}, "B7qjDHMS49dkv8vx": {}}, "orderNo": "yg6giNKzeFnlgGRg", "origin": "Playstation", "quantity": 74, "region": "RrhjbEU5n0PNuFyK", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1972-02-20T00:00:00Z", "storeId": "JsGoBIjCKlD3axSi"}]}' 'vItV1txLINmdHTGL' 'tX6TN5ctYX1sZnYF' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 '3hWmCCIrP0lJXexs' 'eo2e6BCNJTTRIHDK' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'dVfOUr14yZH00n8M' 'sRjaB8iurBWW5jSJ' --login_with_auth "Bearer foo"
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
echo "1..509"

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
    'i0seeGJIqnatME8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'nNWfAY1yY6D1Euus' \
    --body '{"grantDays": "f0eOzoSyKttYwUUl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'MRG8vO0OSsJmhOJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'Uyyag9jBDJFJGOEi' \
    --body '{"grantDays": "WJ8cLrryS5a6A4tL"}' \
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
    '{"clazz": "8YKMrUBL6dDTVwPI", "dryRun": true, "fulfillmentUrl": "IuzAuQNjAfvOE2cV", "itemType": "CODE", "purchaseConditionUrl": "ZzQuBPyNi1GhZHEj"}' \
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
    'p5grjk5wzdksOUku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "8dtQoIrpvmM19X4z", "dryRun": true, "fulfillmentUrl": "SMZ8GUvWZvoCmprk", "purchaseConditionUrl": "v7A8MRutCKCsqmx2"}' \
    'zriOGB8b5qTFp3cI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'xOI33nt54i5hdAez' \
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
    '{"description": "edcppbujZh1fYXF6", "discountConfig": {"categories": [{"categoryPath": "R9Rz3HVP2Y9WqSRi", "includeSubCategories": true}, {"categoryPath": "EDkfmNbDTMGgET2y", "includeSubCategories": true}, {"categoryPath": "VKxCMxuf0P9r5f6f", "includeSubCategories": false}], "currencyCode": "Uzx64Gr4XEm0uYYu", "currencyNamespace": "AmqhftIfe2zdqZ7h", "discountAmount": 41, "discountPercentage": 90, "discountType": "AMOUNT", "items": [{"itemId": "vUiJ7jBXy8psNoHN", "itemName": "alwgvju62rPFMbE1"}, {"itemId": "cW57GaNZLT1z0GqD", "itemName": "ZN7ftHOhVy48YYg1"}, {"itemId": "AkRh3NmbRhMxKeIg", "itemName": "wq1NZmxa0ghRG020"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 57, "itemId": "WTNKsVyK8EU8JYc0", "itemName": "0PA2ef1jFeqQ8mBp", "quantity": 94}, {"extraSubscriptionDays": 39, "itemId": "uvLTJUzwXJFaWW3J", "itemName": "VdYpfHOYoLva2c4J", "quantity": 38}, {"extraSubscriptionDays": 84, "itemId": "cEQfBFZXcSXpU81S", "itemName": "5H9XsZyvZOFJ5RrF", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 6, "maxRedeemCountPerCode": 56, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 20, "name": "fQ1Q2BbcjSpv6Nt1", "redeemEnd": "1978-08-18T00:00:00Z", "redeemStart": "1983-01-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["VFFhO5FcdTvIDQI2", "uIi2SNZKqlJZsdnY", "04DIyosprZPBaERb"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'HPluvsry8AKSZxOh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "Uhl3Y0EshaG0uDiJ", "discountConfig": {"categories": [{"categoryPath": "NUuxK22saWaGvrzB", "includeSubCategories": false}, {"categoryPath": "IITUJGj5FYaSgewL", "includeSubCategories": true}, {"categoryPath": "cBxz5LpdkRCAU8Hh", "includeSubCategories": false}], "currencyCode": "ZLa7Kw77UpCxNyx1", "currencyNamespace": "jjdxNePPAJ6Z9Uzq", "discountAmount": 71, "discountPercentage": 15, "discountType": "PERCENTAGE", "items": [{"itemId": "ZZiK0QEG6C9w4lVR", "itemName": "NOF1Bg6OHZzvdZHo"}, {"itemId": "Im4tKNhPjNIQGFxG", "itemName": "wgnSiZtChE0uof77"}, {"itemId": "AAPI5tdPeFz9pGYs", "itemName": "LNEGrfy9qHKufJfk"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 67, "itemId": "iFvw0GSLBmie8SJc", "itemName": "kSRbu7hgmUm7RVCU", "quantity": 90}, {"extraSubscriptionDays": 63, "itemId": "4v7JRFMRaeIaQuPW", "itemName": "PlkxeotrNakKGvOS", "quantity": 44}, {"extraSubscriptionDays": 61, "itemId": "pmZZdlNXdx2kWmSq", "itemName": "odNZgfQyDVVkkqiM", "quantity": 17}], "maxRedeemCountPerCampaignPerUser": 90, "maxRedeemCountPerCode": 82, "maxRedeemCountPerCodePerUser": 11, "maxSaleCount": 40, "name": "2yCyM0Tp5GJHHbsL", "redeemEnd": "1989-07-29T00:00:00Z", "redeemStart": "1982-04-08T00:00:00Z", "redeemType": "DISCOUNT", "status": "INACTIVE", "tags": ["CPhhmUyIwgQS9kVF", "UbeTeB9KgnFZQ9lV", "MNyCiytnfMoO1I3K"]}' \
    'ISTbn4yEa2AaBRal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "z5HEm4Gant6aqjKz", "oldName": "WDAauqLKarcLQRQt"}' \
    'C927GneBM8LvzgyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'VzGFBLJ5vbC9NfLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'FJGOzAIAqpmkDdFS' \
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["DLC", "CAMPAIGN"]}' \
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
    '{"appConfig": {"appName": "GeRv27hj73EtufHu"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Ip0GXpM4nbG7aww2"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "ANW1Or7TvLoL0wwH"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "cwVmGyrBpnTPF4Vr"}, "extendType": "CUSTOM"}' \
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
    '{"categoryPath": "iFSPs2ZMcVFcrixU", "localizationDisplayNames": {"LzSeTnUWGxxfnMID": "SCPr1m1Fg6tc250c", "2okDTem6o62xFY6T": "NqoLFFS4wB6Um7ir", "0n6O3vbYVjrcErgo": "ApAxyDnHjAx7rZTv"}}' \
    'ew0WVDSMNr23LV7x' \
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
    'ZEEv7O1lwxVTRll0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"GIEUJtMC8NyV2HLH": "ZT3oYJlC4ie3InnS", "A22NHTb4qXYyJUAl": "KlTwdJEPoemVtmVX", "Ts3tCu4F9IgDT2tq": "2V2lMzfIQHCZ90Dq"}}' \
    'QgP6ynrQjYH0N2lo' \
    'TnRa0KiQWPxd1gql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'wx9CE4WcsmYtCkIg' \
    'cwiDWQFghmIi6fph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'Dw3p9QWqwTF2pOJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'Y86xAf5y1iy01FkE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'EXlKiTIDgP7wuXQd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "fW99JglScoOlkkBx", "codeValue": "iXf8OBQRqXWXQ3Jd", "quantity": 61}' \
    'dFz8pc0EEziE5yIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'ijq9ix16vo60jgvw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'V3C9hJ1kSZonK02W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'HGVKDcKulj3Pdegy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '4G6LOpak8CYp6DPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'ukc04j6rbfBuKBco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    '1AeO3yvvBLZPBuek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'eBe4Tvb3fHCIJZkw' \
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
    '{"currencyCode": "EcCRi2U7s2ZQAarw", "currencySymbol": "H0c87v0PwZjydyzG", "currencyType": "VIRTUAL", "decimals": 69, "localizationDescriptions": {"ZM4zTTYI6O8coYDW": "UfcL1qsegBsrNqeW", "5BxVe8iW7sGELnMd": "XRqdGPzxXvZPtrhj", "eVBnTrsYihhgbeAZ": "oFncMUdmf8hD3nL1"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"saQxLYrz08jh6Tyq": "7WUilXgtf5UctyV3", "aSw4twReM5DcHde3": "fkHf7tH8WTOTeBOc", "Yhf6nGCnPjiIbJif": "s0arKxCcNv8FQCyQ"}}' \
    'BqKxayGvw7MqOsyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'CJmfRnW0spgvjt7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'CLDu6PA3PRnQtB41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '0iWT0SILVGXCWRuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-get-dlc-item-config-history' \
    'RpP1Tq7uYXhB6FPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-restore-dlc-item-config-history' \
    'F5DvveMdBsPt19V2' \
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
    '{"data": [{"autoUpdate": true, "enableRevocation": false, "id": "J7IIUXlBlZMQeSnO", "rewards": [{"currency": {"currencyCode": "g5gf1SwrbpmoF4Dv", "namespace": "NA1wo9IAxV5C71gT"}, "item": {"itemId": "w8BJPFctwUMCRdxX", "itemName": "OBu3TWmHDVmCGFoD", "itemSku": "7aNFj9wORAVqRuNs", "itemType": "XxRu4EQqR3KbYWtF"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "plXVk36IpbGquPnI", "namespace": "PwR1BinZ4ULwAKO8"}, "item": {"itemId": "n42UuxEyfzZJsZd9", "itemName": "sB6CV9KiWkbdpGqW", "itemSku": "QIPK6mVytM5mBRT3", "itemType": "9gKYLk9DmjJh6Pnp"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "WAUt8lgqNM4poGEv", "namespace": "IKCe3MrLxmnjmlAu"}, "item": {"itemId": "aBCdhzXb6cBMPNMm", "itemName": "jMi2uztFNfXg0Uvw", "itemSku": "aZ0py16ShGomFzUa", "itemType": "ppaaODZaZ6Vzztnn"}, "quantity": 39, "type": "CURRENCY"}], "rvn": 29}, {"autoUpdate": false, "enableRevocation": true, "id": "VPfktNnl8UYH5kes", "rewards": [{"currency": {"currencyCode": "uOtYHLqcdy05Yrqd", "namespace": "Fn8sQ7yc8xLKyBfG"}, "item": {"itemId": "LHEAKhp612Y2ncRf", "itemName": "7tEGzYqRoHm6EtyX", "itemSku": "qQbKWMJ0aODiWn6b", "itemType": "PmSa85Riu1alaVEh"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZbwMHkFWLSzmAXAr", "namespace": "uYrVjX4HRTvm3Qr9"}, "item": {"itemId": "IkuW6jjofc6itDEs", "itemName": "q0dHfYG6k853GERd", "itemSku": "JdphepF9dfsng9FG", "itemType": "GjJ0hRPUBFxM2Fr3"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "T3qUMd0U73RjVeYS", "namespace": "M479gn62lizsWGrt"}, "item": {"itemId": "IgVPb7hoo8YkNPW8", "itemName": "mWOJGtdXJGDsxRAR", "itemSku": "3NObYp43YXMHqWeV", "itemType": "jnOURxGvOhz9s7kt"}, "quantity": 99, "type": "CURRENCY"}], "rvn": 74}, {"autoUpdate": true, "enableRevocation": false, "id": "0OO1yQsMBQAdOfrt", "rewards": [{"currency": {"currencyCode": "HWyGg5TU3INkMgjs", "namespace": "nP8itevmjTJjj5tf"}, "item": {"itemId": "FQv384ri6A7z0hsW", "itemName": "0IHIYvJ7PPgVaFwG", "itemSku": "hl5zqkzEu41hVfVC", "itemType": "7eLVWGk0GjYReIZa"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "C2Au2bEpymbJ4dPJ", "namespace": "mkdvyuDHFFstLhZz"}, "item": {"itemId": "letCqa3lJMQ1sGlf", "itemName": "qjDBzOjNeq8JJhbi", "itemSku": "7QD0RW0qgxO0Y6TF", "itemType": "pFSCsrhSGeeExZYn"}, "quantity": 67, "type": "CURRENCY"}, {"currency": {"currencyCode": "bsiHQgt7OfL6AcBP", "namespace": "jUYURB3Rsrc0qvV8"}, "item": {"itemId": "Gq1cw3ytGWVKPoA1", "itemName": "aKRZM1Ot0PWppB2H", "itemSku": "0G8Xko9l5J0IOZmn", "itemType": "pzwHhig9d6vdgfrN"}, "quantity": 17, "type": "ITEM"}], "rvn": 68}]}' \
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
    '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"rH0hDjH6IYpfINzN": "jk5V8T9pQjnGB83y", "onudf21g0NhuYvwC": "ATIUep61ZsSiqW7I", "03oSwCfYpN9jkLCs": "MYyyhEyBfFFZwkC1"}}, {"platform": "PSN", "platformDlcIdMap": {"jBWzTuXttDREDWbO": "M3xQaraaEVt3vsBC", "XpIgQzkWzcBqVcuT": "TrIk6hU0mqdwBJax", "1jBd6Yng8ps5XknD": "JZK5gFHyIOnLu9WB"}}, {"platform": "STEAM", "platformDlcIdMap": {"uknvXiTP0KrWQ3pg": "bHM0Svy3GRenDzwl", "TE9Czhnck3GnyPFQ": "Hgn9jVE6QGkZ8AVz", "eiaDi67E3rTwN2Lr": "T85Arfe6EweJxWAN"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "t1bDay64EnFyFeW0", "endDate": "1978-04-16T00:00:00Z", "grantedCode": "NhddKrrhzwz2PFXC", "itemId": "33KjLNUFQJgCWV7d", "itemNamespace": "j8I5eVnflH2hnMV6", "language": "Yu-BeUl_Rc", "metadata": {"lB5c8a78gp4BGN4N": {}, "Aydb6GgyFczEOMXF": {}, "1T1sU9xsmACLFHrX": {}}, "origin": "Twitch", "quantity": 64, "region": "7dgsgrnpVE1acxZo", "source": "REFERRAL_BONUS", "startDate": "1989-07-23T00:00:00Z", "storeId": "dPORkWkyTcJzvDUl"}, {"collectionId": "hTlBNpvkjg48iVKC", "endDate": "1979-09-11T00:00:00Z", "grantedCode": "QnAexrRomTZFHX4c", "itemId": "gtkxEx6tlxks0yGW", "itemNamespace": "8qDWfr7MF8Ptq10X", "language": "aIB_760", "metadata": {"EpR44fWWEsCETqKl": {}, "cFcaL6XOoO3WqBsb": {}, "DmsTk9UuiQwezvAr": {}}, "origin": "Playstation", "quantity": 39, "region": "KJwZGVyknpOhuGhA", "source": "OTHER", "startDate": "1990-04-01T00:00:00Z", "storeId": "Bd02br9OfMbjgS5W"}, {"collectionId": "jduKixzScfrHzGYC", "endDate": "1998-07-06T00:00:00Z", "grantedCode": "TdLVDBDxK6laOkeL", "itemId": "BcprByjUr7w9w1xK", "itemNamespace": "UrLmQSkuEMRzyerp", "language": "Ajx_Gc", "metadata": {"RLsc6Jwt190s6yFi": {}, "DZs0wyldbDDntsSQ": {}, "8DEsKT6Mw5xDz8as": {}}, "origin": "Playstation", "quantity": 72, "region": "RtI3TVV2QmlqRK5r", "source": "OTHER", "startDate": "1974-09-25T00:00:00Z", "storeId": "zW03O2pp9qVpZbsp"}], "userIds": ["5LSSkkEoAarkgZ77", "pRsBWQ7RdYqZaQ8s", "wcFOshiWEFDMG99v"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["3cdzYhgH24VR4hJn", "sU1m6zryXmvvvPmu", "eVVC0ymY7ABWgZVx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'M4rAqxlnHLAFNEwX' \
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
    --body '{"body": {"account": "BsCkfqzKlzlLgHPF", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 20, "clientTransactionId": "iRWnREifOFJQwGPy"}, {"amountConsumed": 72, "clientTransactionId": "zGebVw9nLvVm8UeF"}, {"amountConsumed": 96, "clientTransactionId": "ZU7lVGZ6lIs17PXJ"}], "entitlementId": "8KsgqGNM6sO7IUwI", "usageCount": 43}, {"clientTransaction": [{"amountConsumed": 54, "clientTransactionId": "84zQjc88fKtDQSbD"}, {"amountConsumed": 88, "clientTransactionId": "g7b3MegxV9JnAJSu"}, {"amountConsumed": 42, "clientTransactionId": "MX2yYJopKxd9MtXY"}], "entitlementId": "GoZGkBNXT0feu7KK", "usageCount": 86}, {"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "XunBZiqYaReD0471"}, {"amountConsumed": 37, "clientTransactionId": "oGCmrTUcZy3DDSxp"}, {"amountConsumed": 46, "clientTransactionId": "ZV6J5QloYCaB5Imp"}], "entitlementId": "xpHJCcuqJR2TT3HE", "usageCount": 32}], "purpose": "BW8Aq2KVQNFGaJEy"}, "originalTitleName": "BVlQ5iHlTqgMzvj8", "paymentProductSKU": "sHLF7s3hgmxOOzP7", "purchaseDate": "vteUYzMZzggFcJQk", "sourceOrderItemId": "YueQLLJPh6Hpodpz", "titleName": "uBQwTS66qr03Mp14"}, "eventDomain": "S8HG9ID7mZ4eKHaA", "eventSource": "P4PYToJAMgJkC8UG", "eventType": "lqb7cexeEhHz7OKY", "eventVersion": 80, "id": "lBekxw9pO3vyRviP", "timestamp": "ljDYddTDwgc6onXf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "oDvjI9jfJFTHcHvA", "eventState": "fosnCXqJplcwaBHI", "lineItemId": "LlCC7ovjEbjKrZ2d", "orderId": "6IbWTfPplY43FQpf", "productId": "FWm8VMHjC8qrxvZs", "productType": "Jd3RBYL4PAqdviBv", "purchasedDate": "ToSQ7EqHUhHn1qP3", "sandboxId": "G2kSIurSOWI2donU", "skuId": "LQokdCSsp87x6Jfe", "subscriptionData": {"consumedDurationInDays": 9, "dateTime": "YAYJeb1GUdtB5G8N", "durationInDays": 71, "recurrenceId": "H7thk8lnCROZodh1"}}, "datacontenttype": "gbkbnRcIufk5WE4z", "id": "PvxA5061CF9079hQ", "source": "A91csvlQSS6PyDb3", "specVersion": "vKbCw9eAGmM6lPAJ", "subject": "MizukBmcy1kbAWDU", "time": "ac65Jdlm1JJwmCAj", "traceparent": "TwtCqKdh92wuH9hL", "type": "kAg90cQgXeZnKRP6"}' \
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
    '{"appAppleId": 67, "bundleId": "XhJZ6DIokID1ZFk9", "issuerId": "fRCHfId0Dhnin8Rx", "keyId": "nO0qs4FykFXDdcUu", "password": "EE9wh4CEOrPY29A1", "version": "V1"}' \
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
    '{"sandboxId": "Xijb7GTIFWcZWKcG"}' \
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
    '{"applicationName": "HG9MBp1AEcNUzfWw", "notificationTokenAudience": "pdraZO1lfHzX5CHN", "notificationTokenEmail": "iYaLYUlRZSLj5xwm", "packageName": "P8QMJJJn2Lqw6aiK", "serviceAccountId": "ZbUJQ92BTViMMFji"}' \
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
    '{"data": [{"itemIdentity": "1GmfmwhN25xGSRRZ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"hgFvKO2erV4ccUhi": "QnHGDNXw2L4mp580", "sUSlEfC6ckbV2y32": "kG5QTZnpxYa2jDp3", "LzelXaUz9AKozXBA": "29DPhYa8Ksjfnk7H"}}, {"itemIdentity": "KSWULkEKqQ4ToqWj", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"nsggbEVNmymBNr5C": "2BOjUiOQVEbp3z13", "pDy371QLVtDb6RZX": "atSimmKudqURkyz4", "E3EI1bSCYaa8JSNQ": "dhrnvuDGFiT4U6WQ"}}, {"itemIdentity": "QwsTHCgTvrGllrct", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ifQCe5eN88Z7U1e8": "C1HnrPGydCRGPXLK", "NNfCxcAJoMhSZgpx": "0HtzCgr8ybpAO0Pg", "h6Uenz7FjcRRIKcT": "VvsormCNHH08vEf2"}}]}' \
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
    '{"appId": "WSsLchLBElch9a9K", "appSecret": "nc6glMjwg8OWAT7d", "webhookVerifyToken": "65hchXzG4ffz0lXB"}' \
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
    --body '{"sku": "DbBGrYGleamVgjm0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-group' \
    'xqJhfraXwzn0bbNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
$PYTHON -m $MODULE 'platform-list-oculus-subscription-group-tier' \
    '5rhgy51k1e1gZ8QC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
$PYTHON -m $MODULE 'platform-add-tier-into-meta-quest-subscription-group' \
    --body '{"groupSku": "Ex41nhN2NMDXEHz2", "sku": "uROYqy72xPhtIM8R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-tier' \
    'w0xHZOUW3jlXYz8a' \
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
    '{"backOfficeServerClientId": "zHYdzaYe7WjwoU21", "backOfficeServerClientSecret": "EdgoOvT13nFPxMy9", "enableStreamJob": false, "environment": "NTBZTR5tZmaZGxrh", "streamName": "APoREvGmmbGW3Stt", "streamPartnerName": "wZrmKkREJXucN3IE"}' \
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
    '{"backOfficeServerClientId": "t8vZSqh6SjLdDyVf", "backOfficeServerClientSecret": "6irpvxpCXFlM52jb", "enableStreamJob": true, "environment": "0Nlw8icwWRvvZB46", "streamName": "NCiqdleq2jCNZAKj", "streamPartnerName": "BlI9fsL6HEOiPcSK"}' \
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
    '{"appId": "lQDo4ih358Lf5RXg", "env": "LIVE", "publisherAuthenticationKey": "FrsR55cpOV3Qg6eU", "syncMode": "INVENTORY"}' \
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
    '{"clientId": "Mc21ZZliCydumMW9", "clientSecret": "HWHfZ3bFTqXqdzpP", "organizationId": "7Rk1qbFWhtwNaVCq"}' \
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
    '{"enableClawback": false, "entraAppClientId": "KmTRqrvfJIrFQWID", "entraAppClientSecret": "C6PHVsnUueYd49OF", "entraTenantId": "DlbdIrxqxAtw8vLs", "relyingPartyCert": "YBHN6M7OpcFqK4FB"}' \
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
    '{"env": "SANDBOX", "lastTime": "1983-08-13T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'ukcKDUzhKKARjqJS' \
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
    'WImXvaLXkvZvwk0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '0OKy45dqId3gXUWV' \
    'AmaDjrn0iZsIfqeL' \
    'fl0wacx4istsfrFq' \
    'OPTIONBOX' \
    'PpgHg36d9NP5nNvz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'IlwtYI9wKX9V1XxF' \
    '2CFfEpf0qN2twLYX' \
    'q4HSEGpaUMmdPXWa' \
    'SEASON' \
    'mkrnY4LksFD2le3U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "GhQnnmMgk0WYv2NT", "targetItemId": "pSejfbYniLmi1GQT", "targetNamespace": "jQVaJ9ioRZ1HvMCI"}' \
    'XTQG7AUUES36bRVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "iOL6Q5N2egLXRiNN", "appType": "SOFTWARE", "baseAppId": "Fy4ilLbKzQFBHQ0F", "boothName": "HWOul5WKkzjzRnLL", "categoryPath": "FKGFSUC1sZtVitko", "clazz": "RyEXWrhLNPUvlrOA", "displayOrder": 47, "entitlementType": "DURABLE", "ext": {"dlq3Dkm52TA4zLBS": {}, "h2QJWgWvIZGJOPkJ": {}, "vsZhfMwJPOcRFJTe": {}}, "features": ["s1zqz6exSNhnabXG", "s0qawVMpRu5wP9CT", "KbAMIJChPyIhVPmM"], "flexible": false, "images": [{"as": "xi1BjFMOIsJO7EUY", "caption": "asMTHGgaQ2UErhcM", "height": 32, "imageUrl": "N42ccGURTnJUdR3M", "smallImageUrl": "UQnEeANANjqBdfMM", "width": 96}, {"as": "xHpQyntHsI11lC6B", "caption": "XyQW3eG0BvuCoP1h", "height": 71, "imageUrl": "7hrvKVNdGrr2TTTi", "smallImageUrl": "Tt8oRoQRf0A1eAJU", "width": 91}, {"as": "1hHCpApGunPxVvWy", "caption": "QvciFGxJNOaveGzk", "height": 93, "imageUrl": "Pjb60b0Y8RDVgsQz", "smallImageUrl": "aeOv7xB8GlNYJeVV", "width": 75}], "inventoryConfig": {"customAttributes": {"QH5C76GaeCobrGOA": {}, "vaYctXd3jNOlJBjB": {}, "MsJisMu1kQcGm0x3": {}}, "serverCustomAttributes": {"DmUahjPVDOEmwpWi": {}, "JYxvvQCHIreoYDgN": {}, "e1RyydtCBznu3BT2": {}}, "slotUsed": 12}, "itemId": "AFewcN6U8vRJ3ebb", "itemIds": ["fa3ep8cKNlb024Fz", "QsBlwn2pN8vqhPml", "YgFAu9gD8vsiDfzK"], "itemQty": {"1gMLvJ1KqSZCanZa": 67, "EA4kpxN9tCjk58n5": 11, "7CWEoHK3yLZSpydG": 10}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"nNFMfXpIPlcaufem": {"description": "Z4xlGtWc5UcGIGpI", "localExt": {"8YhyHkINdPYamt1N": {}, "Nvdmy7qa1StMbwcU": {}, "su3gJ0yHA6KDH87A": {}}, "longDescription": "mGMvChuhxZJsDNCQ", "title": "EtOnYVE7i77NKczg"}, "6MaoVcixj92JkMWu": {"description": "Fc2x9p8sArSRypvu", "localExt": {"88WyRMMRloXySTO9": {}, "W3BEI4eB0PHoEfId": {}, "FP0QarAdoCQoVI26": {}}, "longDescription": "D2IdXV2RNnCRn6sp", "title": "zE0Dj97Arjpd7IRv"}, "eArOFED1MAfVZhAD": {"description": "FM15pfl1N2CNDu3D", "localExt": {"pGXJrOgVnrneQPU3": {}, "5uuCoR3Wc6j3UqRI": {}, "CnmZxob6vepvgW3V": {}}, "longDescription": "mnz3WsgPS6R3Uev7", "title": "bCsylPZDz1fiXmZR"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 97, "duration": 26, "endDate": "1997-05-12T00:00:00Z", "itemId": "4inDP7o0Aeler4oE", "itemSku": "JEmHHU4T74NkroVw", "itemType": "JFRFLnsSyJhQApjt"}, {"count": 57, "duration": 97, "endDate": "1995-06-22T00:00:00Z", "itemId": "B2vTyC482FeT76mW", "itemSku": "yDrmG0FHQOjtRg7S", "itemType": "T2UVRJN0qFJaGDiD"}, {"count": 25, "duration": 17, "endDate": "1971-06-16T00:00:00Z", "itemId": "tCvCembJFNyIwxPt", "itemSku": "19hjyI7ALyZHQ8V4", "itemType": "AejtUM6llcl5hdZo"}], "name": "PhVcQ4wXeArPe089", "odds": 0.042385463774999965, "type": "REWARD", "weight": 22}, {"lootBoxItems": [{"count": 78, "duration": 64, "endDate": "1981-04-17T00:00:00Z", "itemId": "8MLxiTO3GhLJ2qx2", "itemSku": "h93yz3Y7YtgdQMhz", "itemType": "pcpwawMF0j9IirMe"}, {"count": 85, "duration": 40, "endDate": "1982-02-09T00:00:00Z", "itemId": "6qiRU6n8IKPZ1kpS", "itemSku": "eRooa84wgi9Qjy4L", "itemType": "tkYsyCJFj0ayzojV"}, {"count": 81, "duration": 98, "endDate": "1989-05-18T00:00:00Z", "itemId": "rqZCtbJmJSU0agO0", "itemSku": "PXHCyo70kyuutjjQ", "itemType": "Dfdr0GXMgSK5Yx6d"}], "name": "bDNBB9LNziCP1xQy", "odds": 0.10486805856904868, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 74, "duration": 55, "endDate": "1984-03-09T00:00:00Z", "itemId": "IvQjUxtk82oOOkHm", "itemSku": "CFldZ0XAvFitLhI0", "itemType": "sqjfua9x08SJmn2g"}, {"count": 79, "duration": 75, "endDate": "1999-05-11T00:00:00Z", "itemId": "wBmEY4lD14f0XIJh", "itemSku": "3uxrBGEumeTG434D", "itemType": "mlbwWuZpKPB4rzvo"}, {"count": 81, "duration": 89, "endDate": "1975-12-20T00:00:00Z", "itemId": "BTiwS2sBodn1p1MJ", "itemSku": "rZv1itpBPRbtgUMF", "itemType": "AcxhrY80cxjAXFOL"}], "name": "YQX2ryH4oq6fdhza", "odds": 0.28757237173486394, "type": "REWARD_GROUP", "weight": 98}], "rollFunction": "DEFAULT"}, "maxCount": 39, "maxCountPerUser": 72, "name": "mwcYLuVxqvaL6vdJ", "optionBoxConfig": {"boxItems": [{"count": 36, "duration": 90, "endDate": "1983-05-24T00:00:00Z", "itemId": "QVV1r0LACcKuAd2S", "itemSku": "ElOn16dw0nzH9XMG", "itemType": "2c5BWrzKJ0Lj0VNz"}, {"count": 35, "duration": 95, "endDate": "1976-08-31T00:00:00Z", "itemId": "l05oiubu5HHlb7VI", "itemSku": "1cHNU3pvbpyJTgwl", "itemType": "3ZOMpzNQDtQNlDFM"}, {"count": 2, "duration": 53, "endDate": "1980-06-24T00:00:00Z", "itemId": "pq850ZKnX3Inv5lG", "itemSku": "8WEklkFFkJPn2yom", "itemType": "TQth1iJOyDZJCwuf"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 89, "fixedTrialCycles": 51, "graceDays": 25}, "regionData": {"XVoJ9qEel6x5O5ot": [{"currencyCode": "pujfw64GJDWklFkq", "currencyNamespace": "hGFAoxfL2vrevlUa", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1983-07-15T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1977-11-29T00:00:00Z", "expireAt": "1998-03-06T00:00:00Z", "price": 29, "purchaseAt": "1986-06-30T00:00:00Z", "trialPrice": 95}, {"currencyCode": "oWAbcskuBfcvcoAM", "currencyNamespace": "PzCXwpgD8MOfYXcl", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1995-11-29T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1982-08-13T00:00:00Z", "expireAt": "1997-01-19T00:00:00Z", "price": 72, "purchaseAt": "1985-05-18T00:00:00Z", "trialPrice": 45}, {"currencyCode": "OJhzlgtX87XuWOIp", "currencyNamespace": "QwptcvroohLb6q3F", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1991-05-01T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1997-02-02T00:00:00Z", "expireAt": "1972-07-25T00:00:00Z", "price": 45, "purchaseAt": "1992-05-11T00:00:00Z", "trialPrice": 50}], "EszRnwVX2rvVr6Dp": [{"currencyCode": "LOyrgsLZV9arTxBg", "currencyNamespace": "nOqH9lyv8wx2JosS", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1987-03-12T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1979-03-09T00:00:00Z", "expireAt": "1976-10-04T00:00:00Z", "price": 82, "purchaseAt": "1974-07-06T00:00:00Z", "trialPrice": 9}, {"currencyCode": "cmqpHRQcJzso1tgo", "currencyNamespace": "qsyjuA8sqeXbV9I8", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1978-02-09T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1981-07-02T00:00:00Z", "expireAt": "1999-02-23T00:00:00Z", "price": 53, "purchaseAt": "1994-05-25T00:00:00Z", "trialPrice": 95}, {"currencyCode": "QmLReEZ0r6n6anry", "currencyNamespace": "oVkl4tChuDibBIH1", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1983-09-07T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1992-09-30T00:00:00Z", "expireAt": "1978-06-13T00:00:00Z", "price": 69, "purchaseAt": "1982-10-26T00:00:00Z", "trialPrice": 83}], "qpl1Xk1CdFvYqfoY": [{"currencyCode": "zBc16XXXuoJGXCyz", "currencyNamespace": "A8a5uh1LdVOaWOjR", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1977-04-20T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1997-11-05T00:00:00Z", "expireAt": "1992-11-19T00:00:00Z", "price": 48, "purchaseAt": "1997-09-03T00:00:00Z", "trialPrice": 74}, {"currencyCode": "z6bdDFDqRMyTZOXY", "currencyNamespace": "RC3gIRiYFpDlAEyV", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1981-07-19T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1972-08-17T00:00:00Z", "expireAt": "1991-02-10T00:00:00Z", "price": 28, "purchaseAt": "1978-03-18T00:00:00Z", "trialPrice": 65}, {"currencyCode": "lfFFTD6KSEeAEd96", "currencyNamespace": "gzUY6EuVZznqQVYO", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1975-06-11T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1988-06-13T00:00:00Z", "expireAt": "1996-08-04T00:00:00Z", "price": 33, "purchaseAt": "1999-01-31T00:00:00Z", "trialPrice": 66}]}, "saleConfig": {"currencyCode": "aYlaYm2XGN51wxYT", "price": 58}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "kZch7a3b0hFYqZQA", "stackable": false, "status": "ACTIVE", "tags": ["3ymYms9fuih2WMLl", "sR3HPQNrtkf3M9oI", "9m9ht4JsrC6ho0XS"], "targetCurrencyCode": "doxYLZHiFEo5sDrk", "targetNamespace": "8BZ0jnV4jAAxGZ79", "thumbnailUrl": "4ngDQya3dvyjxR12", "useCount": 28}' \
    'zHmDzxvCGS2mYl0s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'A87gQx9kL8a1tEpN' \
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
    'GaoJWjZSpZNjdKHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'DX1jGg2X6VHZOulL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '5KfkSA0amHSK4Sz7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'fbw7cgHHvIEPvqjK' \
    'VvPP5x3gf1HnOzyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'w55KAICc0N5AqnaH' \
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
    '49QFksDAGUgVcYdz' \
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
    '{"itemIds": ["d3mUKKxi2anNFpYX", "wE37QpBIY8LEEtCm", "semV8gAHQaitMhle"]}' \
    'Y83sh3B07O0XQWCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'XaPi8oY6VkZP57Py' \
    --body '{"changes": [{"itemIdentities": ["BLX7knj7y5qEOp7h", "zPCxvetFhAgAkkEh", "d3Y16uyKwJ713r4F"], "itemIdentityType": "ITEM_SKU", "regionData": {"C342Uggyr64isEfx": [{"currencyCode": "bFEabmT6MmgebEkQ", "currencyNamespace": "73QcKQldxIqMgf2P", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1991-09-08T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1989-05-16T00:00:00Z", "discountedPrice": 10, "expireAt": "1988-01-27T00:00:00Z", "price": 78, "purchaseAt": "1983-08-31T00:00:00Z", "trialPrice": 37}, {"currencyCode": "WJUW3I4SKjp0NOc5", "currencyNamespace": "dWAES7S7wBqBe4F2", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1999-12-22T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1986-08-22T00:00:00Z", "discountedPrice": 45, "expireAt": "1988-07-04T00:00:00Z", "price": 50, "purchaseAt": "1995-03-01T00:00:00Z", "trialPrice": 56}, {"currencyCode": "LYGnvEdCjYsnh0Y0", "currencyNamespace": "rQluvKziVTCPTrqH", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1988-06-24T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1972-01-09T00:00:00Z", "discountedPrice": 32, "expireAt": "1996-02-27T00:00:00Z", "price": 49, "purchaseAt": "1997-07-09T00:00:00Z", "trialPrice": 49}], "iGOrXbWC2k23JxAI": [{"currencyCode": "3kOXwHnS2VOESYx4", "currencyNamespace": "9M1JdtImLI5eTuHq", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1991-01-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1999-04-01T00:00:00Z", "discountedPrice": 80, "expireAt": "1991-12-28T00:00:00Z", "price": 67, "purchaseAt": "1974-07-27T00:00:00Z", "trialPrice": 31}, {"currencyCode": "oqpAFVT8PkW7ouFI", "currencyNamespace": "dlTuousRcrhXNAh3", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1981-05-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-07-12T00:00:00Z", "discountedPrice": 42, "expireAt": "1995-09-17T00:00:00Z", "price": 18, "purchaseAt": "1976-08-30T00:00:00Z", "trialPrice": 61}, {"currencyCode": "Rc27d9a3AaZO1VcA", "currencyNamespace": "qwHJEyMrwNINM4zH", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1998-02-12T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1975-01-18T00:00:00Z", "discountedPrice": 52, "expireAt": "1979-12-28T00:00:00Z", "price": 62, "purchaseAt": "1989-01-21T00:00:00Z", "trialPrice": 51}], "YD5hjgrxoEVEIkvp": [{"currencyCode": "WupGhtaU3oC1Ly7x", "currencyNamespace": "HbAN2Bdv1CfQOijh", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1988-03-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1984-11-06T00:00:00Z", "discountedPrice": 26, "expireAt": "1985-06-08T00:00:00Z", "price": 17, "purchaseAt": "1999-06-16T00:00:00Z", "trialPrice": 86}, {"currencyCode": "vAJizEosjuIsTXKA", "currencyNamespace": "Q4uWLCMgN7rU1yiW", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1991-08-25T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1986-06-23T00:00:00Z", "discountedPrice": 19, "expireAt": "1993-06-16T00:00:00Z", "price": 46, "purchaseAt": "1977-08-01T00:00:00Z", "trialPrice": 11}, {"currencyCode": "U7QiANYIF1YbEZwE", "currencyNamespace": "zBNPCCnVKYp3EQx9", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1994-02-10T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1975-02-16T00:00:00Z", "discountedPrice": 47, "expireAt": "1975-05-23T00:00:00Z", "price": 96, "purchaseAt": "1991-09-12T00:00:00Z", "trialPrice": 5}]}}, {"itemIdentities": ["zLzGaWok215MnSNT", "PMRaYf8Chh5tiLsX", "IOSE2JSDRlSX5uOg"], "itemIdentityType": "ITEM_SKU", "regionData": {"3Msm86Jr35oZQ3Wc": [{"currencyCode": "Fld5DKwJoCrYrlOX", "currencyNamespace": "ZN7MoQZDN1sjuHXD", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1978-10-31T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1991-06-12T00:00:00Z", "discountedPrice": 36, "expireAt": "1983-02-01T00:00:00Z", "price": 25, "purchaseAt": "1998-02-15T00:00:00Z", "trialPrice": 75}, {"currencyCode": "seYPsB00G8moKbti", "currencyNamespace": "7cqKdwnwTyTyr1XX", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1997-01-26T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-04-02T00:00:00Z", "discountedPrice": 7, "expireAt": "1971-09-21T00:00:00Z", "price": 13, "purchaseAt": "1996-02-16T00:00:00Z", "trialPrice": 54}, {"currencyCode": "HdIf6eMd0iVUmBrF", "currencyNamespace": "wFIESxo8uFqKtoZi", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1982-01-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1991-08-20T00:00:00Z", "discountedPrice": 52, "expireAt": "1987-10-07T00:00:00Z", "price": 13, "purchaseAt": "1975-01-17T00:00:00Z", "trialPrice": 57}], "QRsqYFtxbpKYKp18": [{"currencyCode": "TPWOixbTLfdOF3Vt", "currencyNamespace": "CUZ0wN81CLC324P8", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1976-02-01T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-09-11T00:00:00Z", "discountedPrice": 83, "expireAt": "1992-01-05T00:00:00Z", "price": 11, "purchaseAt": "1977-10-17T00:00:00Z", "trialPrice": 1}, {"currencyCode": "p6oxvvtB4aireJSZ", "currencyNamespace": "c7Cojp07DFR7IvEh", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1989-08-21T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1984-11-13T00:00:00Z", "discountedPrice": 64, "expireAt": "1993-08-02T00:00:00Z", "price": 46, "purchaseAt": "1989-03-29T00:00:00Z", "trialPrice": 99}, {"currencyCode": "cWkS5jnhMZsQ8CVs", "currencyNamespace": "HXHYBx7KkpRAaivn", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1987-04-25T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1978-03-13T00:00:00Z", "discountedPrice": 30, "expireAt": "1980-10-28T00:00:00Z", "price": 83, "purchaseAt": "1973-10-07T00:00:00Z", "trialPrice": 14}], "tdmVppuu6acpUdn8": [{"currencyCode": "X5IZjtFT6Bs8OO0C", "currencyNamespace": "VqXF6bMzRd2Z2Wju", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1987-08-07T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1979-12-01T00:00:00Z", "discountedPrice": 40, "expireAt": "1994-09-02T00:00:00Z", "price": 35, "purchaseAt": "1993-01-13T00:00:00Z", "trialPrice": 42}, {"currencyCode": "9ZcFGPCokMwrtVvG", "currencyNamespace": "hHzNdHMJys9gtFxW", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1981-08-01T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-08-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1993-01-21T00:00:00Z", "price": 36, "purchaseAt": "1974-03-17T00:00:00Z", "trialPrice": 26}, {"currencyCode": "TjzZ8KpdOxrQ8r5t", "currencyNamespace": "e5FkJ58wQyrAb67d", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1985-02-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1990-07-26T00:00:00Z", "discountedPrice": 63, "expireAt": "1982-03-05T00:00:00Z", "price": 42, "purchaseAt": "1987-03-19T00:00:00Z", "trialPrice": 36}]}}, {"itemIdentities": ["T8aEay0LM1IpMDZu", "DLXNscwbXgdwQnMu", "Reen3aYjhar5GRzO"], "itemIdentityType": "ITEM_SKU", "regionData": {"QociDSNS6hf28Tvy": [{"currencyCode": "yZjEMbPRNKUABS8c", "currencyNamespace": "yK8SnSvsUGLqYJev", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1980-10-15T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1993-10-24T00:00:00Z", "discountedPrice": 75, "expireAt": "1996-11-23T00:00:00Z", "price": 89, "purchaseAt": "1983-02-19T00:00:00Z", "trialPrice": 87}, {"currencyCode": "HuLJEAS7pSDlIS4N", "currencyNamespace": "3VRydtvWZZFDNIc8", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1978-10-30T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1975-12-04T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-12-26T00:00:00Z", "price": 36, "purchaseAt": "1977-02-20T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Mxf3NfjnW9axvejx", "currencyNamespace": "DQgdz6GmSzMPzB5Z", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1979-01-31T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-03-19T00:00:00Z", "discountedPrice": 27, "expireAt": "1995-09-24T00:00:00Z", "price": 66, "purchaseAt": "1976-06-11T00:00:00Z", "trialPrice": 52}], "bn27LOqX7FWHHlsx": [{"currencyCode": "NkfgF88XOEWI4jAR", "currencyNamespace": "IQkIiA44zjyRqefU", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1998-08-12T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1983-09-26T00:00:00Z", "discountedPrice": 25, "expireAt": "1986-08-25T00:00:00Z", "price": 21, "purchaseAt": "1986-10-20T00:00:00Z", "trialPrice": 60}, {"currencyCode": "L9p2OQ5Ll9C3fSnn", "currencyNamespace": "tsqrUKREAt8zG7Mw", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1978-05-15T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1980-11-27T00:00:00Z", "discountedPrice": 60, "expireAt": "1990-11-30T00:00:00Z", "price": 88, "purchaseAt": "1979-04-02T00:00:00Z", "trialPrice": 53}, {"currencyCode": "DGxhO1YbPoWmG714", "currencyNamespace": "ZA04yxGcMcYyromM", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1991-09-06T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1971-12-11T00:00:00Z", "discountedPrice": 77, "expireAt": "1977-08-01T00:00:00Z", "price": 91, "purchaseAt": "1999-06-19T00:00:00Z", "trialPrice": 15}], "6kWXBTTodpLcEI0m": [{"currencyCode": "WFWKlSwI38LyDyLT", "currencyNamespace": "QxmA6nDD3EFfeJdw", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1976-12-18T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1974-03-22T00:00:00Z", "discountedPrice": 76, "expireAt": "1996-07-31T00:00:00Z", "price": 16, "purchaseAt": "1973-04-14T00:00:00Z", "trialPrice": 20}, {"currencyCode": "CNRQX4T37n6lgMV9", "currencyNamespace": "tMXN2kDg7INFTJO4", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1976-11-03T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1999-07-24T00:00:00Z", "discountedPrice": 56, "expireAt": "1993-07-26T00:00:00Z", "price": 22, "purchaseAt": "1992-09-30T00:00:00Z", "trialPrice": 56}, {"currencyCode": "ql6eJa7PZ2Mvexsh", "currencyNamespace": "OyL8KXBfLq1zWLmt", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1973-04-22T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1983-11-13T00:00:00Z", "discountedPrice": 85, "expireAt": "1979-08-22T00:00:00Z", "price": 10, "purchaseAt": "1995-01-07T00:00:00Z", "trialPrice": 38}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'E0DZBwK4s4YGhc9q' \
    'jsGzedPNuJ4GH001' \
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
    'y8DGO7yuqGFaSZmL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "nl13NthHP0LDshHS", "appType": "GAME", "baseAppId": "bJGFP8HZNLJ7aPbR", "boothName": "MRrbKjoifZAWt13I", "categoryPath": "SgdwAum4b3t1Ph8x", "clazz": "HfEAlyda8FPutbAg", "displayOrder": 54, "entitlementType": "CONSUMABLE", "ext": {"lQUCJsDilWhSc6XI": {}, "xh1HqBg5FhY2vclq": {}, "nTbyZ7fYvmiZxdNp": {}}, "features": ["mibPCLiJaHXEyuLQ", "013gsIOArelbYwYT", "OO6qVUihFznsLFP3"], "flexible": true, "images": [{"as": "msku6ryZK7UKLhMA", "caption": "3DOG2TuIwxdK6goe", "height": 8, "imageUrl": "uJ8PAnT6lHom6RSj", "smallImageUrl": "2xFFFrIQFWJ2aMIx", "width": 34}, {"as": "j9PgWnODMMswus0y", "caption": "kKyOTFH9npo1k2W8", "height": 96, "imageUrl": "ITQp6NklXSUYkHNY", "smallImageUrl": "qepadIS0zRgire2n", "width": 40}, {"as": "OA7WiIi8k4T7A6su", "caption": "z0JPLhBV8H4Rs8p9", "height": 55, "imageUrl": "3SF3XkwdkgeNE7pA", "smallImageUrl": "2BmAcotg9A9VvbcA", "width": 18}], "inventoryConfig": {"customAttributes": {"CybTerX6wW5HLYxM": {}, "5DN6DJmnjBd7q6U3": {}, "V1i7ip9ibQlReTec": {}}, "serverCustomAttributes": {"qcbggfeYn1FnvTuT": {}, "rRI8Z87U0Y5R6IUW": {}, "UGWDcgSJ29Tqsnbt": {}}, "slotUsed": 96}, "itemIds": ["NBeq2uoLHWsw0m7Z", "Y46mjkOA84jougrI", "saMHmzafNaxCNIzv"], "itemQty": {"Oh61wCAYs9Qae7TE": 56, "ARNfA4hpoNUAwafK": 11, "QxxK2sBBkQz8nIgo": 25}, "itemType": "EXTENSION", "listable": true, "localizations": {"YIYto2cpXUnj1kXA": {"description": "EnU9CvpIjJ6tB2fq", "localExt": {"N6D76apW4CsuQx2n": {}, "ME1E8lGIgW2AWqhl": {}, "JfHgWSAjBmziLkAE": {}}, "longDescription": "WkqMo2uv4G0hb2TC", "title": "5zbxqSMQf3ZXRgmE"}, "XKPavNUDslWRgXzK": {"description": "cDEz6ivQvlpRKagG", "localExt": {"d8OJWfXgBkof2DgN": {}, "1OHBaKIf5hoyD0oT": {}, "4csEU6rwlyAZXRlt": {}}, "longDescription": "XTRz9WtMMb9e3S9b", "title": "iXun5fD0BBCts02K"}, "gz1gL82ANle3vQP0": {"description": "F7CVBRFOlmRZZrSi", "localExt": {"E7meOUBb0ZMyPVBo": {}, "wpLOlv3wNvAi5e5C": {}, "p2Id8PqgbZMgBinM": {}}, "longDescription": "uWrJOAvHxG7UhRxq", "title": "teme7V0mE4XANjqP"}}, "lootBoxConfig": {"rewardCount": 77, "rewards": [{"lootBoxItems": [{"count": 44, "duration": 92, "endDate": "1977-02-08T00:00:00Z", "itemId": "gHDq7oo2SQp9UXJY", "itemSku": "EGGpt55fVsBfrc4O", "itemType": "J06MAINAypeu3Zwg"}, {"count": 78, "duration": 46, "endDate": "1987-04-26T00:00:00Z", "itemId": "3XSMYkGVjcYe2wwr", "itemSku": "uEu9pKFWxMrOrO7m", "itemType": "2fUVM4vgvN5a9nlu"}, {"count": 1, "duration": 32, "endDate": "1979-03-16T00:00:00Z", "itemId": "F5WhoaEpbMKCe8F6", "itemSku": "OE3PKy2vHH6XrTj3", "itemType": "i1nC0J9A8DUtbT9N"}], "name": "imqnzt0awizcaXFF", "odds": 0.16325001768063663, "type": "REWARD_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 10, "duration": 46, "endDate": "1998-12-08T00:00:00Z", "itemId": "y3noSTunCZN39o0v", "itemSku": "ZqaSrHfwrqqHXHpP", "itemType": "nC56p62cEYBMPDDN"}, {"count": 44, "duration": 21, "endDate": "1981-12-11T00:00:00Z", "itemId": "y4MWHW8YW1euC0ub", "itemSku": "VpUB9WTnYHGmKeMn", "itemType": "Gn3hXTX65W9y7jKR"}, {"count": 13, "duration": 93, "endDate": "1985-05-01T00:00:00Z", "itemId": "FKj2fpaEDgvMXedU", "itemSku": "0CtjH3UPJy3CnYG5", "itemType": "ypxMPXQb9Aa9QMoQ"}], "name": "gjOf0byuj8Uxptb2", "odds": 0.22871919510498517, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 80, "duration": 7, "endDate": "1993-05-18T00:00:00Z", "itemId": "zJKYxouzcD0pPXkd", "itemSku": "TrLYN48A5DLkL19t", "itemType": "Xrv2bC14hfBeKISP"}, {"count": 5, "duration": 5, "endDate": "1991-04-30T00:00:00Z", "itemId": "knWoEbRoZQ4VuKeT", "itemSku": "QQXDNtjgypGgBtsG", "itemType": "OxHfW3WBHUGCPEvc"}, {"count": 87, "duration": 69, "endDate": "1981-05-25T00:00:00Z", "itemId": "DKDBhngmXpNaXSgg", "itemSku": "2yJzaaUc8p87eTTm", "itemType": "092rucPAhnaYqSLk"}], "name": "r3tlvhwbpOwvWyVZ", "odds": 0.022819674635635945, "type": "REWARD_GROUP", "weight": 90}], "rollFunction": "CUSTOM"}, "maxCount": 1, "maxCountPerUser": 45, "name": "UyXEOQUwXDX8MGli", "optionBoxConfig": {"boxItems": [{"count": 20, "duration": 12, "endDate": "1971-09-01T00:00:00Z", "itemId": "R3VVk7nD09WBTm7H", "itemSku": "y1AvjH8TO5OIzshG", "itemType": "gQ4ThugQFOWwlpo3"}, {"count": 80, "duration": 100, "endDate": "1977-11-18T00:00:00Z", "itemId": "W9NyUUdkrKCCEaIU", "itemSku": "UwPgILFEno141Rna", "itemType": "Yhr2WJyqCvAfWi7m"}, {"count": 59, "duration": 0, "endDate": "1979-09-19T00:00:00Z", "itemId": "wDM1CYDLmaPDEUbD", "itemSku": "vBUnl1NO7rLa2XTR", "itemType": "4IEvU0JE2kLOQb2C"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 99, "fixedTrialCycles": 30, "graceDays": 45}, "regionData": {"V5Nm182ykfY01Gcy": [{"currencyCode": "kfqRyXIVnis4SKjp", "currencyNamespace": "YMZV5AVm0vOTpy2x", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1971-11-18T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-09-28T00:00:00Z", "expireAt": "1983-11-09T00:00:00Z", "price": 95, "purchaseAt": "1982-04-21T00:00:00Z", "trialPrice": 10}, {"currencyCode": "KflmcC3pOWLT8ckE", "currencyNamespace": "y2SMQcmxebThGYrg", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1989-04-12T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1995-08-18T00:00:00Z", "expireAt": "1979-05-10T00:00:00Z", "price": 70, "purchaseAt": "1984-03-25T00:00:00Z", "trialPrice": 27}, {"currencyCode": "yKHvwa7cbRj2at5Z", "currencyNamespace": "JSh02srNNRw3Y1j6", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1975-05-14T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1972-12-21T00:00:00Z", "expireAt": "1995-02-05T00:00:00Z", "price": 42, "purchaseAt": "1997-11-15T00:00:00Z", "trialPrice": 100}], "cKrOSqAvumNXdNoD": [{"currencyCode": "6gTOf0jHAc8PGncB", "currencyNamespace": "z3SqYUIQnwGbMTiA", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1976-06-06T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-01-12T00:00:00Z", "expireAt": "1991-12-01T00:00:00Z", "price": 12, "purchaseAt": "1976-02-01T00:00:00Z", "trialPrice": 16}, {"currencyCode": "T3QnV1lkyfpfTo2M", "currencyNamespace": "X3YvlKKTkjhbq0eR", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1976-06-03T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-04-09T00:00:00Z", "expireAt": "1989-11-29T00:00:00Z", "price": 19, "purchaseAt": "1994-12-18T00:00:00Z", "trialPrice": 39}, {"currencyCode": "boTLjWe4LfJee5PI", "currencyNamespace": "5dFv5buhIZ4eMnCD", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1996-08-16T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1988-07-18T00:00:00Z", "expireAt": "1993-05-11T00:00:00Z", "price": 59, "purchaseAt": "1985-03-11T00:00:00Z", "trialPrice": 70}], "2g6s9FQKCfcu923Y": [{"currencyCode": "psdjtVRUIv3uIM3C", "currencyNamespace": "oS6JahcK1Pr6BT8b", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1998-07-15T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1989-12-22T00:00:00Z", "expireAt": "1997-08-03T00:00:00Z", "price": 3, "purchaseAt": "1994-02-08T00:00:00Z", "trialPrice": 57}, {"currencyCode": "5lebfPenWUEBZC8k", "currencyNamespace": "eF5vI1QiMb8GRzCE", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1997-12-25T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1984-10-16T00:00:00Z", "expireAt": "1984-06-28T00:00:00Z", "price": 75, "purchaseAt": "1984-11-30T00:00:00Z", "trialPrice": 28}, {"currencyCode": "A0L11TgHUfODRocs", "currencyNamespace": "LmBbV1sCNpADwypk", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1974-03-16T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-02-18T00:00:00Z", "expireAt": "1977-06-30T00:00:00Z", "price": 4, "purchaseAt": "1999-11-23T00:00:00Z", "trialPrice": 45}]}, "saleConfig": {"currencyCode": "X9fjEzscuFPv5tNX", "price": 100}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "W5QYtGAVQvqyIVad", "stackable": true, "status": "INACTIVE", "tags": ["Lh1cCBgg2D4HUqIh", "2JITEaFYCmQEyL35", "XDNwseD5BbL13OgH"], "targetCurrencyCode": "Zysyny0912axRFeM", "targetNamespace": "gIQdJNm52k6wEP9r", "thumbnailUrl": "j7lO6vs4tMfHLoSk", "useCount": 45}' \
    'XOqaoDBgsPHcNg0B' \
    'apd2WF3ACWSPCOIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'jZfSnIavouuFpqcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 93, "orderNo": "Gd9fk7fhp8GNMEX4"}' \
    'Ps5vorNX6W3h8ItD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '6AFXbQvGbKVlE5Vu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "lHAZZ2SKo1C0ktvm", "previewUrl": "ekdbic6I2n5Hclx6", "thumbnailUrl": "xvlDEhlvzVBqt9fN", "type": "image", "url": "OLKdFhRNswdEfL1i", "videoSource": "generic"}, {"alt": "SL7JlQ0WmwgELy9c", "previewUrl": "xgDaEUFiMTIV4pb5", "thumbnailUrl": "hZyPikzEmnmdOWGr", "type": "video", "url": "rpnpPPUyyCN4MFXq", "videoSource": "generic"}, {"alt": "CWhJPpmpjibu6WMY", "previewUrl": "MScWAzVVdQZznMUl", "thumbnailUrl": "qj2djHHFFRxJPvHe", "type": "video", "url": "fGHJseAA3xQG5zPN", "videoSource": "youtube"}], "developer": "e0kRnfBio030WDtR", "forumUrl": "FRReZoX0eYwpjuQP", "genres": ["FreeToPlay", "FreeToPlay", "RPG"], "localizations": {"Bi27Mr8QiSBuE8Wd": {"announcement": "xjHSrIcoNi9NFQFp", "slogan": "BDG4baNqdGxNGcHi"}, "l6iUOTWxf4GH0N4k": {"announcement": "VmTj683Ybw4TKyPT", "slogan": "xRuzNfmvBcfNBFiI"}, "w9mkjC9qXOVUNHtf": {"announcement": "bgUqbLQ3WTZF8gP7", "slogan": "LgkxhkSSID9PxPyX"}}, "platformRequirements": {"JHsWipvZANpRXHVq": [{"additionals": "JaiwkoaBb8UYH2Pz", "directXVersion": "5V5CtSrcX7aRP8vZ", "diskSpace": "9a77wOP10AbpbjZo", "graphics": "2dQM3ZXq9atijyFT", "label": "8B6hECr4zqhZ9lpl", "osVersion": "lwasnryjxylwRVcy", "processor": "18iHO0dKNHWBFM13", "ram": "F37X9HTu6c4mMUdJ", "soundCard": "oKmyaU7qTgHxGQ4D"}, {"additionals": "m2YoSLUIzzQsIU3I", "directXVersion": "Zf93pQmmWWhMnRSn", "diskSpace": "6PRk0DwXkYJ6aX6X", "graphics": "RSXg6OXqwh2Uj0IZ", "label": "ZFXv7pY5cNIYdQRn", "osVersion": "i6IfH05hVdagEETj", "processor": "8DNzQF9Ywa1VlJBm", "ram": "SCpF2z5O9ugNuq4u", "soundCard": "Gu9km7KeyQB3SUe4"}, {"additionals": "ug9J3KKHHaSwFS7f", "directXVersion": "AGmA4gy2QBm02aTd", "diskSpace": "gp0WcRdrrdOKQbXX", "graphics": "iMg5RAaD5a0gqyak", "label": "uryISjsrHy7SSarF", "osVersion": "sJyanoth2jhzr7PO", "processor": "OjzRzlmVmpfmMq65", "ram": "nYpNAwv9UsvPaX8W", "soundCard": "0GvPN7gRfsySRn2F"}], "X0Ac7CzuPXE90ufr": [{"additionals": "BaS458bBTbcqQVkS", "directXVersion": "IXLGF8dtk8bqcPfB", "diskSpace": "J9GOHxUkZCvqVRe3", "graphics": "F78EGvZd49hW95i4", "label": "Rm9sBef6ymEEU6G6", "osVersion": "YVa5GGFvLtWl66DA", "processor": "EkAvXqNdnEfei54f", "ram": "LtFTRx1fcfy4uTVb", "soundCard": "xv0l7RvPOKq8iNNY"}, {"additionals": "LY5oWJPoo8QT5EB5", "directXVersion": "GCOCowERMveDiI5B", "diskSpace": "YvV5LF22GlLe48YQ", "graphics": "RsZpn4zsR2KwSIl0", "label": "Un3PT2bVzOt2J0Vx", "osVersion": "SVRWxJw7idbmOx0v", "processor": "yaMbcnlyBvXdpoYV", "ram": "ZKx8oPBJncKdyabX", "soundCard": "ymlDvbcApuoA5PCd"}, {"additionals": "XT4YD9fDzx1WPpvL", "directXVersion": "BMMNJG6TuQ90jhJC", "diskSpace": "rrsBPvGhWiPLLd5e", "graphics": "ChF7cgujItr2ZFjL", "label": "5qUyimmVzOJYebI5", "osVersion": "Egye4CkNIFSC7Icf", "processor": "dqOCaqFaXYK6AzVr", "ram": "p3wn2BlIfmyT5owJ", "soundCard": "EG08jO7JMvkh08NQ"}], "QhBIt2H2PvWFnJMi": [{"additionals": "szwcYW9Jy4n5q4Wg", "directXVersion": "YvJS0xuVskVlA0TN", "diskSpace": "AcmfUmAzc5JVuc5L", "graphics": "Bd3uXt6TP1AE4lqn", "label": "IwLN2lGYqQSzIUdI", "osVersion": "qmVvmcAsPgT6XUEe", "processor": "RKSDbomdWWRi7OHZ", "ram": "eGP4o1Tgbe8J8xso", "soundCard": "71ULeHVV40sjQ8mt"}, {"additionals": "TN08V3MMSrrV6FB8", "directXVersion": "DFwD7WXkw7te8pQf", "diskSpace": "vxY5zPZKMd5ItnXb", "graphics": "DbXW9KlfgVvjjjEx", "label": "Rk4JHYGa2nnyqvFC", "osVersion": "YJOJl9ljs9WPwxzI", "processor": "CEykNJeEn6eiosoC", "ram": "vrGeDygOZbA1UGLo", "soundCard": "x4eJuvLmou5AtB5J"}, {"additionals": "9XxYqy0HcWUCcahA", "directXVersion": "1tjiBugkSmA8prRv", "diskSpace": "nuoHm9foRLP4zSxA", "graphics": "pJe0aplQXEaoGjon", "label": "wKDYwjvKhxwtaxd7", "osVersion": "4bEkQ8XN3xQ0KaIZ", "processor": "1ISja5TxqN8RXvgN", "ram": "zoX14Km851zHcDdp", "soundCard": "hWEIlBnOKyfAbdUB"}]}, "platforms": ["MacOS", "Windows", "MacOS"], "players": ["CrossPlatformMulti", "MMO", "Multi"], "primaryGenre": "Adventure", "publisher": "TXANlenFuUeRc2SC", "releaseDate": "1979-08-09T00:00:00Z", "websiteUrl": "Q9kgrqAIaKAUBfyF"}' \
    'CxsJfyos4fOD6B14' \
    'cwUNByHqsS7t8WUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'g0equIg7wIz8o3rF' \
    'WvlE7bmuaFNPCECK' \
    --body '{"featuresToCheck": ["REWARD", "IAP", "ENTITLEMENT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'HTT5beKYt4CDlWZz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'qpJeQd6tN5oH4E7J' \
    'osGEpOKUFWLtsLf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '78ybCNhF9RCyMn5V' \
    'X87u49Hsq4hLUkLL' \
    'TNMnmlFzzwpEZwbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'CEsJIB0JkRcYhCT3' \
    'pUMiOk2aKaj7wqr7' \
    'wwPCgByCnljJ7CYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'apWO5JGco1tRG98v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 41, "code": "Uy9H0C213rnYfZ8c", "comparison": "excludes", "name": "zURCckWWVlTYAkog", "predicateType": "EntitlementPredicate", "value": "qIsHod9kt3xkRSaj", "values": ["6HtcJbqjCZkEvdWN", "XSTpU3aCkzqs0hC5", "0vEOIxc25vtorwrF"]}, {"anyOf": 22, "code": "7VYPrZA5UWNq6yTj", "comparison": "isLessThan", "name": "ST6JF9lLvPS5jJ58", "predicateType": "SeasonTierPredicate", "value": "wjLRnoGxE4QuZeQk", "values": ["Iad7fAMCaXsZoyeq", "HJ0JzaJpqg9JgEy7", "RBv8hh81CTYPYD0W"]}, {"anyOf": 80, "code": "2FKoGRQ2i1n2WJVJ", "comparison": "isLessThanOrEqual", "name": "SnN2KpfXJ96sJUnv", "predicateType": "StatisticCodePredicate", "value": "yQU2RSNGWKnNDFZO", "values": ["IzawfXvKu5UsuFOU", "XohEHKCKphTiityf", "ok9snWC9CFiRmbEL"]}]}, {"operator": "and", "predicates": [{"anyOf": 92, "code": "ZixQMzfhG3hC9Be3", "comparison": "isNot", "name": "itTsWtL2AAtjEKW3", "predicateType": "SeasonPassPredicate", "value": "LXkQVWSLbAXxxeat", "values": ["YWk5lHvw9RXrx8aU", "eXWFZqotaiZN3MPu", "all18E5J9knaLMlv"]}, {"anyOf": 57, "code": "14DUjHqRaUZuU9T9", "comparison": "includes", "name": "Lgddr0UUiy5jm1w2", "predicateType": "EntitlementPredicate", "value": "UGIprrzf5gWNxqxl", "values": ["2qgslinTPbY1473R", "4QAE2aV1l1P0cjdc", "FPlwtoen6TTQtwMX"]}, {"anyOf": 48, "code": "9Ah8hoDWRw7XYzZL", "comparison": "is", "name": "uEf6JRpqZEUH2Rr5", "predicateType": "SeasonPassPredicate", "value": "cwQ3uBzBm355IU5a", "values": ["fWNB8u5Qlf4KGo0N", "Zu5bRvxm9KYr60Sy", "4g7UWRzPsMd90Jrk"]}]}, {"operator": "and", "predicates": [{"anyOf": 63, "code": "kaHSpxt9CW0WYKxA", "comparison": "isNot", "name": "YkzClqPty2kxgyry", "predicateType": "EntitlementPredicate", "value": "M9eo43Qi5cRehBB7", "values": ["pn0yX44aL9f0QyO5", "o24lw21Z3nE04Cbk", "YXVhTiaE4WKnEeaU"]}, {"anyOf": 7, "code": "GjtNbryvmkemouOe", "comparison": "is", "name": "GhKNxavCN2N47HbR", "predicateType": "StatisticCodePredicate", "value": "lY76lAzKbyHphqwB", "values": ["5Iehzt3ErL5T5rvB", "5KVla3LCTgTkPtcV", "RXJxUvm1xIvCywA9"]}, {"anyOf": 12, "code": "h2pCfHjg41ZhheDD", "comparison": "isNot", "name": "5HJEFQRX4iVg8TK1", "predicateType": "StatisticCodePredicate", "value": "ZL5o3htHW6Gx9Fao", "values": ["Zofu7lNuwrS7xf7B", "DIwGJ3pRyNwb9JgV", "iZI9Jujxs7GKf2LO"]}]}]}}' \
    'lVbEWajKUr3rx7Sd' \
    't80ugFtH5gSuRJLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'kijLEJPCdahOY2go' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "EK35CZu7WE18eU5r"}' \
    'tQUWRLvu3WEfwBn4' \
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
    '{"description": "0sJji4hVE3lKNQy2", "name": "rJxiPPjJk44WHDDN", "status": "INACTIVE", "tags": ["oGw2U9LoHWS4koau", "o9jkTEI52B8LI9vM", "EB8OHKsqKaw1EmCx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'OMl6uh44gPPfiJZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "SkIQI1h6OjoUY4QX", "name": "ecerXxPodPokDUiv", "status": "ACTIVE", "tags": ["QhcxynrF5qWYvJX1", "f7rYnPbkDk5g9y47", "AVCmFD0nKyUwcI9K"]}' \
    'JZt31la1wZgpPXxt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'cOPw0UBm7wccELVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '9RYTquwIrGgk3eqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'Of7WwNZWyYuM3y1T' \
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
    'jdcOVw94gqQYOWGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "7LSW6Kb9otdVBjac"}' \
    'Y5doQGhc8zSCeJ4Q' \
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
    '{"domains": ["8PHY6vGzNfPWTQ1p", "JMwPVAUNYFOg7Tpl", "EkOZy73bRBtWCJCJ"]}' \
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
    '{"currencyCode": "uzB1jbh95vj0V2cc", "currencyNamespace": "Q60lub807E0PGhia", "customParameters": {"3QvaFIVfHyAiTeDD": {}, "uvgKTfrZ6TfrQrFI": {}, "sYsZ1dTn2pA64FJu": {}}, "description": "EPymbIAwDAyNBagG", "extOrderNo": "D33WMVj7bfdfxyqK", "extUserId": "Q4YNnTTwZeuX7f9i", "itemType": "EXTENSION", "language": "sLK", "metadata": {"Ans7VrdNH8v1oP98": "hanhE18UbY1Zkrfk", "0Xn6jwfR02GfMrXz": "I7oWD1mZ9rW6QdtP", "e4YleMg5NGs1Pmz6": "Amebh0FbOWyhAnMP"}, "notifyUrl": "6BdBw6d4UOI7Tr9N", "omitNotification": false, "platform": "gpS550eQ5WiZiQUz", "price": 59, "recurringPaymentOrderNo": "v2qkqRR9Nwd8OrgT", "region": "5HMaelKs3hdNcCPn", "returnUrl": "rmZDNctQe0IM586q", "sandbox": false, "sku": "kflegYoVHYdQPAsG", "subscriptionId": "fQVawbSlqUfFfZyt", "targetNamespace": "HO4xrQvXR88ArNPk", "targetUserId": "MbfhbrTb4ZPG4R5d", "title": "qhreKq9si5LTZGjf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'JI0GRPR9FWa3sAlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'nzZ5Joq98jWszWZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "mbhMr5aDNyd7VDhT", "paymentMethod": "hmXAsBwC4MOmSF5Z", "paymentProvider": "ALIPAY"}' \
    'pYXTbgh3hVKyU97N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "87zJHVwE86VYnuoH"}' \
    'evgj9ralh2tjIEDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 19, "currencyCode": "7yXLAgfgESHWCK8L", "notifyType": "CHARGE", "paymentProvider": "STRIPE", "salesTax": 6, "vat": 0}' \
    'JJmXX0pmy1KDJtg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'FwOewtMPXhsCdeun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "9QN513GmIqfQ8mJb", "serviceLabel": 12}' \
    '1GnFG6ePpjPG4iKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "1VxNoFLwY2aYPpds", "sandboxId": "N55f9R3a5ZvIk8F6"}' \
    'ffaPP2hJSGfW6ap0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXboxEntitlementOwnership' test.out

#- 183 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetPlatformEntitlementConfig' test.out

#- 184 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Oculus", "Other", "Epic"]}' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["GooglePlay", "System", "Steam"]}' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Steam' \
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
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    '{"appConfig": {"appName": "vPmen8keuXuWuitb"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "Ns7DhXCIneqddStn"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UpdateRevocationPluginConfig' test.out

#- 194 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'DeleteRevocationPluginConfig' test.out

#- 195 UploadRevocationPluginConfigCertV2
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UploadRevocationPluginConfigCertV2' test.out

#- 196 UploadRevocationPluginConfigCert
eval_tap 0 196 'UploadRevocationPluginConfigCert # SKIP deprecated' test.out

#- 197 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    '{"description": "I8Vh4bQO4Nc65zcF", "eventTopic": "KgC0oMEpgLEiStlz", "maxAwarded": 58, "maxAwardedPerUser": 79, "namespaceExpression": "bKWmraqNIKPX6gPH", "rewardCode": "T29wkZwM8cvObRjK", "rewardConditions": [{"condition": "xi25l9mb1mSJffUa", "conditionName": "LwOsYRIJearztP7s", "eventName": "qwracbiPrT7cARny", "rewardItems": [{"duration": 91, "endDate": "1971-08-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NlQCocWBq1VspKjs", "quantity": 30, "sku": "jxjTNe3vK6XXKdJ9"}, {"duration": 52, "endDate": "1974-12-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SRyjx0xgbEuoPqi7", "quantity": 4, "sku": "JLKHle3po9nK2MnW"}, {"duration": 71, "endDate": "1984-03-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8LUxYanMQUFaZF74", "quantity": 90, "sku": "aqnYIBTANshJcdLE"}]}, {"condition": "ofyiS3dO8j3taWbS", "conditionName": "hXMN0MRNkMX09nQE", "eventName": "wFSce6VsIsSSdkP3", "rewardItems": [{"duration": 70, "endDate": "1988-05-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IZAGhHJlyMBkbUPi", "quantity": 42, "sku": "FDgx1gJONPjy1ei7"}, {"duration": 53, "endDate": "1981-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "WTaiUJpIgLrblSQi", "quantity": 46, "sku": "C6LzFqk7MSt4enxG"}, {"duration": 3, "endDate": "1981-12-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "r0GStncRVLvJm4u9", "quantity": 23, "sku": "eNYuVWrqxrNDhsaw"}]}, {"condition": "4vbDPKG9aUuCw1ys", "conditionName": "0BxLbujuXwWEJUvl", "eventName": "8k6CNRAfp1s21wul", "rewardItems": [{"duration": 52, "endDate": "1997-12-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "eY6SgfTy3HUPSrR6", "quantity": 97, "sku": "QmA6XL9p83Led5r4"}, {"duration": 73, "endDate": "1981-11-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "X6ynCg7jZBPZUjh5", "quantity": 70, "sku": "jvtwaUDi2fDyXlYJ"}, {"duration": 42, "endDate": "1980-01-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "0Xi6WV5MHuvBu2QQ", "quantity": 82, "sku": "IYip6c9di8JeefXJ"}]}], "userIdExpression": "2PdIoHdoDHgvwcWx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'CreateReward' test.out

#- 198 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QueryRewards' test.out

#- 199 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ExportRewards' test.out

#- 200 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'ImportRewards' test.out

#- 201 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'RIJjlQAk4T5By0Aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "ALCR39RH5UcRubJZ", "eventTopic": "YIgyBXZfTmD5U7RT", "maxAwarded": 44, "maxAwardedPerUser": 13, "namespaceExpression": "IuyjoeXOEFAR7ULC", "rewardCode": "1He2xJmIQ7lG3SSf", "rewardConditions": [{"condition": "Jb7YC46l63YRc0T3", "conditionName": "d9XaFEWXtvTExHo1", "eventName": "HliWVA9kYxDaegAg", "rewardItems": [{"duration": 91, "endDate": "1988-04-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ciZ5FWoyqYl8KD0z", "quantity": 24, "sku": "AP9G3HyBugfReiDL"}, {"duration": 6, "endDate": "1980-09-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "RmElGhVQf227V7AD", "quantity": 1, "sku": "n8azMyTBLnxtGnH0"}, {"duration": 15, "endDate": "1996-01-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "XzOdGXLsEc8XzmjX", "quantity": 54, "sku": "4csMlaBkq9QHEb66"}]}, {"condition": "Bo3ALdAKAQUoGDOU", "conditionName": "FK4BcWOxnwerZoIJ", "eventName": "2JMtHAD8gJdK4CJB", "rewardItems": [{"duration": 83, "endDate": "1999-07-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4CHHaydtaKJNujTv", "quantity": 58, "sku": "7lVyVYhbj7X96t5W"}, {"duration": 78, "endDate": "1974-11-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "t0pudyASz9qbHEsb", "quantity": 14, "sku": "qWoL8k0jEDj1R673"}, {"duration": 58, "endDate": "1994-02-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ybn53kIRN1df13Ev", "quantity": 19, "sku": "WMWqZYmAvVETTsjp"}]}, {"condition": "3kTD5DUdBvhgsfcL", "conditionName": "URAHqkEpmWErwMkb", "eventName": "sCK44WEKYCuqx8xz", "rewardItems": [{"duration": 15, "endDate": "1996-10-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cL3qt4lUCjplpfxQ", "quantity": 61, "sku": "KfuARcHovGUZSzWf"}, {"duration": 34, "endDate": "1983-02-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sYo03H0HWXeUSuTJ", "quantity": 89, "sku": "eDXc5LH8xN38dVbd"}, {"duration": 60, "endDate": "1978-11-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9eqq8PstBnVeYTD7", "quantity": 17, "sku": "7SfSPivmYx19GWm8"}]}], "userIdExpression": "7P1GbEQA6nI1VhgT"}' \
    'vfzwfgRZntMhunn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'jSCD2AknCwPe4TX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'CK4IBY01KuFbs8Iv' \
    --body '{"payload": {"2Ij9B7VD3SyR3UCM": {}, "UtsTLoeVLjxbwUQU": {}, "VEWE0xtN3v8DgFUr": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "jRGzthYJKH9vhOLp", "userId": "oWOSJS0kU6fD66yb"}' \
    '2MtSEiRgh67ylD9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'DeleteRewardConditionRecord' test.out

#- 206 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'QuerySections' test.out

#- 207 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '{"active": false, "displayOrder": 62, "endDate": "1973-06-29T00:00:00Z", "ext": {"DIyZ6bUl6Q4DAwze": {}, "ZS20lWbIy7iWsAEY": {}, "3T2YDXuJSzkSZfZ5": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 42, "itemCount": 20, "rule": "LOOP"}, "items": [{"id": "Oq8HtddVhZ7lfOiL", "sku": "RYQkDw4MI4SEqiXI"}, {"id": "aji4MOmP494vGlNt", "sku": "uMUpS3K4kKGKct8S"}, {"id": "ZQK7TEK4sZzj7oPP", "sku": "3OeZVILEaXbHnhR8"}], "localizations": {"gT3if17nsndhy0Gt": {"description": "ga4xRRNit3ApyAvk", "localExt": {"VtA8b9zvOaiSMHjV": {}, "ciAVrPuzKV1Wj7J3": {}, "QrgnhZMehNOncXNM": {}}, "longDescription": "18ZiBLaa5iN5b6OD", "title": "d1kj4Qj6RS5aO256"}, "ceteBSz425Kp2PGW": {"description": "8gpXu2mBdRvF84eD", "localExt": {"5m02245YlrGlfgrz": {}, "LifZvRPXjiYCPM52": {}, "HK8ASyze4T9TmQup": {}}, "longDescription": "OzuaRV8Vw1OuyVC7", "title": "JcK5UdheuW7HOMoo"}, "XzmW321H7CGe7BlG": {"description": "bNTtvAEsQs0WkD6Y", "localExt": {"555p9oqb5MeMGL8k": {}, "ITGmF087BWKC6wzH": {}, "gwFqS6c2YCA1r312": {}}, "longDescription": "BKDvA3YyGsBgTJCc", "title": "6734MnrbjAM32RlQ"}}, "name": "3Wpg0XNZCsESCHRP", "rotationType": "FIXED_PERIOD", "startDate": "1980-03-02T00:00:00Z", "viewId": "OQX8twQrDu49JFXj"}' \
    'Pc1tJBaHYTZ2IdgU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'Ymmt7HXJCUjwNMnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'rmR9dDVbvyNupYCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": true, "displayOrder": 85, "endDate": "1997-09-18T00:00:00Z", "ext": {"EaMgXsszL7hpsSwA": {}, "QxtDEUm4PnTTyHhB": {}, "vqhixMPjP9lZT5O6": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 85, "itemCount": 96, "rule": "LOOP"}, "items": [{"id": "yZpnVjbpotD8HTOO", "sku": "dvA4UhdTY2DNsFuG"}, {"id": "cD5vraJ3WftgZ43r", "sku": "4ZLb7i2SZkIaANvZ"}, {"id": "0I2EGVDWs67zwXLL", "sku": "DtNRfmo1w8aAcuRQ"}], "localizations": {"zdYhuES7BncXfily": {"description": "RfU4YHfMpHxEcJG7", "localExt": {"c76AToup2zhRng3K": {}, "ibPdtHZPKb8CPLdI": {}, "k4I9TU6FvvEdqHzE": {}}, "longDescription": "Dtl5oR9m1dm3fGK1", "title": "wINqvFrAsrmYYu40"}, "w6szojkvjtacFSVT": {"description": "vgh23BGEa5ftmSBK", "localExt": {"Q3zAXk9qVrzEqsDw": {}, "IwRyHKWspPtJlLDO": {}, "jXTWGIrWq2VvH0ro": {}}, "longDescription": "A20Sfzrc9YYsgvVL", "title": "N3usfhiyCf1FOddx"}, "tE52sFK1jNp3Owcr": {"description": "NR2jH7Xx7m8IqIRy", "localExt": {"UqaCbbMa2LqgJOAf": {}, "FwvvgYPIFEVZLGzE": {}, "glEe95LWKrkj7TPu": {}}, "longDescription": "igp3RiJofgD4VypG", "title": "T4cTfKNrjPqUk0t9"}}, "name": "aquw2B2UVIQMA6BO", "rotationType": "CUSTOM", "startDate": "1972-07-13T00:00:00Z", "viewId": "64zDQawQPbbbHLca"}' \
    'HmXRdPvQLVuKpiiZ' \
    '4Imogp7RKEcLehyA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'owu72oCUdMES0mVV' \
    'I1FilcO4pajEhkRL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DeleteSection' test.out

#- 212 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'ListStores' test.out

#- 213 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    '{"defaultLanguage": "MvZnYZKCk0zbREEl", "defaultRegion": "wdZORocHSHulJHhA", "description": "nY7QeDSRroVkXb4x", "supportedLanguages": ["PPUmUifQvfoZ7n3e", "RMzJEQYwNGRl2gcW", "dDmIy4Ia2UtS4T1v"], "supportedRegions": ["2y9Je7apQfNdDyT3", "a0EGpHgGLUqdG3kB", "fGvwjwttys4GvDvs"], "title": "1H5juf5Cq950XtiM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'SECTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetCatalogDefinition' test.out

#- 215 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'DownloadCSVTemplates' test.out

#- 216 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    '{"catalogType": "SECTION", "fieldsToBeIncluded": ["OpbUDnyVmYotZCA9", "LADbjj6viKPQxoVP", "77RuEzCRLrZmVBFc"], "idsToBeExported": ["2P689TFuh1hFoX56", "gzosv2p6WtLfgPM8", "t1tgWhx94eFnxfKd"], "storeId": "ptYcgxbMBZz4e7YZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ExportStoreByCSV' test.out

#- 217 ImportStore
eval_tap 0 217 'ImportStore # SKIP deprecated' test.out

#- 218 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetPublishedStore' test.out

#- 219 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'DeletePublishedStore' test.out

#- 220 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetPublishedStoreBackup' test.out

#- 221 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RollbackPublishedStore' test.out

#- 222 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'PuTkhJH0gQxqxmEF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "ytm0rZGlRUuJ7Hgg", "defaultRegion": "A1D8DBtkE9JX7oDF", "description": "oXpZ9sy7dEuiT7Or", "supportedLanguages": ["RdHjzNhfc3uokglA", "mxb5eaYqdXkBqt2U", "frBE1JhOOdYFVxYR"], "supportedRegions": ["0XhaQ30cHb0re0TJ", "wuS3NPZi6h1nN0tx", "ahdhp0tmV4jjIkC8"], "title": "lqpB9cbsDlreKfjf"}' \
    'pUz3jtg1bKaDBROm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '6TJ2qMul8cl55U4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'B2xVHiARcFLzOW7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'z8Gz5TN3bJ6UVKAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'Np2ReRw5WPjohGmJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'KCjbEtFKLGvBQOS8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    '1LpIh5QqEOKQXnUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'MXvJJrO8K9yVaSV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'MkQpPd0utGYDVGwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'KCkOgcVrMw1DAaC3' \
    'oGYmbE9E87RTBvlu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '7lo1foXU28IE7EVv' \
    'QkoqOZIFeJQSrnPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'cIMJRStF3LRa7q49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'EdmhBpI13Mh9tHYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'ilnHrNI7XsRCD3YO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'ImportStoreByCSV' test.out

#- 238 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'QuerySubscriptions' test.out

#- 239 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'zMK1ZWOxnVMpyEzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'APi9dBg5J0me0Bhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "ZVrOsZSqQjmdJGa6"}' \
    'AahLvhIfKDFkuldV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '3vhNCAUQUVGJTsED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 39, "orderNo": "0ZctunIw8zzjr1oe"}' \
    'Y1p4P0xno1luSqci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 88, "currencyCode": "rfqsoJ7AkLiYjJvl", "expireAt": "1989-02-26T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "H1ccnrp3T2fKqq9C", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 97, "entitlementCollectionId": "Jlj0UGtCqJnqpaur", "entitlementOrigin": "Steam", "itemIdentity": "5iSsLSqGKfGJDmzF", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "pqpoIzofQ17bQpOt"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "System", "count": 34, "currencyCode": "Y63DFSnh5IbdftTL", "expireAt": "1993-11-04T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "mTbQzxkHXSiDFpwg", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "CT2YI1qt4AYI54fg", "entitlementOrigin": "GooglePlay", "itemIdentity": "lDCLFwNGzR7zvW33", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "LQ5NyteBZg7IM93L"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 78, "currencyCode": "5MRxu5cYFtJZeinW", "expireAt": "1999-04-13T00:00:00Z"}, "debitPayload": {"count": 65, "currencyCode": "9q4asIfg6qpRvHGY", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "nnFA4ieAeG0JcWHL", "entitlementOrigin": "Playstation", "itemIdentity": "VjTbM9IHL2JcpnLu", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "ndE3Ucg05FtWiuP1"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "9eq8hIKrzAUsKqpj"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 67, "currencyCode": "DTPkZkYfTO2Gg00J", "expireAt": "1972-03-22T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "GaIUaL3FoA27eK2U", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "GhGbMCnu8NHDPiOQ", "entitlementOrigin": "Playstation", "itemIdentity": "zvHab6b9t7DWTaUG", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 14, "entitlementId": "JRTcrm3mIBuPZxql"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 40, "currencyCode": "Oe2VYsej3cSW6YWX", "expireAt": "1990-07-25T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "tMOdFHQXjAZrDNCo", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "2RroweT9Xanvbg8n", "entitlementOrigin": "Playstation", "itemIdentity": "t4pAasYNW28u3UZ3", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "6QdMAL9IC4460Wck"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 75, "currencyCode": "Injdq27RgguQ45JS", "expireAt": "1978-09-04T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "lceIy0lnTniV8j7X", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 31, "entitlementCollectionId": "R8FUW42wLu5tQBUE", "entitlementOrigin": "Twitch", "itemIdentity": "k2mUvrQPFxSaRrDs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 59, "entitlementId": "LGd0zQqYmGkk8Pcq"}, "type": "FULFILL_ITEM"}], "userId": "3l2hWOuqsilAWXNF"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 65, "currencyCode": "xIWM9jL08jtCIr8S", "expireAt": "1994-06-19T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "IIeRmFR2TQ2rE5Ug", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "8q6zX7Jc7TK5xO3L", "entitlementOrigin": "Playstation", "itemIdentity": "oEsCRrlY6AX1ksmS", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "m75yFZVt1HZPcFbl"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 26, "currencyCode": "KUphPevxFz1b7Q3N", "expireAt": "1982-08-26T00:00:00Z"}, "debitPayload": {"count": 99, "currencyCode": "ur3yS6PcP3N8ee3a", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 33, "entitlementCollectionId": "SyZkpxzyGW3kHAKN", "entitlementOrigin": "Playstation", "itemIdentity": "lQfOCN2keFNIQusm", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "AYWBLZg00dmqgWRm"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 89, "currencyCode": "pH8xifqavEfKK0De", "expireAt": "1975-04-07T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "HT7wmvO6YDgQ4TLd", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 8, "entitlementCollectionId": "ZgouTEi19doNSCRr", "entitlementOrigin": "Oculus", "itemIdentity": "DqY64bsfWMA6zIWi", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 92, "entitlementId": "xH3NpxEEE1xE1teY"}, "type": "CREDIT_WALLET"}], "userId": "Ma16Sr2B137kVZhk"}], "metadata": {"ISgONgrrElIGGV8s": {}, "Y9ZaFaHBtEtzzbIb": {}, "J6nsmYALYAas29PB": {}}, "needPreCheck": false, "transactionId": "Y92iMkPiEKRgT1zZ", "type": "PaKlnIY3vGLET05J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'Commit' test.out

#- 245 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetTradeHistoryByCriteria' test.out

#- 246 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'QWhwijC7ydSFRQ4V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "5OyypfQ5iJtNrVbj", "value": 28}, {"id": "BlpKXpe1zYzna0T4", "value": 15}, {"id": "qYhPsMMX4Dg6kBhh", "value": 25}], "steamUserId": "WtZuhAp0yxLpfWB0"}' \
    'inH8xFDMoqbLU4KG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'sevVGPnqXXPustpa' \
    'Zz47mZuZptSindV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "KpifmfS94ybYG4wL", "percentComplete": 0}, {"id": "F3F57a8i8FBQVq8F", "percentComplete": 96}, {"id": "DG2DfogFpQ6h4G1J", "percentComplete": 45}], "serviceConfigId": "EqnaczanLg5zKTta", "titleId": "PmN6tWQqV1V78ZIj", "xboxUserId": "g1EtBZbAWeHGdU9m"}' \
    'llRGwL1hP0ILR0El' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'a7ZLwTA0wt5op6F6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'Z1a1sBmUaCx3pnw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'UqOcXFVD0pboKkDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'JufSvoXGyr43yZ4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'ipgYCZiVhuUlRF8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'gS0Z3T7DC5TO5zuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'OtCw7S3b8oIW8rdu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'VEpRjbhlZ8rATgmf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'iV8x6LtOu3SAtYQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'Z2M0m2eu4s6Vt77Z' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'CzMbz1C3ZtjGu9Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'aM7nweO9MSckJNZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "DhfW7AVHVE6Tamht", "endDate": "1985-12-30T00:00:00Z", "grantedCode": "UacOPwPczqMDbsgi", "itemId": "aaxIpP9oAICocQql", "itemNamespace": "5YfBZVQcDD4zf1BZ", "language": "rjI-EdBs", "metadata": {"Ws1jZYqrf4bxOoik": {}, "ruHKYKNEVJSzeli2": {}, "Uey4fuSj1kSeWA37": {}}, "origin": "Twitch", "quantity": 23, "region": "McnnKWV37CLHYvul", "source": "REDEEM_CODE", "startDate": "1988-04-20T00:00:00Z", "storeId": "sFExmn4GV4MH5mOZ"}, {"collectionId": "yTMMDazz0zG1FmCC", "endDate": "1983-06-30T00:00:00Z", "grantedCode": "0GtE9ePlbHeBy2yY", "itemId": "QJsEZNAnUcJCHbaM", "itemNamespace": "8I2sFnR0i1EP6ekQ", "language": "uSB-778", "metadata": {"27Ayw8HdDdyIIR5c": {}, "s3jEJm9cqIJO6etr": {}, "gPcoqdV16bQzZjJi": {}}, "origin": "IOS", "quantity": 79, "region": "JFm6K0MsbekvKte7", "source": "REFERRAL_BONUS", "startDate": "1990-01-08T00:00:00Z", "storeId": "tDH1ypF3hIsdFXbb"}, {"collectionId": "aFfchju2kAuottOS", "endDate": "1982-07-25T00:00:00Z", "grantedCode": "o884abNDjMPiZHxh", "itemId": "Feo51XVDI8f5EWnd", "itemNamespace": "hcek3atmhTw5TDjW", "language": "Gj-256", "metadata": {"6HS643vgPdN21mWw": {}, "tuqNbtaAfDzs5Myx": {}, "W90cMZ9NeyZ5n02q": {}}, "origin": "Steam", "quantity": 33, "region": "GsQTmKTeq9hsX0E1", "source": "PROMOTION", "startDate": "1981-06-04T00:00:00Z", "storeId": "QzkJa95maQLAJLoG"}]' \
    'MHeP6XZjcdrsSt4s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'pX9eT2jwH7ODZfqj' \
    '84XXtngQG9E03eUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'SRO9eoka5Ufs9UTt' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'TFfQHB8O5ke34NGu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'MLQ7iPaGqelc3lbr' \
    'PkW2foKqIz9z80IC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'xp4M7Opf9oRlvBsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'j4IcbdUz2cBWKIUu' \
    'PLfvTFl9DbHQLYWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'wsAVcQ0VGEUxlcNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'WOpRLETWMAv0uJ30' \
    '["L51TxrdknW52x2o1", "yDO6bwcKYeFoxUWd", "vEBTwUyzq5bzdNEH"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'v6GmaokUOIadEDAm' \
    'p524IRplmKcwvGgu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'z7SAcGvV4lCJgcrA' \
    'ut2gYpuKbE8ulWHo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'G1zC1K7oT3iNe5yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'ZbqmAgI6LUauh1Gl' \
    'Eo4faeHIeXSROEb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'iXucFoRm7DFw5ArJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'zNAElybJSWLbZCdc' \
    'wYHhOIGu0vXLFZoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    't8k5ZtRJGwh0BPRC' \
    'WdTnytxmesJ8JDDc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "PDev3e8oc7sh3o0r", "endDate": "1979-03-07T00:00:00Z", "nullFieldList": ["YIh3Jj15pf4bXUry", "tKH5rM54pVKLq2ni", "QIIF3Qc9pq9UUur5"], "origin": "Playstation", "reason": "3AKtQffBJPNo4VIz", "startDate": "1985-01-02T00:00:00Z", "status": "REVOKED", "useCount": 100}' \
    'IBQt7BEsLhZnLrMl' \
    'vvXDmz8vDIkHRMj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"pIYdQhOINS631eYx": {}, "KFwpR5ukyHmVB2oT": {}, "qRWbK0ubDt08F3Pt": {}}, "options": ["ynki71NZANUG3Xyw", "OPxcLTU0y3maqZGw", "BZAszrs6F6qWE8F5"], "platform": "UT7Jy1J0W4BcrVEE", "requestId": "fr25k1H2s4V2KN0P", "useCount": 77}' \
    'tjv4HjtKUJ2g5iKv' \
    'kb6yaN0rJRTtAoro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'j50ibuYM4wRG0lN0' \
    'X5kMcmOdLuSZLYkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'ABWq6LMyqmJBIayJ' \
    'YIYPCQLT4UtcQmxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'nH608ZzCha8xLBGl' \
    'N6GGKXlt1XAswrMM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'jtufusABAiEcZPc5' \
    '4ZoDD56c8ZJFga6q' \
    --body '{"metadata": {"XT56186aDmZpx6Fp": {}, "qFAR1FP2qDxqukQG": {}, "mZ8QPR4rrBu0xMLS": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "ZM2reG0eUsKe4gH8", "useCount": 95}' \
    '6zZRXBAexxsuLkWk' \
    'tcAykay7LItVjr1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'SzeXfUiXANoRioh1' \
    '1etL7rvPzXTBq3cX' \
    '95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "BVeKhVWlgMI2a4Hu", "requestId": "uQiMf3ZtSRaKTvnY", "useCount": 88}' \
    'nwUyJDPc4Bi2BT8W' \
    'WMNZ7MQ0xXiAUp37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 82, "endDate": "1987-08-26T00:00:00Z", "entitlementCollectionId": "ZG1bPREFnLFvdjVz", "entitlementOrigin": "Other", "itemId": "bF4f5a8wwsXbVcGQ", "itemSku": "FcH3a88llB2KCetf", "language": "PNaSebuaBm42ZRTd", "metadata": {"7otFS5xUblp0GJFH": {}, "hDBbjdusCtKYo61c": {}, "23RG7T7E4yKJUPzM": {}}, "order": {"currency": {"currencyCode": "18zammJN39lhBPiR", "currencySymbol": "xSSC369UVGTnts7q", "currencyType": "REAL", "decimals": 43, "namespace": "3YCsDe0la83cvnj5"}, "ext": {"Ut4YTxIBMay1sHQo": {}, "xlbhfnh1larFYcM0": {}, "OoFV93hG5GVHrcfG": {}}, "free": true}, "orderNo": "p2u2A2ZLrkeWbmcg", "origin": "GooglePlay", "overrideBundleItemQty": {"K7Y5bCch6ur33Fth": 57, "0FOWCXy70cM2iJtg": 31, "5bsovjmmxHjjlquE": 91}, "quantity": 55, "region": "61oiTLHdBClY8kIt", "source": "REFERRAL_BONUS", "startDate": "1974-12-26T00:00:00Z", "storeId": "KXcluepkD2cjAyU8"}' \
    'thUL0rK6YlDgS7DF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "6WHO4xKI3DzXlqZ9", "language": "vd-LkHv", "region": "aCgl5zfvvm60VIJW"}' \
    'tArjNf9ClzJiLrK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "iwSKwTNINv7MbR3h", "itemSku": "7N9mLvImrGFR73LV", "quantity": 75}' \
    'riinQEr7oILTomzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "EdqAFGjuRaB4ccMp", "entitlementOrigin": "System", "metadata": {"qzF0Wdx4tTiOqvd6": {}, "is3iMkUYXGJ52Lhr": {}, "cYmNqU8FNr2Sf2vn": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "LY7ScjfHWvp5yxoH", "namespace": "DN8wbZhTBvAeHGP8"}, "item": {"itemId": "MEJHjkHXgaYcrI47", "itemName": "DABOUyTgLqcqWj25", "itemSku": "jcDQ7S4nZymFu9HD", "itemType": "ayb3pUN53xwUDjiB"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "0TEDjWcIzfsSrF9J", "namespace": "Bbs3ioKOVcrfhki2"}, "item": {"itemId": "j4K5qHkvYSU2i8wp", "itemName": "Pg4f6CytNOpTcy8n", "itemSku": "FxnyUhq8QCACdn9Q", "itemType": "BrEBZ0FGcSF09VMO"}, "quantity": 55, "type": "ITEM"}, {"currency": {"currencyCode": "fFhgytL5jv2cyVSX", "namespace": "xh4A5aA1bEwNCWyt"}, "item": {"itemId": "xJKphKxkJ5Y2qNwo", "itemName": "7fOIEm4CCHTjiJTc", "itemSku": "JCNU9JxdozQjrd9h", "itemType": "3KvseGTWQwYHbgon"}, "quantity": 52, "type": "ITEM"}], "source": "REWARD", "transactionId": "t0fkjelr7hVgkvQd"}' \
    'to2PuC14Lu2G4Mw4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Mo4TirGDZ6OUYrf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'N5BjG6bELZwjEmKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'ZXlgbV3dBwrK8hpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "Na_OMyE-UI", "productId": "g6bypXmwZRpU8Qcr", "region": "mp46NHHKuQExWorl", "transactionId": "4PYKJ1GJKlZ26mxx", "type": "GOOGLE"}' \
    'rFWCDjFeol1Ra8c5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-admin-sync-oculus-subscriptions' \
    'c3F5otSicHNAFf6X' \
    --body '{"skus": ["oFjTyGzUy7Gy3lIb", "JD3ko0KsF8jqH84W", "95YMkpzkat1qYXph"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    'VMsbw6Rv3XZ4XgIf' \
    'TmvZDu1OaoVmtgO5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    'YP56VohkMQrBSOet' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "1EcW3bKxXuYOn0UL"}' \
    'O8bwirHmfnBivLKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'nrwTNNliEMZaebfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'PLAYSTATION' \
    'gZ4cc4oVqQk9tqGz' \
    't1BHwaxrSepYwXWb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'APPLE' \
    '1d0v5MiCVrY2QOMJ' \
    'mNbAv9VCU7hdDbGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'cJKa1wsM434xCGXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'sh5xydeZADSKQFv0' \
    'tnP05L7Nwx1i8sHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'bX4mIdomBVyorRK7' \
    '3vbWSNBzkiEHyJEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'g3iIjU3AAg7WG2eT' \
    'smDaTzm1iyRQNy7R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'FRXuzS7oKchq3HFD' \
    'Ap8snTqP81J1c6C2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'wvWDhsYWwX5hKxgC' \
    'MD1qRyNe4g5DSTBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'RPaWHEoCnndVYqgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'QueryUserOrders' test.out

#- 310 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "PmwdNn0rosYXZ8eI", "currencyNamespace": "mgQ2x0SgQXdYwRiD", "discountCodes": ["Vsr09JpliIbzDdA2", "uKo24S6RgeY6mxar", "0g9UeCPSEkHvpI9p"], "discountedPrice": 11, "entitlementPlatform": "Playstation", "ext": {"Gr7q4J4HRfPSShgu": {}, "xCFDvHcOou9G8lXx": {}, "C3R0xIfzLRFel1aM": {}}, "itemId": "fEV5ZvvwEDVOZ5VO", "language": "wnn6MrDyExIjLvTJ", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 24, "quantity": 74, "region": "9WnxI3c4i8HDHZe4", "returnUrl": "XLK8QPEA7MUcU28T", "sandbox": false, "sectionId": "JODaZNFJFbzIchkA"}' \
    'ZmUviJbcnsW6uK88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateUserOrder' test.out

#- 311 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '9Ccm0VWwNdNaPLrz' \
    '9N2oRxNd2x7bzAMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'CountOfPurchasedItem' test.out

#- 312 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'nc0ESgND3Bzn0RXi' \
    'wLSoaZygiLJ4dBRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'GetUserOrder' test.out

#- 313 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "FULFILLED", "statusReason": "wqKSWTRuDBWveCv1"}' \
    'Rj0emRqo5yTUCEJD' \
    'yanAifsUA6fKzeVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdateUserOrderStatus' test.out

#- 314 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'HcetoKKyITDGaFUZ' \
    'svAcQqJMBspeHcHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'FulfillUserOrder' test.out

#- 315 GetUserOrderGrant
eval_tap 0 315 'GetUserOrderGrant # SKIP deprecated' test.out

#- 316 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'z8Ok8bgV76h8tj65' \
    'I0OW9DhwNHdSw93I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'GetUserOrderHistories' test.out

#- 317 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "umFyH8gFezb1WOjy"}, "authorisedTime": "1998-08-03T00:00:00Z", "chargebackReversedTime": "1988-04-16T00:00:00Z", "chargebackTime": "1975-07-27T00:00:00Z", "chargedTime": "1994-03-02T00:00:00Z", "createdTime": "1991-10-28T00:00:00Z", "currency": {"currencyCode": "KJYcE585zPfpDiAo", "currencySymbol": "4zAj1AgjctQkNA6t", "currencyType": "REAL", "decimals": 48, "namespace": "PXW0Eog3qNqoLr5u"}, "customParameters": {"xNWDT3hlTaFfn4Th": {}, "PY3oU02EfGsDjENb": {}, "nYSDYXgkcUGG5hRG": {}}, "extOrderNo": "IRsqJTdlIm2TA1ui", "extTxId": "NbPsWP4dql0EDA4c", "extUserId": "U4WstdHC5KGE92n4", "issuedAt": "1980-10-08T00:00:00Z", "metadata": {"FIM7AWUdPJvJivl1": "uU4DMwBdaNaGlQD7", "ToPlTTR6ePboL66X": "hyfKhLtqZR2r4RfV", "Og9ZWFBw7Tk0E680": "aIGz1A2cXngjJWPf"}, "namespace": "2xqt2uL9EtENwWqO", "nonceStr": "ZUVxd7bZpS2i4gNv", "paymentData": {"discountAmount": 70, "discountCode": "uqvkzikf2tQ7LhwH", "subtotalPrice": 34, "tax": 23, "totalPrice": 4}, "paymentMethod": "MDbUWJ5spS6gLd7l", "paymentMethodFee": 83, "paymentOrderNo": "OF4v4RTLnsM4wpXh", "paymentProvider": "ALIPAY", "paymentProviderFee": 94, "paymentStationUrl": "aJDB3MXGMrRfpSxf", "price": 70, "refundedTime": "1985-11-06T00:00:00Z", "salesTax": 28, "sandbox": false, "sku": "JqDbKXtFPmTQOO3d", "status": "REFUNDED", "statusReason": "GapPUenPlT7QiPDE", "subscriptionId": "UKBKA2vpqA4MSD0i", "subtotalPrice": 52, "targetNamespace": "0lvXbcZY7zXTdKQk", "targetUserId": "ADYHyER3eNCfqyJ4", "tax": 93, "totalPrice": 71, "totalTax": 72, "txEndTime": "1995-03-21T00:00:00Z", "type": "7vRV6x146gCIrSkE", "userId": "iZX9iHZkthOUUtPB", "vat": 47}' \
    'kQvK7NHpsIBYlUoE' \
    'WZPawFVpfXqbM5rN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'ProcessUserOrderNotification' test.out

#- 318 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'HQHEfoYiLFQBUx73' \
    'FrGG1NypPAy9ZqaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'DownloadUserOrderReceipt' test.out

#- 319 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "ySvpXwMac489Y6N0", "currencyNamespace": "H6yn3PYiqbIBvNbR", "customParameters": {"cU7z56hvDaSIChGk": {}, "u6gm1tuTKBNwhTZL": {}, "6vJfgPEZmTs18vZn": {}}, "description": "FstnJ5mnLz7c4rYn", "extOrderNo": "urB4du28xKiygvn2", "extUserId": "QBdHQt8RwdG0MnCL", "itemType": "LOOTBOX", "language": "Ml_IX", "metadata": {"vHcRCMFbd8VDJQUN": "NivS5r4NDhqj2sHH", "7hGbYOjo5zLgQb3h": "A8P6XcQUNHo5ZFnd", "tlgufbSdQgTPPO9g": "iI7gI536KVAx0UzI"}, "notifyUrl": "c4Ou1SpoEwl9NhPb", "omitNotification": false, "platform": "8Xryw8bfE6VA6HEv", "price": 33, "recurringPaymentOrderNo": "Gahhtxfa1XwrrRME", "region": "WbPuYtBYRa3zvDFL", "returnUrl": "gLp1g9EhVfDOcOmH", "sandbox": false, "sku": "PVoTCRV5enPlVeOc", "subscriptionId": "8uDGuA9ZVtPuyxsP", "title": "GoUCgc3BsZJVlVle"}' \
    'wocIRWjmJ81aRTbD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'CreateUserPaymentOrder' test.out

#- 320 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "oFbYLVqxK4NVV4KP"}' \
    'vi1IDd9h3DkrqAqS' \
    'qczq4VIqU80fLtA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'RefundUserPaymentOrder' test.out

#- 321 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'Ei7lNOS1nzf1JGU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetUserPlatformAccountClosureHistories' test.out

#- 322 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "AqSFsHZyeSTGysSt", "orderNo": "op5Pu3KNnlg5aQvt"}' \
    'ZqOqyYqukNu3IiEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'ApplyUserRedemption' test.out

#- 323 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"eAhwgfo77M8FJYRh": {}, "M0dJBA4b3QbH3tCV": {}, "fHKGFiQvPyj1FCk4": {}}, "reason": "QM8cZueXeYkC0oo7", "requestId": "aThH67UFGXrkXmmc", "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "PEkmK5ePPaacnQTu", "namespace": "Uibmiz8AhOGRIwwo"}, "entitlement": {"entitlementId": "9w06X6XzJiljntx5"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "SAxNBchtcaaoKZYk", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 16, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "blYxb89S0lysrMEi", "namespace": "fhjrwrJGqlmyy5EA"}, "entitlement": {"entitlementId": "tMaJvnkbpELCCQEX"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "DlAjoDECQ1ALpc5H", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 57, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "7qSiyUPY0Gnwcv8N", "namespace": "FIJFlyo9htDZjjGZ"}, "entitlement": {"entitlementId": "zNcLBzqSh3UQrHYl"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "Fx0rb4eSExhChscw", "itemIdentityType": "ITEM_ID", "origin": "System"}, "quantity": 40, "type": "ITEM"}], "source": "OTHER", "transactionId": "pejiRuUjCpBUL68K"}' \
    'LWODgQ2gkEKZZQfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'DoRevocation' test.out

#- 324 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "QJPF97t3thMfA2px", "payload": {"Z7ocAtgWGRZGmCEL": {}, "7IaqoDDiQ322lITG": {}, "dQLjygzdLTAC4I9f": {}}, "scid": "qjfISERaDf2LdzL9", "sessionTemplateName": "gMSge48h6WQOLVIm"}' \
    'JDNd0LTI6thfWyUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'RegisterXblSessions' test.out

#- 325 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'gXL1FOiDEhOn3KuR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'QueryUserSubscriptions' test.out

#- 326 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'xgkDm8ALwZabFzMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'GetUserSubscriptionActivities' test.out

#- 327 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 73, "itemId": "MK3ybnM1cQEihWjW", "language": "NwYN6xeNeZMtT7f2", "reason": "d2NhlIgGSvbXe1Hy", "region": "w3mylk3Hwg4Wtj5w", "source": "R9o07ypJFcZroi0Q"}' \
    'eG6cD8trKjrFSu4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PlatformSubscribeSubscription' test.out

#- 328 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'Oj7pBAbAKLICuRvK' \
    'GIR3uSMSyy1zY8Vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 329 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'Zd3qEIVQCbFYV3Nu' \
    'JgscT8dY4nux3S39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetUserSubscription' test.out

#- 330 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'sGE4zXVkI5AV7Af2' \
    'Tu32ZzATykI3Y8sp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'DeleteUserSubscription' test.out

#- 331 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": true, "reason": "uXCCJSaYmbf4tEBM"}' \
    'WAIsbPmXPNCh5Rfq' \
    '2UC1TCPCsq2BAEzR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CancelSubscription' test.out

#- 332 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 1, "reason": "1K6FfhGrYgU3tXTm"}' \
    'ZUKau7dzs6uA891l' \
    'cyZTXiAJVwzchoAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'GrantDaysToSubscription' test.out

#- 333 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'ehdYvksiAtxe6FuX' \
    'v7wMnItLay1ITOwq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GetUserSubscriptionBillingHistories' test.out

#- 334 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "gFDt8J1sETgOrOLZ"}, "authorisedTime": "1995-01-05T00:00:00Z", "chargebackReversedTime": "1997-12-09T00:00:00Z", "chargebackTime": "1993-02-13T00:00:00Z", "chargedTime": "1980-07-26T00:00:00Z", "createdTime": "1975-01-17T00:00:00Z", "currency": {"currencyCode": "B7kt11ORM1E26jRo", "currencySymbol": "x5zjnyjrUk4JAORZ", "currencyType": "REAL", "decimals": 7, "namespace": "kticJyIfLP3Q4SvS"}, "customParameters": {"mMtkqbFFNrsD4cYw": {}, "TyG7sUevPhkYV72N": {}, "58lwa3vXLwnFGnmL": {}}, "extOrderNo": "jqORwHyI3QRLhTWO", "extTxId": "cA2kF7G3yINinZ8Q", "extUserId": "rU6nMGhT5oddK2ch", "issuedAt": "1978-03-28T00:00:00Z", "metadata": {"Qw6dRB9aYleh3D2r": "0PGvO0IGH5aAxTCb", "wpHq5b9TYQLU6VNG": "YuzawgheBGV6FopC", "asHzSLbZZFVIz8Ax": "h7D6vDwgTWzfQZmZ"}, "namespace": "cPHcdeyMGra3yLwQ", "nonceStr": "HFxeaeIREKfKrgrQ", "paymentData": {"discountAmount": 2, "discountCode": "5KQHhwB99zMKOwz2", "subtotalPrice": 24, "tax": 75, "totalPrice": 62}, "paymentMethod": "AvkSzld2vfGrbc2j", "paymentMethodFee": 86, "paymentOrderNo": "DenMHvCJxPolhQom", "paymentProvider": "CHECKOUT", "paymentProviderFee": 26, "paymentStationUrl": "BGEe1V7Qe1VtpXfK", "price": 35, "refundedTime": "1994-08-07T00:00:00Z", "salesTax": 95, "sandbox": false, "sku": "9BL1BmvNwKXwiUQ1", "status": "REFUND_FAILED", "statusReason": "kIKiuKPVqNdfcbar", "subscriptionId": "mjmzkYQMLffgy1mp", "subtotalPrice": 6, "targetNamespace": "LjymTcNfNb4CIiJp", "targetUserId": "9P8xb23hdj17CLEa", "tax": 77, "totalPrice": 87, "totalTax": 32, "txEndTime": "1971-06-04T00:00:00Z", "type": "wnDkDw7Zrilk8Q80", "userId": "3RjC4wycgOIphhyd", "vat": 95}' \
    'Z7NEwrSsI3cSyJGE' \
    'sS9JnHfbeKOjYbpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'ProcessUserSubscriptionNotification' test.out

#- 335 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 44, "orderNo": "tOlW5QYRcQcxJjxg"}' \
    'x0It94BuLjZOmtY6' \
    'jje5osrYAf28mqvM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AcquireUserTicket' test.out

#- 336 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    '4LzAMy18Az6wAqGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'QueryUserCurrencyWallets' test.out

#- 337 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 93, "balanceOrigin": "GooglePlay", "balanceSource": "EXPIRATION", "metadata": {"FMUOsM2D6XBEfj5F": {}, "BqjqhaVBjVf2bpiM": {}, "DOiSWOpn2CnqA45F": {}}, "reason": "ZIkMYCCydNQhgapq"}' \
    'GnYl698VRGqR2jdN' \
    '2MQUBknTnbrD6I10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'DebitUserWalletByCurrencyCode' test.out

#- 338 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'HAKBM66Ig4h5oxaA' \
    '4ecsKGNruoLw9nJk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'ListUserCurrencyTransactions' test.out

#- 339 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 62, "debitBalanceSource": "TRADE", "metadata": {"d0eeHTKcUcujMld5": {}, "XM0y0hA8uAIGJlt6": {}, "gj5YD5232JusteSb": {}}, "reason": "6Rq9qeFktXeu9Xij", "walletPlatform": "Steam"}' \
    'eaHQK6btDxqspEHx' \
    'J7HIZTmr9S9JzIoT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'CheckBalance' test.out

#- 340 CheckWallet
eval_tap 0 340 'CheckWallet # SKIP deprecated' test.out

#- 341 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 94, "expireAt": "1995-10-16T00:00:00Z", "metadata": {"KTR2Z9P66amF5l35": {}, "onaRK2kOt01My99N": {}, "zxfq4jTsNihBMEN4": {}}, "origin": "Epic", "reason": "5p7F8iN9R9kmB5pd", "source": "CONSUME_ENTITLEMENT"}' \
    'cZeNhZq7LKZkGycl' \
    '5oKG2FV9jHnWg7dx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'CreditUserWallet' test.out

#- 342 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 83, "debitBalanceSource": "PAYMENT", "metadata": {"ilOpoouKkx1qj85b": {}, "RrVwuOnqEPcdhXj2": {}, "14NDtW9jjIhrEmkN": {}}, "reason": "YBheQNR4zCS89Kqv", "walletPlatform": "Epic"}' \
    '7qyrdGdWMrPtZSPU' \
    'CJfnrl3yUawIX1hR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'DebitByWalletPlatform' test.out

#- 343 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 72, "metadata": {"zQBWPVD8fgTZBggd": {}, "Aj0B017EuJVu3uC3": {}, "14IH9MRg40yRzHF2": {}}, "walletPlatform": "Oculus"}' \
    'TkHqFomi9qMKO7v1' \
    '1iTPPXFNeZn2vRR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PayWithUserWallet' test.out

#- 344 GetUserWallet
eval_tap 0 344 'GetUserWallet # SKIP deprecated' test.out

#- 345 DebitUserWallet
eval_tap 0 345 'DebitUserWallet # SKIP deprecated' test.out

#- 346 DisableUserWallet
eval_tap 0 346 'DisableUserWallet # SKIP deprecated' test.out

#- 347 EnableUserWallet
eval_tap 0 347 'EnableUserWallet # SKIP deprecated' test.out

#- 348 ListUserWalletTransactions
eval_tap 0 348 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 349 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'ListViews' test.out

#- 350 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 55, "localizations": {"WgcSMiL3ADcBZC1b": {"description": "1ulnqTNaXTLYftRv", "localExt": {"PlpA8xbm6EVV6Htb": {}, "TcLIMpXtDVIHpxYs": {}, "kyOZ9GTOpAmyjwPm": {}}, "longDescription": "zYZp1Cer18YeUzcR", "title": "emWJu2baHMsMOQdo"}, "VhxkHAGG58la2mBm": {"description": "EsorfAQM1flkB5I8", "localExt": {"W0zaXLBbr6dEvFXU": {}, "rJEtc0XkTqZCdBgc": {}, "QYrtBw2f7cfdtSv2": {}}, "longDescription": "P9Gxo0lrSb1DeSFz", "title": "0rREHwWGWNIB0y0j"}, "X59yF5X1xzeylWJr": {"description": "NvKlRFeIOal5139d", "localExt": {"s1poYn2c28hYjUXT": {}, "Ny1fFdZFpgDZL5cg": {}, "PFdfkkemcXh4pNS6": {}}, "longDescription": "sh71nsTcYAqRmpQJ", "title": "4iKsMRzrkq6bbxRO"}}, "name": "X48x3z6oqsbyJVZi"}' \
    'nLIVPccaYI6l6fKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'CreateView' test.out

#- 351 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'VA93qreneWTQ0fb8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'GetView' test.out

#- 352 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 58, "localizations": {"XA8TH045L53XwwLU": {"description": "eWVf3gL2yczZXxds", "localExt": {"LxTWwVPr4U5NXmKy": {}, "OdqZZYELSAPxBDIE": {}, "PT2GAxOHInufNkRy": {}}, "longDescription": "dUBWF1Nh9i59vuR6", "title": "CcSzvItwdqe2s7ff"}, "Spc1OxKg4Uf3g4nl": {"description": "TA2frzx3vb2Yn8hN", "localExt": {"VujI5u1ivKmyBtn9": {}, "fNT1GF6M2zSlbUz3": {}, "WBHpFxzpkrOzs73j": {}}, "longDescription": "VKJexWAazbTZ8xcQ", "title": "ZYsCETX7eZJ4NO0f"}, "jNEPoyNa1H6pgh7v": {"description": "mRlxBjIqeBpbdOgQ", "localExt": {"ElalEbCZEVCPO4CP": {}, "frYjqZmUkz3Ex6g0": {}, "nu0nDYcjNC6mnTmE": {}}, "longDescription": "kvGygUoYZDyX1Xgj", "title": "jnrUVMhDfw4eyyzx"}}, "name": "2XNh0EY35JVEQoV6"}' \
    '8grUjl9Qae3pK8C8' \
    'CdtTw2J5ZQEu9BAN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'UpdateView' test.out

#- 353 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'Vmy4KLyKRCKGC9EJ' \
    '56TgtZfrBCM5NKhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'DeleteView' test.out

#- 354 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'GetWalletConfig' test.out

#- 355 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'UpdateWalletConfig' test.out

#- 356 QueryWallets
eval_tap 0 356 'QueryWallets # SKIP deprecated' test.out

#- 357 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 83, "expireAt": "1994-08-25T00:00:00Z", "metadata": {"1B5Rkbc6yUtoHNPA": {}, "PLpeC92ROlmtwrNV": {}, "p1hq3dVtu3cDHRPM": {}}, "origin": "Twitch", "reason": "ARmen8aoqlm2gZZI", "source": "PURCHASE"}, "currencyCode": "rYQJhGB6o1O006Ql", "userIds": ["zwNpwlkXg5rRaOG4", "0vwmux5X7eWoUz63", "g5ldLNvDsFRxvIWP"]}, {"creditRequest": {"amount": 17, "expireAt": "1971-08-31T00:00:00Z", "metadata": {"vk8lWCQSbPCAcqI3": {}, "5Kja3aQgfShTgH7Q": {}, "U5U5VKMgof3sbQFx": {}}, "origin": "Playstation", "reason": "poAiVGM1Z1aMlYKe", "source": "SELL_BACK"}, "currencyCode": "2AB5OYFvqKEDfQUO", "userIds": ["StrsDUMYOj7smPuH", "T5Zg2G1BWvZyqW6C", "5BZrTsNJRR5uMT5l"]}, {"creditRequest": {"amount": 71, "expireAt": "1997-10-01T00:00:00Z", "metadata": {"xPns7F4XRUTiU2cK": {}, "n41r9o0qDqNegcfI": {}, "RO7qY6MNSv6eRNd4": {}}, "origin": "System", "reason": "jVZjOjrIUNPjErpm", "source": "ACHIEVEMENT"}, "currencyCode": "IdTzoKekJyqR0Oku", "userIds": ["udBwFtKhDkRzY1NT", "xp2PHIttdH5OoXEL", "TWWM1JAu58gWdNz0"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'BulkCredit' test.out

#- 358 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "1xP0tQEooU046EL2", "request": {"allowOverdraft": true, "amount": 66, "balanceOrigin": "Xbox", "balanceSource": "EXPIRATION", "metadata": {"uu1OPm9hwPfrlE7x": {}, "qyfwWmTGhwyWJ7EA": {}, "B7kGxNwO0Z3aq4k3": {}}, "reason": "vORHgbQI9EqFrhz8"}, "userIds": ["72allb2jaRoKBxDc", "ndYM9mz3tE3VsEwk", "afcV7jvya0krMPGa"]}, {"currencyCode": "fhhKkgPI2HTPdp4v", "request": {"allowOverdraft": false, "amount": 72, "balanceOrigin": "Playstation", "balanceSource": "ORDER_REVOCATION", "metadata": {"K3mIRHA74vLT0RK9": {}, "5W5F4wbgjwLQ0g8w": {}, "HSHjSLr6q5SdMiLP": {}}, "reason": "ibZ6RvJ4FpirWyaX"}, "userIds": ["Sy63UIiICbL0NSbX", "6PT6eXj6a4a2T55J", "4XU6HXjJ8oZkH55s"]}, {"currencyCode": "YXl80IXa09qvdnZb", "request": {"allowOverdraft": false, "amount": 74, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"SIJAuvbRoyVKQWhR": {}, "Ca4MeqaWAGntKi5V": {}, "cfdJHSQ99MzsmCz9": {}}, "reason": "csPD3mAixnTRCntY"}, "userIds": ["AOhAPz9lCMI8Jae9", "r4iEhlcmn3nMM88Z", "6k6wPIbIRIjiYuku"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'BulkDebit' test.out

#- 359 GetWallet
eval_tap 0 359 'GetWallet # SKIP deprecated' test.out

#- 360 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'HroUTLxsZkcJy594' \
    'BukgYrUkqKLhOtCo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncOrders' test.out

#- 361 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["MjjcsvkUgpfrF2pD", "BhsviMDzvKxm5Avw", "hDq9hlVwavR2tWfl"], "apiKey": "zm98aj22sDOpjchR", "authoriseAsCapture": false, "blockedPaymentMethods": ["HstZmSBos9B4FBRg", "TZf5xSoV4NMrEB2t", "Jwa8TyyPnCtNFzlK"], "clientKey": "slVxaomke2UPriXG", "dropInSettings": "Zvs3NmW1Oq88IVml", "liveEndpointUrlPrefix": "OYuPb1aUarkc4H54", "merchantAccount": "D1OSJ3cWczEEGO3c", "notificationHmacKey": "34uFmlM5vFocITDT", "notificationPassword": "P5pBOko0gsrX5YmI", "notificationUsername": "HaEjuL7g0PIjLnAo", "returnUrl": "NjzCHCUKdVx6o2rd", "settings": "siMHF2QEzGFMhZeU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'TestAdyenConfig' test.out

#- 362 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "FOp0vi3HGFkQMxct", "privateKey": "UgK5E7xDyzd8ui7G", "publicKey": "q6HS2mGz4ijW6dYj", "returnUrl": "3vyoAh76kCLT28Eq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'TestAliPayConfig' test.out

#- 363 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "ooASK80uHs4x776R", "secretKey": "ICQMUv3sTgdlBfaa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'TestCheckoutConfig' test.out

#- 364 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'DebugMatchedPaymentMerchantConfig' test.out

#- 365 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "TSjUYSCaN626bkQh", "webhookSecretKey": "tz2puGKoDDkN6vSK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'TestNeonPayConfig' test.out

#- 366 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "5KlUCrFmKMrNHOU2", "clientSecret": "5Bqtu3c7SadVYWuZ", "returnUrl": "Yb5azP3Bn1T6t1Gt", "webHookId": "c06fMGRKwhR0ZPvw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestPayPalConfig' test.out

#- 367 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["plWQITcYa8Pk58cd", "H7UdivafvHNmSOYN", "lojMWEfrT6ZPygSk"], "publishableKey": "fhXyykclGUJ6YBDI", "secretKey": "6H0BLhMQNcUFUuoI", "webhookSecret": "PjHtjlsAVWEExJQv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'TestStripeConfig' test.out

#- 368 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "JmELMA89ixWjkF5J", "key": "wpR9Zt9Phwk7ORkQ", "mchid": "cyu5lxJ66HGJ8Ih3", "returnUrl": "lT8pzoI46PcpuwiY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestWxPayConfig' test.out

#- 369 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "C0cysoxUGXNjS5qu", "flowCompletionUrl": "Hgrhtzk9E9cWWrZX", "merchantId": 1, "projectId": 89, "projectSecretKey": "2EG94tgrGpAyKwLI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'TestXsollaConfig' test.out

#- 370 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'bU47jEqDJTlFzhUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentMerchantConfig1' test.out

#- 371 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["ELJwcO8QnqAnLORg", "2DXpK4Oh0DUc9D8r", "ncloMb1yETgQxGUE"], "apiKey": "wv8hzsmReJ5mzZVa", "authoriseAsCapture": false, "blockedPaymentMethods": ["dmubH0qAuhWzVV19", "I9lRlaYwp4MNvBgT", "09Pvx7f7SN0lAsIr"], "clientKey": "tTkAPhRsCrtV0KHq", "dropInSettings": "6VsfzrlaPzFVXIZH", "liveEndpointUrlPrefix": "0z8HSYc2706OUmcs", "merchantAccount": "zJVLPq9854qsjR0a", "notificationHmacKey": "EzhzFlD1uglEn1Nw", "notificationPassword": "YqSpioGwh9SWxNzQ", "notificationUsername": "3DzIEearFrFMIeo9", "returnUrl": "PYRTxSprB0BtuiJE", "settings": "qmbaRx6F3iux9udW"}' \
    'aDYHSt1EEifnuSTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'UpdateAdyenConfig' test.out

#- 372 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'CN8i2tS7rAMAxwXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'TestAdyenConfigById' test.out

#- 373 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "iaHCNLmnlRPStXhq", "privateKey": "g4XeI32fETDPQVe0", "publicKey": "26c9WrAxnE6M2ryx", "returnUrl": "qcxkHbchAPo9rtjQ"}' \
    '5kvwn03vGAW804TW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'UpdateAliPayConfig' test.out

#- 374 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'UV2HAG9BYa4uwQ0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'TestAliPayConfigById' test.out

#- 375 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "4tGUp00rMLZ1eTfm", "secretKey": "UwkGYQeInkHcPjNE"}' \
    'n2se1yYqxystC5Yd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'UpdateCheckoutConfig' test.out

#- 376 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'tXrM6vcndGdt9cB5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'TestCheckoutConfigById' test.out

#- 377 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "Ef9piY1WqrjKrPYR", "webhookSecretKey": "RVlqfGGWhPklPuT3"}' \
    'em9Iz42YFoIyM4jQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'UpdateNeonPayConfig' test.out

#- 378 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    '307TKpWz4d2uiESs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'TestNeonPayConfigById' test.out

#- 379 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "0ypsuzcbl4Dtn32t", "clientSecret": "NBisbkvUfmhkAHdG", "returnUrl": "DOTSucllEURtdq3O", "webHookId": "6BR25zA3GaAcY14l"}' \
    'wQ2mYznYkMiU0vVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'UpdatePayPalConfig' test.out

#- 380 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'eF40rVDDwsRfL40P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'TestPayPalConfigById' test.out

#- 381 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["OY5Hn3skPtxMwqAH", "jAkfGd2BO7RPYaAC", "BMfO0XbcSowirO9a"], "publishableKey": "d7UJNTw4TVlSOA7h", "secretKey": "qkUzpJrfvCl5rW53", "webhookSecret": "0yMjnntV6lxz46ln"}' \
    'Mr9kgHzpU1KgX7tx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'UpdateStripeConfig' test.out

#- 382 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'YFVqqFEhELz081Q4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'TestStripeConfigById' test.out

#- 383 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "jTsZOfifLFOXzxoL", "key": "gAvBNsJ2ndqYrqlR", "mchid": "22SxGw0BBGpL3uAi", "returnUrl": "gOFar5VeA5QE4kXQ"}' \
    'FZRL6YQzBY5q2zpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'UpdateWxPayConfig' test.out

#- 384 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'hS4nABQWx7hXtj4E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfigCert' test.out

#- 385 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'n87TJ2E3gIQhGe5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'TestWxPayConfigById' test.out

#- 386 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "DctKW2dDMadFf2Hv", "flowCompletionUrl": "nNcdQko24IrllBLg", "merchantId": 90, "projectId": 72, "projectSecretKey": "bKXSWc1FjcdL1VlS"}' \
    'gxKddpVjWORqaRai' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'UpdateXsollaConfig' test.out

#- 387 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Ke3J6MjaTVKbc6MV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'TestXsollaConfigById' test.out

#- 388 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    'EBsgRIweAJUroJ8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'UpdateXsollaUIConfig' test.out

#- 389 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'QueryPaymentProviderConfig' test.out

#- 390 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "ZayKnRlYPxuMiEWl", "region": "2YYuziEAHUJuW7Y2", "sandboxTaxJarApiToken": "KJEH6UuvOmu2ptkK", "specials": ["ADYEN", "WALLET", "STRIPE"], "taxJarApiToken": "GiWFWBkFOuRT7ull", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'CreatePaymentProviderConfig' test.out

#- 391 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'GetAggregatePaymentProviders' test.out

#- 392 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'DebugMatchedPaymentProviderConfig' test.out

#- 393 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'GetSpecialPaymentProviders' test.out

#- 394 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "STRIPE", "namespace": "1vBxBCUBoebiWj66", "region": "DdvqlwMH6jkWzxyW", "sandboxTaxJarApiToken": "SduldWnWT6iqbevl", "specials": ["STRIPE", "ALIPAY", "ALIPAY"], "taxJarApiToken": "oHqAWl82R5St1JUU", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    'HeD3I494uw3RdIA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'UpdatePaymentProviderConfig' test.out

#- 395 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'wJ5cEseHkDEsLlMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'DeletePaymentProviderConfig' test.out

#- 396 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'GetPaymentTaxConfig' test.out

#- 397 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "livuvvLVhp4pvZaX", "taxJarApiToken": "uJcgNDwcHbteulJ0", "taxJarEnabled": true, "taxJarProductCodesMapping": {"zCHyQRSjODCVkXOS": "EqmrC1rquwAfUV3h", "QSgZIsLFKNLEWSf3": "xcBSJmVJzcCB0Zx2", "kIBmEY9AGikaZJ2f": "la7ViPnPIspBwL7F"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'UpdatePaymentTaxConfig' test.out

#- 398 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'LtMU7AARIZojppBu' \
    'CblNaT5zrESuLoU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SyncPaymentOrders' test.out

#- 399 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetRootCategories' test.out

#- 400 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'DownloadCategories' test.out

#- 401 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'WFfjqhTf020WVESn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetCategory' test.out

#- 402 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '3Lq3vc3ONzvBgKDP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetChildCategories' test.out

#- 403 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'EX7ZirJaKrszETGu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetDescendantCategories' test.out

#- 404 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicListCurrencies' test.out

#- 405 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'GeDLCDurableRewardShortMap' test.out

#- 406 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GetAppleConfigVersion' test.out

#- 407 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'GetIAPItemMapping' test.out

#- 408 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'ESPDCrsw8wGhpJWY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetItemByAppId' test.out

#- 409 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicQueryItems' test.out

#- 410 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'gTBMAqnV7TlTDpCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetItemBySku' test.out

#- 411 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    's9eLzVbQmMiR5z2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetEstimatedPrice' test.out

#- 412 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'AUSTeMo4h6vddaV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicBulkGetItems' test.out

#- 413 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["tlGmSltmTF1Rc4FR", "D9FCFOkoXzSvPYqC", "nSDUDcwHGbx7ME3d"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicValidateItemPurchaseCondition' test.out

#- 414 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'wQ3jZw3dvKpTh9t3' \
    'eP83oVzLj603LYJG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicSearchItems' test.out

#- 415 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '09eH9Vq6reV8sJen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetApp' test.out

#- 416 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'mheK5KKqE1aHxZgS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetItemDynamicData' test.out

#- 417 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '8uJAsbAxWxy80okx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItem' test.out

#- 418 GetPaymentCustomization
eval_tap 0 418 'GetPaymentCustomization # SKIP deprecated' test.out

#- 419 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "aYaNSXzxd2oRSinj", "successUrl": "IKU2N42M5XJnyM5T"}, "paymentOrderNo": "vM5NJ9UFoefZdeND", "paymentProvider": "WXPAY", "returnUrl": "anP0VcMDpu1IFvz6", "ui": "lS0e11XX6rxljZ4a", "zipCode": "KEWT3it8CuVPPqzB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGetPaymentUrl' test.out

#- 420 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '1bxGCZTRsbLMecwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentMethods' test.out

#- 421 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'kE2St3jReFAEQ1wU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicGetUnpaidPaymentOrder' test.out

#- 422 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "cmmNn9QvtiE6T5Ro"}' \
    '5OB4S56HA4d8Wj62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'Pay' test.out

#- 423 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'EGWzEbs46rc22tQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicCheckPaymentOrderPaidStatus' test.out

#- 424 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'OyFrUNQTGPDgO1DY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'GetPaymentPublicConfig' test.out

#- 425 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'PpkUsIxAMvQ0TYyi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetQRCode' test.out

#- 426 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'oYSsqvixE24A0MBZ' \
    'ILiVJpRPjbkDPIc5' \
    'NEONPAY' \
    'KxCJv2JADKAlbiwv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicNormalizePaymentReturnUrl' test.out

#- 427 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'SCh7gGsouhPkDuF7' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'GetPaymentTaxValue' test.out

#- 428 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'D6hehEvadSH1guIX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'GetRewardByCode' test.out

#- 429 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'QueryRewards1' test.out

#- 430 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'pIMMb5aCPbxlBpLP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'GetReward1' test.out

#- 431 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicListStores' test.out

#- 432 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicExistsAnyMyActiveEntitlement' test.out

#- 433 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'zm0ZpTtsmzJtuOWK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 434 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'ZOaSMJHAxVRHDzHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 435 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'HJ0bdnZomYJoJJTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 436 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetEntitlementOwnershipToken' test.out

#- 437 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "xootNzMPSXZiLgCh", "language": "MmF-cz", "region": "piOV9NIi9V270K70"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'SyncTwitchDropsEntitlement' test.out

#- 438 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'e3tmMl0aJwJFaCvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyWallet' test.out

#- 439 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'e5OzI8XNrSx9JCxN' \
    --body '{"epicGamesJwtToken": "4prJ1YNwelndOCI9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'SyncEpicGameDLC' test.out

#- 440 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'YnUiShlx9Pk08ti5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'SyncOculusDLC' test.out

#- 441 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'dm4vsmWwxeV5ju6l' \
    --body '{"serviceLabel": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicSyncPsnDlcInventory' test.out

#- 442 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'XD8kjryYdmc2XymI' \
    --body '{"serviceLabels": [2, 84, 50]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 443 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "jRrxucZTOtfIlJrM", "steamId": "OPwdUCtzH0oI7IMo"}' \
    '6jYsbXIs1j2kdfY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'SyncSteamDLC' test.out

#- 444 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'jVoPTTfSopAH3k7W' \
    --body '{"xstsToken": "RbBnExLSlEBkIhkc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'SyncXboxDLC' test.out

#- 445 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'Ysdlko7aPaqrCwlw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicQueryUserEntitlements' test.out

#- 446 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'xAYSodwJnbozMWXk' \
    '0IafEeZiiyd7fv9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicGetUserAppEntitlementByAppId' test.out

#- 447 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'MDJjJPbrYcp304cH' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicQueryUserEntitlementsByAppType' test.out

#- 448 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'g0qaRNKlYRZvjD4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicGetUserEntitlementsByIds' test.out

#- 449 PublicGetUserEntitlementByItemId
eval_tap 0 449 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 450 PublicGetUserEntitlementBySku
eval_tap 0 450 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 451 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'QB0YyrKNt7vK3ElL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 451 'PublicUserEntitlementHistory' test.out

#- 452 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'q6qbXSAmGmJ8hHaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicExistsAnyUserActiveEntitlement' test.out

#- 453 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'pdFCVQ33tE9ZMZ7d' \
    'DUb3xQHAKaroEL6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 454 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'cEsfkqADxDJekvCk' \
    'zUk7CFpTd1Fy4gal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'HYLWoM0gqpktaqz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 456 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'Riz5qKt4QbzYc1vS' \
    'zFONRBPloB0ASE8U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 457 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'Jr7JwsZBUsRaw0PY' \
    '6G9sLHzVEFhnhT9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlement' test.out

#- 458 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["AQdPnACAmtiWRzvY", "JUsYMz1jDEdxhs9F", "xl7ZjEYGeuqo7IFv"], "requestId": "ww79F27fof6S1Reh", "useCount": 17}' \
    'qlnvafBWIGruii3Q' \
    'dmRaNDlR1T3oWQcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicConsumeUserEntitlement' test.out

#- 459 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "NhwdIRZ2k23rtJU0", "useCount": 93}' \
    'ungysf4SyQNWypAr' \
    'gnNk4jR91W8b8dxK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicSellUserEntitlement' test.out

#- 460 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 57}' \
    'EIBJIKoubLJP5UIf' \
    'hGfCHQ5GTdjvw8KQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicSplitUserEntitlement' test.out

#- 461 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "Z00gJM1CfnjdHJX3", "metadata": {"operationSource": "INVENTORY"}, "useCount": 58}' \
    'TZ6mO1Q9vB9Rk5lE' \
    '0jBagsqbYaDkTPsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicTransferUserEntitlement' test.out

#- 462 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "hfQ2CAJpaYZ5XmkL", "language": "Fu_xzvJ-460", "region": "OkNSeTuk5fLc0rov"}' \
    'Y832Umv7u1YlkQNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicRedeemCode' test.out

#- 463 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": true, "language": "lHa-RsDA", "productId": "m34YuUk280BxAxex", "receiptData": "ZB4EErArsCARmVlN", "region": "fne35Jx8S9YCiABO", "transactionId": "EkZ1hv7zx2tjZUmB"}' \
    '7W0EhLgAiPA3yIE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicFulfillAppleIAPItem' test.out

#- 464 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'iRHDV6KTBcyqAgjL' \
    --body '{"epicGamesJwtToken": "hYxqBLkJqCtqM0Ox"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'SyncEpicGamesInventory' test.out

#- 465 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": true, "language": "nAl_gGWW", "orderId": "Nk1GKlklpO9ogE1L", "packageName": "t4TvdOQZC7HKktfQ", "productId": "6izlwJt4IiNBTayf", "purchaseTime": 36, "purchaseToken": "gpl5I3N3i0llxVU5", "region": "WZTOvW4MiVum8Huu", "subscriptionPurchase": false}' \
    'z88R6CZzwdLFexMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'PublicFulfillGoogleIAPItem' test.out

#- 466 SyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-sync-oculus-subscriptions' \
    'FUBv4AFzMvefUJf0' \
    --body '{"skus": ["82K6GVUNdcW7dNRH", "WkAYwtCmTIookYhY", "fhFqmfOX2gTbFgW9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'SyncOculusSubscriptions' test.out

#- 467 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'MW8EHRDKkx4iquJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusConsumableEntitlements' test.out

#- 468 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'nPR6izcot8gfvyFF' \
    --body '{"currencyCode": "GnP0iW9zzvYAiICm", "price": 0.04396580796600269, "productId": "uUGrDkQ9ODsNGS0v", "serviceLabel": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'PublicReconcilePlayStationStore' test.out

#- 469 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "PBUudpBxjdBKusUy", "price": 0.9588708118055058, "productId": "JasypzINO8hMgCgu", "serviceLabels": [38, 83, 62]}' \
    'NK6cJUj06aJReifO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 470 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "1oQKqILibtG6MbnP", "currencyCode": "79hl3Kb1CkI9RZfa", "language": "Lsbq-HkQD", "price": 0.6170872975155505, "productId": "fYlNV4JpSajrb3kP", "region": "qQwgme45avoS9lAa", "steamId": "p4MA8Sr2sPgHtfv4"}' \
    'c99ySk8XEGR8Q2Ob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'SyncSteamInventory' test.out

#- 471 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'tJj6xqptF3qXZXFq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamAbnormalTransaction' test.out

#- 472 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "aZPqlvbjyBz6AbtY"}' \
    'b7GaKj6QP6jhS3RZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamIAPByTransaction' test.out

#- 473 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'TWITCH' \
    'D9Vp8jcEx9slNViy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'PublicQueryUserThirdPartySubscription' test.out

#- 474 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "Qfbfwj7AXqGTTwPl", "language": "Ys-sPiB", "region": "a65HnETCgoe1sa8B"}' \
    '0Wy1wLXiwamQkC3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'SyncTwitchDropsEntitlement1' test.out

#- 475 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'HWOJXJFWjPFtofaa' \
    --body '{"currencyCode": "D5XQnbIpgGJCFSSa", "price": 0.6156392667997975, "productId": "4EA2hzRRHPb1WjOy", "xstsToken": "cy9wK03ss0DpALdN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'SyncXboxInventory' test.out

#- 476 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'qGtffV23bTj5fvbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'PublicQueryUserOrders' test.out

#- 477 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "7CdTSylDlBSQ8T9c", "discountCodes": ["W5VSPpmsq5pBRP2V", "tK5C5AjugsLKAHvY", "9Pdy78izwWuKaQEL"], "discountedPrice": 92, "ext": {"MsYOT4iaAzzQv6dC": {}, "4l6pF14rXVk3pi1A": {}, "xKacdaPDd2UTsBDW": {}}, "itemId": "WpuCelJqAeacALBF", "language": "Kxw_RxqM", "price": 4, "quantity": 93, "region": "jA9fIVaDHsNSuiyu", "returnUrl": "WAQgjBYp2upgfzoa", "sectionId": "os4nV0ve8lbhLwTq"}' \
    'vNvYEmdP8MKMmlcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicCreateUserOrder' test.out

#- 478 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "lTEJd4MeOQo123k8", "discountCodes": ["N7k8RoScU4msp7Kf", "LkPRbTqCIkBN8S9W", "FuSrYGyaX5rzzzZ8"], "discountedPrice": 95, "itemId": "8QLiY5Ew7ynZyinD", "price": 52, "quantity": 13}' \
    'f4EFNw3l1H20kIgd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicPreviewOrderPrice' test.out

#- 479 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'vWRrj2HbxrH2qUlQ' \
    'L9SVt0r6OISUdbz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicGetUserOrder' test.out

#- 480 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '4CqewXTho2m2t6En' \
    'nnd32AoL6588D678' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicCancelUserOrder' test.out

#- 481 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '6cDyCn3mQRlpuV8P' \
    'upz5nXwPmV9H0Crv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicGetUserOrderHistories' test.out

#- 482 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'Fm6hRlAvsUyCkp4L' \
    'Q1knOdBuRM1a6eeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicDownloadUserOrderReceipt' test.out

#- 483 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    '5JeBM4vhgZDXkLmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicGetPaymentAccounts' test.out

#- 484 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'r0gaMfjouor3s7KF' \
    'paypal' \
    'PmA5Rj88sV0RXYFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicDeletePaymentAccount' test.out

#- 485 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'vT1R4mdfqaGZ5a5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicListActiveSections' test.out

#- 486 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'B2J1Ys7k6Dw0ChjJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'PublicQueryUserSubscriptions' test.out

#- 487 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "UyJb0uVwRHPtiuRb", "itemId": "Yj1PwLl7Af4hN6my", "language": "hUAq", "region": "hWkFhtyreG6njhiV", "returnUrl": "cNAyvQpITvPtfRlF", "source": "GzooTVPzZGzMArYj"}' \
    '7MCylZXT4sTumASf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 487 'PublicSubscribeSubscription' test.out

#- 488 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'zM1qZHCov8CgQak3' \
    'BNgyqIz8QyplfHPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 488 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 489 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '4SE7lbvYPPaRKhh6' \
    'uu1Uzg5H1m0iKgFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 489 'PublicGetUserSubscription' test.out

#- 490 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    '1bpo9V6Kx2b4k3LX' \
    'irzfiNHNxvy3KaeX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 490 'PublicChangeSubscriptionBillingAccount' test.out

#- 491 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "LAPgWT88UIPXJrkA"}' \
    'jbCtUBj8v9q93zGO' \
    '9v64M4PgxanynVrU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 491 'PublicCancelSubscription' test.out

#- 492 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'C62nbuvxdzMEqY7l' \
    'rl7jXlIVatp3quTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 492 'PublicGetUserSubscriptionBillingHistories' test.out

#- 493 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'ObvHUZnpdcdWJ589' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 493 'PublicListViews' test.out

#- 494 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'DzA4GDiLK0DhZ6R2' \
    'ay7YNd6PILn89NLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 494 'PublicGetWallet' test.out

#- 495 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'n0cwQvX86CBqamfi' \
    'BktYmdN0ac4MwATQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 495 'PublicListUserWalletTransactions' test.out

#- 496 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'PublicGetMyDLCContent' test.out

#- 497 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'QueryFulfillments' test.out

#- 498 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 498 'QueryItemsV2' test.out

#- 499 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 499 'ImportStore1' test.out

#- 500 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'XrsfFBgZSpK21XxS' \
    --body '{"itemIds": ["7RMp1XZlcf2LlA8O", "pKgNxX9RsRos2Mjd", "dPf3tEZB5npWjeI4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 500 'ExportStore1' test.out

#- 501 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "vT3YYjZirrK7Myt6", "entitlementOrigin": "Twitch", "metadata": {"bV07Fc7KykCP2Vgd": {}, "tXBAnkGLSUls4a5O": {}, "o3xy3WuYRCmJ9ikT": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "27S9anmGAxuvG75I", "namespace": "ZoOSBEPkCsSVPQLJ"}, "item": {"itemId": "zr0yk5mgDMxvajam", "itemName": "UPM6A22mG6EUXWvb", "itemSku": "X2Ob741VBjaA7kS8", "itemType": "yjV0k0qCcrgXW2Jo"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "zE7nXU5NMLRmqjp1", "namespace": "bNKs0oIX2FWwAZu7"}, "item": {"itemId": "CQvfGDL8KJQ5CMMM", "itemName": "8GHSZDnkSgOeS4Ly", "itemSku": "2V52vZLXDbFwKeNQ", "itemType": "HreOJtVnPaUZgopf"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "oihnGENwmZE2Y6cn", "namespace": "B6TB4lTdCXV7SS2U"}, "item": {"itemId": "qnPn6uD74zJiMpAE", "itemName": "WcMCdBrSqT6Q8Mh5", "itemSku": "eLZj89iiEh1Js9Tx", "itemType": "O1uvto2x8xh7o0O5"}, "quantity": 87, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "usrnZQ6Di19hapMB"}' \
    'L7mA8pzIWuaHemUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 501 'FulfillRewardsV2' test.out

#- 502 FulfillItems
eval_tap 0 502 'FulfillItems # SKIP deprecated' test.out

#- 503 RetryFulfillItems
eval_tap 0 503 'RetryFulfillItems # SKIP deprecated' test.out

#- 504 RevokeItems
eval_tap 0 504 'RevokeItems # SKIP deprecated' test.out

#- 505 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'NmofVeYCKv90aZrE' \
    --body '{"transactionId": "tNzjY9TnLYMU9mkB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 505 'V2PublicFulfillAppleIAPItem' test.out

#- 506 BulkFulfillItemsV3
$PYTHON -m $MODULE 'platform-bulk-fulfill-items-v3' \
    '[{"items": [{"duration": 55, "endDate": "1995-10-17T00:00:00Z", "entitlementCollectionId": "XA8My5opJd2eIiQF", "entitlementOrigin": "Other", "itemId": "jQN1XFBgFJHuVw1U", "itemSku": "zT8ZUhvXmhaxCaVI", "language": "WaO5ws4VAabgrzxR", "metadata": {"0O9NM0jTQgbW7wdt": {}, "0nyotZJdj18KpcWS": {}, "JunzEBsYUnMPXBSk": {}}, "orderNo": "WsvHyKxAes0CeOJh", "origin": "Epic", "quantity": 9, "region": "rRATXAZrveoYoV9E", "source": "REWARD", "startDate": "1985-07-20T00:00:00Z", "storeId": "2C7tkz8PIB7ku4Ie"}, {"duration": 81, "endDate": "1978-11-11T00:00:00Z", "entitlementCollectionId": "9EX4AnIlyxI2kpAg", "entitlementOrigin": "Oculus", "itemId": "uS9rsivU5O3EN6TC", "itemSku": "qiO4C3YSx59pdMpU", "language": "qpSwlr2lDxiBT3RG", "metadata": {"7qohlvuU5jMdLxOX": {}, "6OjBxxZWBcWJGToW": {}, "eabNweJ0Q9rgRlUo": {}}, "orderNo": "At7dx8uLYv5zxXDW", "origin": "IOS", "quantity": 76, "region": "bXOdu6nNgus6G5lq", "source": "PAYMENT", "startDate": "1982-03-13T00:00:00Z", "storeId": "3KZL0TrRyC3XkhYi"}, {"duration": 82, "endDate": "1992-01-02T00:00:00Z", "entitlementCollectionId": "DTHgKo1Ume28qF2m", "entitlementOrigin": "Playstation", "itemId": "ez7AaQK2Lr2GS58E", "itemSku": "ejIE8yJMhu1V386K", "language": "pa4Sw6WqDn9UVekc", "metadata": {"1LaRdOg4j95huDVD": {}, "cVlYzl6OIIl5U58y": {}, "y5VCCjfncHxVlyve": {}}, "orderNo": "cBowCGoQ1rRiTyBC", "origin": "Playstation", "quantity": 47, "region": "WEQiIPB8ofinOWPh", "source": "REDEEM_CODE", "startDate": "1995-06-29T00:00:00Z", "storeId": "xZM0msf6g9C6PXZ3"}], "transactionId": "hIkcizzwvhdQso4j"}, {"items": [{"duration": 10, "endDate": "1976-09-10T00:00:00Z", "entitlementCollectionId": "3drNn2UwM5M8OH4u", "entitlementOrigin": "GooglePlay", "itemId": "rFmi9psaT2gFDTAJ", "itemSku": "x3Rvl7yxpfbKwIxb", "language": "lqqikxKAipjSSC6N", "metadata": {"ooSHzb1KQwoJA4cQ": {}, "iqKZYHoMhrBu30Ll": {}, "JjMtRZA75in3Nqet": {}}, "orderNo": "zuPjo8jBalVK4vHE", "origin": "Playstation", "quantity": 89, "region": "SbCAO545uBfWEGOG", "source": "PAYMENT", "startDate": "1996-08-04T00:00:00Z", "storeId": "ligwVAq6p8DJ3g8Q"}, {"duration": 29, "endDate": "1993-05-15T00:00:00Z", "entitlementCollectionId": "VxtaP0HtBV05Z9V7", "entitlementOrigin": "Steam", "itemId": "2QqWwKTvsygMbM8O", "itemSku": "GqjqWNSllBqi8e8y", "language": "a9hFiSX5OusJbbMd", "metadata": {"8iwO1cw1yt5EG2vK": {}, "T2TRHOel8fCOCWrs": {}, "ZuxCTD503jksXXxH": {}}, "orderNo": "RMPdwrrAcBeRvVk8", "origin": "Playstation", "quantity": 85, "region": "MzRdbPM6M496Pyz1", "source": "EXPIRATION", "startDate": "1996-01-03T00:00:00Z", "storeId": "DgJk2nBaJrKPS0od"}, {"duration": 29, "endDate": "1977-01-30T00:00:00Z", "entitlementCollectionId": "EoVDdBVzlCg6mTHS", "entitlementOrigin": "Xbox", "itemId": "rn3mJmvlngPI37ut", "itemSku": "WC8u1FWQmrdgtGMw", "language": "P7i1mHkQfsjWDKWG", "metadata": {"UHMJsV7iRLyfKkLV": {}, "e3wfLSM7yYYD9LSE": {}, "IpuegPhhik9U1Jo1": {}}, "orderNo": "Xcud9WIGoqQHLaKP", "origin": "Twitch", "quantity": 96, "region": "pHoz9zfTngZZzfkG", "source": "OTHER", "startDate": "1992-01-04T00:00:00Z", "storeId": "QPnQOVrGg1xejDiG"}], "transactionId": "AiWveVzisZXYdaHH"}, {"items": [{"duration": 36, "endDate": "1981-06-02T00:00:00Z", "entitlementCollectionId": "Ag15LrbtQMElAEIk", "entitlementOrigin": "Epic", "itemId": "twNksKH3e9yPQrSA", "itemSku": "g9yHp0RuE8rrWmtc", "language": "dJ6yaO0ZWkO07pDv", "metadata": {"GfVB1qpY5Ln2pDtv": {}, "BTRt3Kz9e8g7w1hh": {}, "P31HZa1BILp4fg0J": {}}, "orderNo": "W9EMMMzBEFt0t7fc", "origin": "Other", "quantity": 55, "region": "lfZRpuUH2tSQpp21", "source": "OTHER", "startDate": "1980-07-31T00:00:00Z", "storeId": "AIfPlyaShRkUDJNc"}, {"duration": 82, "endDate": "1980-05-07T00:00:00Z", "entitlementCollectionId": "0VDNkZG9xf2nSCqg", "entitlementOrigin": "Nintendo", "itemId": "7Oeeq7JoySebZ0qs", "itemSku": "n8tqr6Qt9aU6r1WC", "language": "qZt1ZjLJgCcFo4V3", "metadata": {"Z3zjaRi2WeivuAix": {}, "M6Sot37p6RyRswTh": {}, "lAfKeH5bS2Vs9rkI": {}}, "orderNo": "wO35RauAB5pViiLV", "origin": "Epic", "quantity": 77, "region": "HBubGiXYCpPdyBuG", "source": "PAYMENT", "startDate": "1983-06-27T00:00:00Z", "storeId": "aK3IVKZRMyfB2Dfa"}, {"duration": 75, "endDate": "1991-05-07T00:00:00Z", "entitlementCollectionId": "stv1GfmhuHjW3gag", "entitlementOrigin": "Steam", "itemId": "rWgQSiCkAH3xRCVq", "itemSku": "gXaIRULPItsHPnCl", "language": "MeTRP7kWvyl6Ushn", "metadata": {"M0S0oJ9Ejxjl0Ltb": {}, "to4G0qs6JVc1CEOK": {}, "wWYBdZeLkORyhbEG": {}}, "orderNo": "i0sINvdAaP5O5TuF", "origin": "GooglePlay", "quantity": 30, "region": "xQ7UFfHzJEXA4vwo", "source": "REWARD", "startDate": "1988-04-03T00:00:00Z", "storeId": "UGDkYIFMh5254zKo"}], "transactionId": "b78GcV4qButgBd19"}]' \
    '8Jv3wYlSOvb9qdNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 506 'BulkFulfillItemsV3' test.out

#- 507 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 84, "endDate": "1991-07-20T00:00:00Z", "entitlementCollectionId": "FsuxdYHxSTQgQUEw", "entitlementOrigin": "Oculus", "itemId": "WEY8I9rbB8M78jVu", "itemSku": "TYlvqePdrVymDzve", "language": "ZIqk9VLKbAMVlsBz", "metadata": {"i8i3FUOxIXxEloyZ": {}, "q718T5CfVpXjdAm5": {}, "jiTLBMfENETmsFPV": {}}, "orderNo": "NDWRWpzpkPz7DV5v", "origin": "System", "quantity": 18, "region": "FfMZ8PslydU5m1R4", "source": "ACHIEVEMENT", "startDate": "1972-06-13T00:00:00Z", "storeId": "7mmi1LRjMXGPsz7W"}, {"duration": 81, "endDate": "1987-02-18T00:00:00Z", "entitlementCollectionId": "xfS183onlj8XbudC", "entitlementOrigin": "GooglePlay", "itemId": "AHLHm8L2GQ2u0gay", "itemSku": "nJgkQDxUdEuRiqJw", "language": "eGJgY7Ovj5J9ND3X", "metadata": {"FnDgal5PKCcOdTbr": {}, "4KQ6PxTs51qHs6Jt": {}, "JT65TCXgK0smoRJj": {}}, "orderNo": "M83DAkPYLffe3c2b", "origin": "Other", "quantity": 96, "region": "E7OzZLcLdXiQlfot", "source": "REWARD", "startDate": "1975-04-25T00:00:00Z", "storeId": "T93eing8MsjoxiyY"}, {"duration": 0, "endDate": "1998-08-13T00:00:00Z", "entitlementCollectionId": "RolXKCC37eSoWDpU", "entitlementOrigin": "Twitch", "itemId": "4gnQoAsoL5K4ynun", "itemSku": "zwf0bHRwDZDS2COZ", "language": "eiLuBwXJHUHBu8qt", "metadata": {"DMjtqnwNEwBJFULP": {}, "wdQVWaRF3Z0M7Cuk": {}, "aEkEx0IQGM8rX5VP": {}}, "orderNo": "y6TEj5QwMIyoGAJs", "origin": "Xbox", "quantity": 51, "region": "nHly3KlXS6GYeuxY", "source": "PURCHASE", "startDate": "1987-05-07T00:00:00Z", "storeId": "4CEIQbNmL45QAKS9"}]}' \
    'GOplD0UGWwx8aXX7' \
    'P7QI3Mjbs36h57qs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 507 'FulfillItemsV3' test.out

#- 508 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'mR3WszxK9JvMEbfD' \
    'gj6slufAi5iVE4Gk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 508 'RetryFulfillItemsV3' test.out

#- 509 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    '8WWd0GUIPjR47QZH' \
    'OOqYnVM75empbTKs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 509 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
