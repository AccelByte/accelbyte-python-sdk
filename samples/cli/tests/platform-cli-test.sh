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
platform-create-item '{"appId": "gVRyihYNZ84CVhzi", "appType": "GAME", "baseAppId": "8HwSmvcvcDKF19yV", "boothName": "RafCjOuSYht83Adv", "categoryPath": "BaagTiRJ8daGTVX3", "clazz": "Bb7jlz5IfHgKjI9m", "displayOrder": 47, "entitlementType": "CONSUMABLE", "ext": {"SrN8jkIykR2zbaI6": {}, "PD7fEscShnGUGUtV": {}, "9GJ279GDbLNwjm3F": {}}, "features": ["bh4HtMlFgvh2Dp2S", "oiIPp1yvfAHS0VgL", "K0nnX2poMfZ1hDHt"], "flexible": true, "images": [{"as": "eDeRnVfPUa6xVVBc", "caption": "q3wZpFIYeAg79HcL", "height": 72, "imageUrl": "ILjkwW61duF87aUy", "smallImageUrl": "rdt4XSpWBAetsanz", "width": 34}, {"as": "nWbfRJtsB7cUQZ2Q", "caption": "UAxJrINPXppPNO3A", "height": 10, "imageUrl": "T2fSk3LL0calqxEe", "smallImageUrl": "wuGS469k2hG0WKt4", "width": 38}, {"as": "utjsQ4CrRb9gUCeV", "caption": "z7fWbZIdhevfZvyV", "height": 53, "imageUrl": "WeYeA9t2ENKKWrFt", "smallImageUrl": "HIi1CMgKAOG5iDcC", "width": 89}], "inventoryConfig": {"customAttributes": {"jq7sn8yreciPLfkV": {}, "yyJsbGpO6JgehDJx": {}, "EN7JlZc8LMq1o2jZ": {}}, "serverCustomAttributes": {"Wu4yA3r0u4q1bTHX": {}, "IjfJKyFlM0u1uuoV": {}, "dn9yVoSlKNchPHNL": {}}, "slotUsed": 44}, "itemId": "X3LLaGPGdqLE8Soh", "itemIds": ["hhuiTnJarYYkHBDd", "SzBXdxapwhd5IQYB", "QuxLvPuWYvE3fsNy"], "itemQty": {"9Z9OhxXvCp9y7fLD": 77, "qfCXnlUnqxT1WsRN": 79, "lcEPhMDFzjHZ3sIh": 52}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"HX6AgMep90AyyUJy": {"description": "AK5PRMRMwdvl0hv6", "localExt": {"g62GxBW2tQF5tkTj": {}, "gJaMYvNQOsDa4bkc": {}, "gepqtxjbrztee7QL": {}}, "longDescription": "TGAak7Kaol01DK97", "title": "D2xnik42miteR5eQ"}, "Ae1rzmmgqBPRmd6m": {"description": "O4oI8KDqebm83raN", "localExt": {"BJ5y7axEkvI4oxZE": {}, "DxGiBnNbn0zaf7Ca": {}, "OSlHXrUSA6sMJzA5": {}}, "longDescription": "mtqISQ83TTbtefXW", "title": "znDe4LQdXfFBii2R"}, "AMEX5RMjBFVZGYzQ": {"description": "qV8d9mDdUIoiIJFN", "localExt": {"xuNOmUSWw18T1IxV": {}, "WCxdvPL9e4P01vxP": {}, "8xj1LyEirURERnEM": {}}, "longDescription": "zpImW6sjAHyCK5tN", "title": "anGBrkzUvck3xTtm"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 55, "duration": 65, "endDate": "1985-11-11T00:00:00Z", "itemId": "gIs1Q2lzxl0yF5m7", "itemSku": "7TTh4gUoj8u2WRcL", "itemType": "iEtzVlnkflfn7pHY"}, {"count": 3, "duration": 64, "endDate": "1975-06-26T00:00:00Z", "itemId": "dl1q92m3iRlfnBAk", "itemSku": "0CwiAsR65yQ9ssuH", "itemType": "dGmxncCEr0Kcgeqz"}, {"count": 67, "duration": 82, "endDate": "1971-04-02T00:00:00Z", "itemId": "ruNB72HHMkjzyBB4", "itemSku": "UFKiaoV0VOem2yqP", "itemType": "sMFxKybPkbuS6x9c"}], "name": "LJ1APnNlsa2bRBr2", "odds": 0.9665867980327151, "type": "PROBABILITY_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 99, "duration": 23, "endDate": "1990-06-15T00:00:00Z", "itemId": "4jReteIMgzISomCs", "itemSku": "odJrhQW41q2OspCZ", "itemType": "bt3Uta5I0uGcL1ko"}, {"count": 51, "duration": 14, "endDate": "1988-11-09T00:00:00Z", "itemId": "jCH5olYLETRpABAm", "itemSku": "O2EGvJ4UMS93yOxN", "itemType": "InDByhnoluO6ti0Q"}, {"count": 85, "duration": 86, "endDate": "1999-07-29T00:00:00Z", "itemId": "ssiJ66OzOj84O6tg", "itemSku": "ohjtC7bzjPpucddX", "itemType": "J5zifF8y959anrNS"}], "name": "leywHbHig6IKWVZ7", "odds": 0.9589480216144757, "type": "REWARD_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 8, "duration": 89, "endDate": "1996-08-23T00:00:00Z", "itemId": "dECaFGzfZ2hxcJ2F", "itemSku": "nemn7M23SzUo4hNB", "itemType": "Dh9ZFP1OW0nXOErQ"}, {"count": 85, "duration": 50, "endDate": "1993-12-26T00:00:00Z", "itemId": "4VsRoYIK69yg9ADC", "itemSku": "GiXaLs2xjHkinOD9", "itemType": "75nARHCmhNHSXuqI"}, {"count": 69, "duration": 38, "endDate": "1999-07-06T00:00:00Z", "itemId": "ahvxw9gwwhTnjN6w", "itemSku": "KZGW4y3f0R9s2knd", "itemType": "hhZhwAiLsZs4pmLD"}], "name": "IQch4IjDq9aT3qZy", "odds": 0.5606612483836112, "type": "REWARD", "weight": 35}], "rollFunction": "DEFAULT"}, "maxCount": 72, "maxCountPerUser": 100, "name": "LMQyMWzYQCAaPJgo", "optionBoxConfig": {"boxItems": [{"count": 47, "duration": 66, "endDate": "1996-10-16T00:00:00Z", "itemId": "wIc895ImqK6tVsaU", "itemSku": "q3stUh5J5Z9GiBiS", "itemType": "AylX5cS0IeHpWCug"}, {"count": 25, "duration": 1, "endDate": "1973-12-04T00:00:00Z", "itemId": "ytPfds1BYx0EaURy", "itemSku": "df8ZyyZeHAWGgJUb", "itemType": "UJRMbkcTglbU86Fy"}, {"count": 83, "duration": 84, "endDate": "1975-12-15T00:00:00Z", "itemId": "ApNHBVfNOURcjY3Y", "itemSku": "YT9oTynmfIuBWgJT", "itemType": "NFfM8M0IW4oe8KDg"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 11, "fixedTrialCycles": 48, "graceDays": 28}, "regionData": {"ZfAcNg14Ws8TIP1L": [{"currencyCode": "KiFQoLDvumfqrgSf", "currencyNamespace": "nx2h61X9dN1MGRXB", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1977-10-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1971-10-22T00:00:00Z", "expireAt": "1992-09-24T00:00:00Z", "price": 34, "purchaseAt": "1990-03-19T00:00:00Z", "trialPrice": 42}, {"currencyCode": "NLwvI8JdiY3RRiLi", "currencyNamespace": "lmOGF6dLLIeIVIjM", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1972-04-03T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1971-12-23T00:00:00Z", "expireAt": "1972-12-28T00:00:00Z", "price": 94, "purchaseAt": "1987-06-09T00:00:00Z", "trialPrice": 70}, {"currencyCode": "PZSTpPq3xjrElvvD", "currencyNamespace": "gw0ag7kSWE0Hiqm5", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1983-10-08T00:00:00Z", "expireAt": "1975-06-09T00:00:00Z", "price": 62, "purchaseAt": "1982-09-03T00:00:00Z", "trialPrice": 35}], "T8p4n4XCFkD1AJLC": [{"currencyCode": "wszbZxuHSgDOK8bj", "currencyNamespace": "oF7bL2635KbtZTGJ", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1979-07-17T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1975-04-02T00:00:00Z", "expireAt": "1986-10-09T00:00:00Z", "price": 56, "purchaseAt": "1984-10-23T00:00:00Z", "trialPrice": 80}, {"currencyCode": "tyTDSIM7mkmvZ7Cm", "currencyNamespace": "sh4US8o4jfMANPpm", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1972-04-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1977-03-12T00:00:00Z", "expireAt": "1977-08-23T00:00:00Z", "price": 23, "purchaseAt": "1983-04-09T00:00:00Z", "trialPrice": 23}, {"currencyCode": "uCCVuFjS1GC1d2b9", "currencyNamespace": "2B4vEgj3HOmhcWm4", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1996-01-30T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1976-03-30T00:00:00Z", "expireAt": "1993-07-28T00:00:00Z", "price": 64, "purchaseAt": "1982-11-19T00:00:00Z", "trialPrice": 7}], "IY9nMrBZo0lNUBDS": [{"currencyCode": "hHD32vvL28FPwTiX", "currencyNamespace": "fLcxDC9Ynd02mECI", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1973-10-13T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1975-08-21T00:00:00Z", "expireAt": "1988-05-12T00:00:00Z", "price": 40, "purchaseAt": "1997-08-03T00:00:00Z", "trialPrice": 61}, {"currencyCode": "HLLa31oQf7BULnZD", "currencyNamespace": "hutDM6BqguqD5xxG", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1985-05-01T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1974-06-15T00:00:00Z", "expireAt": "1996-04-13T00:00:00Z", "price": 42, "purchaseAt": "1994-10-20T00:00:00Z", "trialPrice": 30}, {"currencyCode": "Ue2znsqPzPkwCBo2", "currencyNamespace": "SwCUsTag4MLAo3m6", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1983-12-01T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-11-22T00:00:00Z", "expireAt": "1973-09-17T00:00:00Z", "price": 25, "purchaseAt": "1972-04-23T00:00:00Z", "trialPrice": 14}]}, "saleConfig": {"currencyCode": "Onb1a9gMz0F2UBRm", "price": 78}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "mgNEJBhgGq5GIDhN", "stackable": true, "status": "ACTIVE", "tags": ["66szbCCf73IFbRkP", "SSITz4TjCrJHXGXk", "u2YVuOzhxHmnrrV9"], "targetCurrencyCode": "ZGWrZ05sxe6A6Rpm", "targetNamespace": "KDebNkylbynkgT9v", "thumbnailUrl": "ayLLiizac7Ge6zKJ", "useCount": 8}' 'OuksQJCiRFiZWwJ7' --login_with_auth "Bearer foo"
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
platform-update-item '{"appId": "A9DkaSOWgtg8yw8l", "appType": "SOFTWARE", "baseAppId": "qJqzoKMRMG541PAi", "boothName": "NjULsx4SnKNXLMUa", "categoryPath": "DSwwQlnNRZJHBSB4", "clazz": "fZWEFIZs28Ff1kZp", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"ktx3N7WNMYIfcDKb": {}, "Lu8pnK34oA1keYXJ": {}, "vtggDdXjbdjMBahF": {}}, "features": ["z1eI7Q5pu9PutLf6", "ZZGMTcqnWrIprOv0", "BJ9Sgl7H1sdH2RIJ"], "flexible": false, "images": [{"as": "rvZoBGQbO4S3rURG", "caption": "WUzPAE6SdV4D5jft", "height": 89, "imageUrl": "2FI3vyyqRzc20O7F", "smallImageUrl": "dsJP1G9tyBTfERXd", "width": 44}, {"as": "MYDUTLBeCidXjuGg", "caption": "x8ncXejmeZtzT0qj", "height": 59, "imageUrl": "ltsqfiZrthVvyX0O", "smallImageUrl": "CKDJE3RMUddwSSgx", "width": 58}, {"as": "R3hCGNgaJmuALlMQ", "caption": "l9RLrthbfp0VgweL", "height": 24, "imageUrl": "oNB6hI6IpGcToWgF", "smallImageUrl": "vdRhG9NwV3zDuqVl", "width": 98}], "inventoryConfig": {"customAttributes": {"vJrBCqeg67d4RWOq": {}, "O4U0bitNQLzwRoWn": {}, "R0AbkCPY70FmvviV": {}}, "serverCustomAttributes": {"IBbcujF8Vk5qb8Nh": {}, "WWwaxyMchkt8l5IP": {}, "SrwrJl7wYIVw13NC": {}}, "slotUsed": 29}, "itemIds": ["l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG", "ZGwiVj7eDTaka9AB"], "itemQty": {"fX1IByPEOuPhGspR": 17, "3b6o5uB2XM6IHy7E": 63, "cubN4AUUPFPscZsX": 8}, "itemType": "SEASON", "listable": false, "localizations": {"D4DMtqfIGiGJovgW": {"description": "SRxZ8N4UQ2fg3V1o", "localExt": {"2x0hL5DuBDqMyIAz": {}, "Wze94MEdJFAy2JTl": {}, "lJkRGB8jqJEd6eqq": {}}, "longDescription": "sBVyONV0JRtozI0j", "title": "pliCFQ6WgJpGPigd"}, "c5VyC4qvWjVac1cQ": {"description": "vSxgTNIUzxDgBlIb", "localExt": {"uzm7DzJ20NFRJIhF": {}, "XR2dYprPmbpuptEC": {}, "Gd5cdXC2Sesc6y68": {}}, "longDescription": "whNBYl9iCqfW6rqG", "title": "OQny4ij4ysYPonb5"}, "9gQffkNOmubxEJr2": {"description": "qEAuJbpZSrcbc4LW", "localExt": {"fKaY5c1tP5TDuI5f": {}, "6m4KC07CnsZe32hq": {}, "EcB1ExYMBb3ckvoa": {}}, "longDescription": "JYdMqGegcg3eRvBZ", "title": "XN3cjIXmFWRJnj8x"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 81, "duration": 27, "endDate": "1988-08-27T00:00:00Z", "itemId": "a6Zuxk6u6HXXdiC9", "itemSku": "ZDj4E4mv12FNXypo", "itemType": "OLl13j84P0KqirJ4"}, {"count": 86, "duration": 14, "endDate": "1976-11-13T00:00:00Z", "itemId": "eUYcYJ4QzXCmqr6g", "itemSku": "mPGaHP5SVPvRLiDi", "itemType": "0mNHb6Lx8eq8SGNw"}, {"count": 62, "duration": 62, "endDate": "1992-11-25T00:00:00Z", "itemId": "eRj17xGhaBKoUfiH", "itemSku": "jGmCyPsKCJTv1ic9", "itemType": "gvagF2cSuztsJ5tj"}], "name": "64gV7nmDk29mcjSu", "odds": 0.40713130669594944, "type": "PROBABILITY_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 85, "duration": 3, "endDate": "1991-12-03T00:00:00Z", "itemId": "StqPtQmQN6eKAGiZ", "itemSku": "FCftT0RWECdjWYrn", "itemType": "ulxcCKAru8pOaAVL"}, {"count": 59, "duration": 85, "endDate": "1985-04-27T00:00:00Z", "itemId": "4k3JwkdaxR7GJpYm", "itemSku": "uYCPG181q9GA5Dyd", "itemType": "C2D8UT6KOc4VPDUR"}, {"count": 45, "duration": 0, "endDate": "1979-07-19T00:00:00Z", "itemId": "JligLlRxOelKykIC", "itemSku": "RxF6HtlER2txs4qr", "itemType": "NARATn6KXOutlYBb"}], "name": "LhL8KXx25FZfQIod", "odds": 0.7643235281614817, "type": "REWARD", "weight": 45}, {"lootBoxItems": [{"count": 34, "duration": 79, "endDate": "1992-02-07T00:00:00Z", "itemId": "sBpCJBIXLGYcwWVR", "itemSku": "K6UKk5ozrXA4HZHN", "itemType": "yq9odanhR1Zrm3th"}, {"count": 95, "duration": 1, "endDate": "1982-06-14T00:00:00Z", "itemId": "V87yfkycLSVdleSa", "itemSku": "AylsmLYe2phYOgT5", "itemType": "kDTyPl3dKF7NXEjr"}, {"count": 74, "duration": 79, "endDate": "1995-03-23T00:00:00Z", "itemId": "OHGwbADMfuOmh0lc", "itemSku": "iRhVZ2DeoODXMzLS", "itemType": "rzoiBnYi5UWs3tYl"}], "name": "YeMoCimJySocRvUW", "odds": 0.4684644644629602, "type": "REWARD_GROUP", "weight": 37}], "rollFunction": "CUSTOM"}, "maxCount": 65, "maxCountPerUser": 85, "name": "ZKPNoN9AWtLK9TFg", "optionBoxConfig": {"boxItems": [{"count": 16, "duration": 6, "endDate": "1984-03-14T00:00:00Z", "itemId": "oijBPAp6EPb988Nz", "itemSku": "xrDKVpULjjiw3NeV", "itemType": "G4DJi9DaMrc0WFgK"}, {"count": 18, "duration": 63, "endDate": "1993-12-24T00:00:00Z", "itemId": "5x2CPVYYG9WvoGmA", "itemSku": "mvaVV5YfxnUNcwjr", "itemType": "7gSGhnfuF4WZiQVI"}, {"count": 59, "duration": 8, "endDate": "1995-12-19T00:00:00Z", "itemId": "pWd3UM08gMXhdf3j", "itemSku": "uXW4JprIb3CJCAtv", "itemType": "SG8Cfa9dzOJDGCTH"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 60, "graceDays": 10}, "regionData": {"xeR6d7r1SQw80JfM": [{"currencyCode": "pPrSqYypRUnq5o4E", "currencyNamespace": "TeCUYG9ccTt7Wxw8", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-01-17T00:00:00Z", "expireAt": "1994-07-25T00:00:00Z", "price": 46, "purchaseAt": "1993-05-04T00:00:00Z", "trialPrice": 53}, {"currencyCode": "dk0HATGylx2JG2KN", "currencyNamespace": "GfhzfCTxxrsRRLee", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-10-17T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1978-08-29T00:00:00Z", "expireAt": "1996-12-08T00:00:00Z", "price": 67, "purchaseAt": "1988-01-27T00:00:00Z", "trialPrice": 18}, {"currencyCode": "YohxMp3uOQIybqWf", "currencyNamespace": "G9BJ6FVKlbYHtbPt", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1981-01-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-02-19T00:00:00Z", "expireAt": "1982-12-28T00:00:00Z", "price": 42, "purchaseAt": "1976-02-19T00:00:00Z", "trialPrice": 31}], "FDa6wUQvehKqwCh8": [{"currencyCode": "6XmRkCEcfHDCdl59", "currencyNamespace": "Wp9A3tXGve6DdK6u", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1986-06-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1991-05-01T00:00:00Z", "expireAt": "1972-10-15T00:00:00Z", "price": 29, "purchaseAt": "1985-02-27T00:00:00Z", "trialPrice": 50}, {"currencyCode": "zBw3xLUcCEt0Dzmk", "currencyNamespace": "Jq1sml5bYt76BNsi", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-03-11T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1993-03-31T00:00:00Z", "expireAt": "1971-01-24T00:00:00Z", "price": 61, "purchaseAt": "1985-01-30T00:00:00Z", "trialPrice": 32}, {"currencyCode": "Fe8ATUqVxcSthrpn", "currencyNamespace": "MUBsnUfuQIcSbUt5", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1982-03-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1988-03-22T00:00:00Z", "expireAt": "1977-09-21T00:00:00Z", "price": 66, "purchaseAt": "1992-05-04T00:00:00Z", "trialPrice": 27}], "uUsdtq4dOwNESzCE": [{"currencyCode": "W9dUVhZjLftC3sCS", "currencyNamespace": "8CpLCqPD9CeDEdCn", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1990-09-13T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1975-06-10T00:00:00Z", "expireAt": "1998-08-12T00:00:00Z", "price": 1, "purchaseAt": "1976-09-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "r8CDapjwNOl4k8rV", "currencyNamespace": "Nrm8drv8QD2JOe2N", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1984-05-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-09-11T00:00:00Z", "expireAt": "1985-06-23T00:00:00Z", "price": 12, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 91}, {"currencyCode": "PgIGuetxFMqXCQMA", "currencyNamespace": "qQ2ZRGzNtrThFa9X", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-04-26T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1980-11-14T00:00:00Z", "expireAt": "1977-11-13T00:00:00Z", "price": 41, "purchaseAt": "1975-10-06T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "ZJ7O8sAQ32wj9uaD", "price": 53}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "qs2mqtnGAqXUjNyp", "stackable": true, "status": "INACTIVE", "tags": ["FlounC3vJKBC7Swg", "oViPeIB4Ehy0Y5aS", "JEhxPGbEk7s7gw07"], "targetCurrencyCode": "JVDginxAM77eY9C1", "targetNamespace": "4FbfiI2NPvl1kCY5", "thumbnailUrl": "bEokxXxkWZbjf7GZ", "useCount": 48}' 'yumBeIqdQGZC5kM0' '3HHijsQRj7N8IAjm' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 9, "code": "Gz3b5WAEvdRF9bqM", "comparison": "is", "name": "uhh3bvadRthdbVAp", "predicateType": "EntitlementPredicate", "value": "dVw0zCqoMZvpIOO9", "values": ["CKpMv2Yky9DYkD2s", "0IifzMhkk5Pxsjqb", "7DmQ5ZOzx6iCJTu6"]}, {"anyOf": 71, "code": "X4FCK5ucTFsAFzaO", "comparison": "isLessThanOrEqual", "name": "htWm8RQvRUbUDSie", "predicateType": "EntitlementPredicate", "value": "qdTelFAadM9y66Dr", "values": ["f4SSGGt3MiBKohow", "IfOCDyVAHrHncR5d", "3kKoaP1K4CDuH1mM"]}, {"anyOf": 90, "code": "XqQ1oHFJ9Q0vqsL9", "comparison": "includes", "name": "omqWsGA76yxi0QzZ", "predicateType": "EntitlementPredicate", "value": "2A9VOA8H9VeHv0L2", "values": ["Rh2o7GCQGPCxwEdk", "xs1WId9WlalqshF9", "Acm960EYQEuGJVl8"]}]}, {"operator": "or", "predicates": [{"anyOf": 74, "code": "uT3MgzReRq0112IS", "comparison": "isLessThanOrEqual", "name": "acO5MnjnxD1OXkxS", "predicateType": "EntitlementPredicate", "value": "WWaYvBLE46bpuJip", "values": ["8JyxJ39vrtuWWrqT", "ZbSqBSKp8AmgwhYz", "k33J34fiTxK63OHp"]}, {"anyOf": 28, "code": "pE130YWSgxpKWtdt", "comparison": "excludes", "name": "ZXQcb2o1J5euLAbB", "predicateType": "EntitlementPredicate", "value": "ZV3ig8Jg5VByeI3y", "values": ["wec1m8BusV9tUh74", "cMcYYBixKJXCISQd", "KVo6Xqjz2xUKLNWS"]}, {"anyOf": 25, "code": "efgFIiJssShBKsQj", "comparison": "is", "name": "vfQgQDt6ce8NDMEr", "predicateType": "StatisticCodePredicate", "value": "rsZyo6CBRRnoOikI", "values": ["AU1cKApdJDnE73GL", "xXKKIR6kPmswm5TC", "mSZns5owBhoUg4Ls"]}]}, {"operator": "or", "predicates": [{"anyOf": 85, "code": "AHQpBOgHEP5l94s7", "comparison": "isNot", "name": "smaxjTZPlLitytGk", "predicateType": "EntitlementPredicate", "value": "7FTexsOZ0b2p3b63", "values": ["KrcwIcXMhGy83Xit", "PQ9HkSSV8e1MgTTL", "6boOLGCcg16DqwdQ"]}, {"anyOf": 91, "code": "82GF3eTC0vzZUDj9", "comparison": "excludes", "name": "RBEj7qms9AGQExPh", "predicateType": "EntitlementPredicate", "value": "fuBNisecYbcOpR45", "values": ["qS7Dcmtfh50eObbr", "VDlvSc0Mr7ImwCwG", "qOf0bNs97KvKyj3M"]}, {"anyOf": 24, "code": "zWTqgYPixtHk6lWq", "comparison": "isLessThan", "name": "eD1La16Bw3JbUnUD", "predicateType": "EntitlementPredicate", "value": "jRYldcTpdeCD9XPR", "values": ["i4bAQL7VE2wL8Y4J", "rorbKIKuOXJPm5zt", "FVUdzA8bvXlDhG7B"]}]}]}}' 'rr09CDA8Ij5bGKSu' 'opWQbaCvdPSq8Z27' --login_with_auth "Bearer foo"
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
platform-admin-sync-twitch-drops-entitlement '{"gameId": "JcZQaCeNLYxMID9p", "language": "Ygn-ZUIk-589", "region": "nos5RK100yH89i8Z"}' 'DPXRL8cbTAntB1ST' --login_with_auth "Bearer foo"
platform-query-user-orders 'aab1UeibXg7RCe5B' --login_with_auth "Bearer foo"
platform-admin-create-user-order '{"currencyCode": "tKcwj6PqqOgCimr3", "currencyNamespace": "ZQNBBkrXu9czsYr3", "discountCodes": ["K0M2B2hbqJin37P6", "cFeVw70xdNTuOdLK", "9t1KqeGz7qbPnXEu"], "discountedPrice": 83, "entitlementPlatform": "Other", "ext": {"zzkoBmMR9C4qPqJr": {}, "Adh1HIk7vCEq7FQ2": {}, "S5VeW9ddxzLPV8wD": {}}, "itemId": "jsnyPh5yNbYXmlAO", "language": "i1SC3I1SjkH42Lty", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 94, "quantity": 20, "region": "Jo0L5sHil4Q0mqa8", "returnUrl": "GatrjbJ5YT7uvqar", "sandbox": true, "sectionId": "xUc2YgRpk2IFGIgI"}' 'pscUpVAciu2XPPUx' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'zXHUvxhvTZcvRKoa' 'M4ozSAg8FTLrByWO' --login_with_auth "Bearer foo"
platform-get-user-order 'JhbocoGlPzdfxcC3' 'rpWhSpq0InxMLpP7' --login_with_auth "Bearer foo"
platform-update-user-order-status '{"status": "CLOSED", "statusReason": "ZtHJnRgaGfLMFbvy"}' 'I5PZGzVLcmZKKKYA' 'Rape2tsNczam4Cdd' --login_with_auth "Bearer foo"
platform-fulfill-user-order '1QYvww4XDokltgq2' 'vXtUnY6UhDJ4pe0s' --login_with_auth "Bearer foo"
platform-get-user-order-histories '0Cuhl3dU9b4seYCy' 'iB4tDCWx3cEX8wTi' --login_with_auth "Bearer foo"
platform-process-user-order-notification '{"additionalData": {"cardSummary": "1v2abpCWytPEi9Ze"}, "authorisedTime": "1998-02-08T00:00:00Z", "chargebackReversedTime": "1974-12-31T00:00:00Z", "chargebackTime": "1990-04-11T00:00:00Z", "chargedTime": "1980-12-07T00:00:00Z", "createdTime": "1976-11-10T00:00:00Z", "currency": {"currencyCode": "V5GkSrcl2O47XVzU", "currencySymbol": "7qlNVk7qnmBS3XKD", "currencyType": "REAL", "decimals": 78, "namespace": "p1OkMcErmeH0lX1h"}, "customParameters": {"j0LaXgQ94flh775A": {}, "QfzNjQ7IuMSY2epR": {}, "DJjDyMDKQhuTjtQZ": {}}, "extOrderNo": "yIiAmCL8bNTTfqLC", "extTxId": "v9DYBOProN4UWbQa", "extUserId": "KFrTv4JWElmOCxqP", "issuedAt": "1979-05-17T00:00:00Z", "metadata": {"oCn1KvJmbjapW9Ul": "EqtzDd7SgxdxB5kv", "tM8ah9bPsksceGUE": "X8ERZcKSYLo6y7yJ", "MowQ6LpHCvCYTgX9": "JQwErzjtuP9pUUv7"}, "namespace": "qefNMFsZAIqak1zi", "nonceStr": "0JSa5cRn31D8ubfd", "paymentData": {"discountAmount": 59, "discountCode": "i7BycDPckeGJUgU8", "subtotalPrice": 3, "tax": 59, "totalPrice": 66}, "paymentMethod": "5mGFFmKTTUxG0mpm", "paymentMethodFee": 64, "paymentOrderNo": "I42BJMPkZmay4Csy", "paymentProvider": "ALIPAY", "paymentProviderFee": 24, "paymentStationUrl": "iJLtjsu6ZJRCoDq3", "price": 14, "refundedTime": "1990-02-06T00:00:00Z", "salesTax": 41, "sandbox": false, "sku": "HFFaZzPIjETqcKN1", "status": "AUTHORISE_FAILED", "statusReason": "e3z2rtjWpJAlKHF0", "subscriptionId": "ebxhJ1176CeD4dWC", "subtotalPrice": 31, "targetNamespace": "F0LLhO3lGZ7eGOPj", "targetUserId": "2XoFug8BUQUmPHnP", "tax": 42, "totalPrice": 26, "totalTax": 33, "txEndTime": "1972-11-25T00:00:00Z", "type": "azKAna0ji757aNDF", "userId": "eKnQP2j2WsQImTwY", "vat": 21}' 'gx0UC6eWKCFGS97S' 'i6XyLVPrkUxyZ1OH' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '5Nn4nMT8QOyTuUSD' '9ImtaPAocOQcpBWS' --login_with_auth "Bearer foo"
platform-create-user-payment-order '{"currencyCode": "NrCjSNEAdojkCMmY", "currencyNamespace": "yTGO07foRZ6FujpI", "customParameters": {"Wo0qJtqp4Q6XgICL": {}, "gMHcP1eE6sjWQllY": {}, "sONpp6QGW56CNisz": {}}, "description": "HE69D1MMoaf6KlgR", "extOrderNo": "twaM2IoyY1wpIdjc", "extUserId": "AtTj1IMuuhxxlulf", "itemType": "COINS", "language": "YKA_MA", "metadata": {"U31uXPwYxedGHCIk": "mt4bfJOhNaIT0pv7", "XeqO8gY3c4SryWB4": "yRaDxvxwaLM8HkVO", "W8PnLkgqkqYZWPZT": "gKagTzdcYcko7U3g"}, "notifyUrl": "H239LhRx2Laa2Rdt", "omitNotification": true, "platform": "b6VgA5yFIH3s9Uye", "price": 1, "recurringPaymentOrderNo": "jgyCUpM1JBcTzf4d", "region": "z1BojPoQg976409v", "returnUrl": "Fd5z9r4nJWUvLp1w", "sandbox": true, "sku": "94NxhXsVcqTYi1TM", "subscriptionId": "BMzaOrxuKvtUVtqb", "title": "DWnJ2i9TRmJOqIl7"}' 'U12hO5vpk9DOSgbs' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '{"description": "dGVPLD9A5NmuZDUV"}' '3yHurgOfba1XeoHY' 'TNoRol84UlkxtP5V' --login_with_auth "Bearer foo"
platform-get-user-platform-account-closure-histories 'ok9sNK1ORg3tChsS' --login_with_auth "Bearer foo"
platform-apply-user-redemption '{"code": "3fFpaS1uq1mH3oYf", "orderNo": "PK2QiAUhIfi17Yrk"}' 'WHNxiaNyqBfgw58H' --login_with_auth "Bearer foo"
platform-do-revocation '{"meta": {"x0XYL0fJOPYpnPqG": {}, "lPnhBDOWqDU8N3Dj": {}, "VUt0n0jfyDbtIXIC": {}}, "reason": "LkK8ZvbnTg3znlg8", "requestId": "nmzQx1RsYhcRlv16", "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "we8YK3lZFslECI9Q", "namespace": "zuQcsjFehD6uTDYn"}, "entitlement": {"entitlementId": "qyNgN7GoeMsezFZs"}, "item": {"entitlementOrigin": "System", "itemIdentity": "BHkgcJ0DcEt23pci", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 61, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "dZsLaf8aZrXW84dt", "namespace": "0TSTmy7XF26K2U7x"}, "entitlement": {"entitlementId": "ttUz8nWKJjv06Puf"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "yGYIVFDbTvRYfpJ4", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "WZfOOxAzmsbhi5QJ", "namespace": "uc2SNBaOlXfgsgBd"}, "entitlement": {"entitlementId": "7MYLLoPZrkjRm5Ki"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "UkjDzJ4NuMMgI13n", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 22, "type": "CURRENCY"}], "source": "DLC", "transactionId": "aUQV5QEvKElLfbB7"}' 'gwwAR1xFrnyirw3i' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '{"gameSessionId": "Jt5iA3JS2xeaJ08J", "payload": {"rSHPqdhKHn6ZjZMd": {}, "r1C2TIQzRJY7UfYS": {}, "rdN0JVz4U43EcV1F": {}}, "scid": "RyeeqehMNeRYKeMb", "sessionTemplateName": "L0G4v5D6ylZguO91"}' '8X7rLoexHBMBMMAY' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'okSWFwajRGUyklfL' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'VY6g3PO4hKAeF4GU' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '{"grantDays": 97, "itemId": "U3apnZXoJ4gI4EQK", "language": "O8xC4D0FsUo3IB2k", "reason": "X5REQZsHyXzoIXNf", "region": "0KbL9HyJttdgfLGO", "source": "3ummpllnV6B62P1K"}' 'azg73c6UpmA4ehxN' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'IIlcrZzgameT2mLk' 'kAMjHyI0e2Axj0nZ' --login_with_auth "Bearer foo"
platform-get-user-subscription 'HjmoKHJngwMe1AnQ' 'Vj6QQjZtkNJCnDSr' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'sSey2BqOxgwCymCD' 'Ysuff3b7G5FDX4mu' --login_with_auth "Bearer foo"
platform-cancel-subscription '{"immediate": true, "reason": "qPudWviQsULL1txf"}' 'X9tqFSkGXoIcFN5J' 'L9M53Mg0MzWS9usx' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '{"grantDays": 47, "reason": "hMxfEDE4TrtIHyyM"}' 'q79EdB9MxaF8QHGM' '2IuQYBO8m0HgTth4' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '79W8rXqwGVIRWgTN' 'HCka3Wb5kH1BrLWU' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '{"additionalData": {"cardSummary": "etP7nmESQDV3BD1n"}, "authorisedTime": "1977-03-06T00:00:00Z", "chargebackReversedTime": "1986-07-01T00:00:00Z", "chargebackTime": "1984-04-24T00:00:00Z", "chargedTime": "1986-05-31T00:00:00Z", "createdTime": "1977-06-14T00:00:00Z", "currency": {"currencyCode": "UWqP4ElzL44KEm3u", "currencySymbol": "HBMCP5ckjphURs4k", "currencyType": "VIRTUAL", "decimals": 10, "namespace": "gsKJ2R6Jacwwu8W1"}, "customParameters": {"zvrKMRPvwA9k6yJz": {}, "03NETdywPqYerrpO": {}, "m4M2pM4fIfcHBWZM": {}}, "extOrderNo": "50aHbPXRns3qwYL6", "extTxId": "LwGlZGF7XQPLAcIL", "extUserId": "7FvAMWqhyyNZH1Cd", "issuedAt": "1981-02-27T00:00:00Z", "metadata": {"cB5y5iMdeBG7REG4": "meKEabfVXBJPIZqZ", "C5d6JuFdcfiNf0DO": "HKwxDF5GJhCjVHiC", "n2hTefT8gPFJ4Wnd": "MpQhcLK0WTZbtmQk"}, "namespace": "wC8azx3IRWme3C6p", "nonceStr": "2r4D3NQdjrjkX3AM", "paymentData": {"discountAmount": 13, "discountCode": "oerZAxbDPXU5xJBh", "subtotalPrice": 72, "tax": 33, "totalPrice": 42}, "paymentMethod": "J9b0Ap7CmSiKPjcw", "paymentMethodFee": 55, "paymentOrderNo": "ljQaBtb47V691j0F", "paymentProvider": "PAYPAL", "paymentProviderFee": 56, "paymentStationUrl": "2vjOXptxzx6kkaZY", "price": 31, "refundedTime": "1972-04-02T00:00:00Z", "salesTax": 0, "sandbox": true, "sku": "0BCO4qPnvxERWjKa", "status": "CHARGED", "statusReason": "BBEWrDbQ1ZzhDuLH", "subscriptionId": "q9LTBstguOdN0O7l", "subtotalPrice": 82, "targetNamespace": "GbKPHdDTQDEEE2mT", "targetUserId": "sn1NwJ71szsNmnqZ", "tax": 92, "totalPrice": 40, "totalTax": 100, "txEndTime": "1974-02-01T00:00:00Z", "type": "USu4WNfTvD5UcES1", "userId": "eLMZs9lSQVDp16qV", "vat": 71}' '7jI232SjktijiNzT' 'Ue8KdizXmrmK0sCU' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '{"count": 37, "orderNo": "UF2523OTvOmfVNJN"}' 'DaSO3FEkk4It6V8B' 'u7rIjGrxUMKbv60i' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'xUuUhopdqGrqRZ12' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '{"allowOverdraft": false, "amount": 26, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"auXTrpWAjwatSvtP": {}, "bAFn8oWQcmFkkRX6": {}, "EqadAEIzxld80Yns": {}}, "reason": "s7hc3VUxxZIgkTLq"}' 'MeJPCbs8jWmTteJh' 'wNbwHGG39YAZJ4Hu' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'LfeTfFBTOFFMJ9pq' '511jZcTK8zmMfysh' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 1, "debitBalanceSource": "EXPIRATION", "metadata": {"PblcWEyNgvs5LEZr": {}, "QXzSQRWRs9EGnRPg": {}, "YlJElgJ8kx1WEeDb": {}}, "reason": "ql13FtQMu41rnOzb", "walletPlatform": "Oculus"}' 'NW1Yjfn8lY4DnYRx' 'Y8ZhHeb0CaPFDjrS' --login_with_auth "Bearer foo"
platform-credit-user-wallet '{"amount": 31, "expireAt": "1992-06-05T00:00:00Z", "metadata": {"9xutntU8xHw4yYJO": {}, "CViHwunQwpC2eCFU": {}, "AHZaYSvsWiNJtqXl": {}}, "origin": "Other", "reason": "KOrfVfBRIfkStOqd", "source": "REWARD"}' 'bzWPKOkzftOgDQAW' 'hulbrDf7q4cAnpmL' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 18, "debitBalanceSource": "PAYMENT", "metadata": {"Eu4CNtX2lnqi7cHT": {}, "SdGoLZbC3UJruU4u": {}, "IXBZsEYogFWiH9z4": {}}, "reason": "E8zmaZ5cg0REtUWY", "walletPlatform": "Epic"}' 'fVIdqwCWF5wmbOub' 'TxAAeDCowR3MeCNL' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '{"amount": 14, "metadata": {"oNrF3SmgudQusJLs": {}, "PlW7ZyORFkN9EbKb": {}, "TbrDzNgVEcw0lxRa": {}}, "walletPlatform": "Nintendo"}' 'GHJDGatrYOMO91CY' 'EjX867n9PT9fR7mM' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '{"displayOrder": 41, "localizations": {"xmxpfp41k1uDg59P": {"description": "hdUXShabwyYCxTHr", "localExt": {"Del8oThvr8CUEzw4": {}, "zL1QeR3EYXBFpUX9": {}, "y4tY7o5FFi1n10vD": {}}, "longDescription": "gyoHXIlrMl2RAukC", "title": "L26ihdMy9YCLNJEk"}, "vq6SUSt8xd8EgE15": {"description": "XNuw6Y7sToQNkuZz", "localExt": {"J1XBxw01iBBQukgQ": {}, "94ZvPCWcMX0ov3U2": {}, "sKjIeyFS97dYD7Lk": {}}, "longDescription": "cTKYpCfl6HPy5cJf", "title": "AV5iOfzwt3bpxRNt"}, "6lKoMjCPtEKeBWTm": {"description": "78Fn8TvZVTe4L2lX", "localExt": {"rVPX6r5ZTcnVVOKM": {}, "ApTcWsFRUlWBp4gB": {}, "s9UufgsVbG6TUe3j": {}}, "longDescription": "buQ7HMPO4ozK705y", "title": "kRqSPYZgPm4JLsXV"}}, "name": "tBOEetHsxAJ8Ny1L"}' 'RkPU9hrl5nkpEdBe' --login_with_auth "Bearer foo"
platform-get-view '8bYWdok4UnUEOyP0' --login_with_auth "Bearer foo"
platform-update-view '{"displayOrder": 5, "localizations": {"lTkQNjxhXdj1CG0E": {"description": "Bgst9Qu8Ofl2oB8V", "localExt": {"TjF0pD3NHU8iYUOt": {}, "G5gbQSKW2MdgCH4b": {}, "WxRF6fBPa6GOuV5z": {}}, "longDescription": "0p8jaJs2duQqawPr", "title": "xi6F4elhy9CZ94CA"}, "UVW8FoEf8tjCjWc2": {"description": "2qqDfNz59jHwSDQH", "localExt": {"admAo0lzhPm7RmaO": {}, "r6TLwVyE42ApAb7C": {}, "Kt79wAopZL9Cw6K9": {}}, "longDescription": "h55mwUvhdBOgumV4", "title": "wAsd4ifGd0bkWrlh"}, "tfTywRW4fmg6btk3": {"description": "mAO4EtB0hn2x1oTO", "localExt": {"X5gBQlVDx9neFHWh": {}, "DRJtyYEt7ygZleAo": {}, "UuVKneoO10ytPdJ8": {}}, "longDescription": "SY3qoogOxoPYvdIB", "title": "JYyGURjEjnslEYM8"}}, "name": "ngVT1ewVxvgAocOq"}' 'sd5v5n7eXCo9gZWd' 'xfIdW8fNAM5YdHiv' --login_with_auth "Bearer foo"
platform-delete-view 'K2Q0WwolQy037hJM' 'OEv5W0v25yAObZIb' --login_with_auth "Bearer foo"
platform-get-wallet-config --login_with_auth "Bearer foo"
platform-update-wallet-config '{"enablePaidForVCExpiration": true}' --login_with_auth "Bearer foo"
platform-bulk-credit '[{"creditRequest": {"amount": 82, "expireAt": "1984-12-05T00:00:00Z", "metadata": {"8XAKKWMDebehSjpt": {}, "0wrfWPXaI1Jb75o2": {}, "MFOa6xgPt69QROGD": {}}, "origin": "GooglePlay", "reason": "L3HDL4yx5I0euBsc", "source": "ACHIEVEMENT"}, "currencyCode": "vs25eiQO3oWdgXdm", "userIds": ["e049k9W6ZLVJzRpU", "1IxL1OtleUBqBO0Z", "sITfVruDukun42zP"]}, {"creditRequest": {"amount": 97, "expireAt": "1981-05-29T00:00:00Z", "metadata": {"Od4yZyMKyED3qDO5": {}, "HXp5oVkhESbHQ7hv": {}, "Tlzf7XwQtVIYU87N": {}}, "origin": "GooglePlay", "reason": "7Bq5bcfPW4pPZB9Y", "source": "REWARD"}, "currencyCode": "DgMiyBGygWFTAY3T", "userIds": ["Blu2ZP0IkiYXGk6B", "h5mOwPCPKVPlOGfF", "oBmSLi0R7zDFMoNT"]}, {"creditRequest": {"amount": 89, "expireAt": "1992-04-11T00:00:00Z", "metadata": {"4kxmHtFbjqurHix0": {}, "QYycDH5we2Mx0sYC": {}, "nYPT4i4mxc14iRfz": {}}, "origin": "Twitch", "reason": "J5imghdfVhjnjd66", "source": "OTHER"}, "currencyCode": "sRYO7wbYh7q02W8t", "userIds": ["kTURUFmqNc8xhQqp", "hFvDlFd7iyZpvWVJ", "tccNorRls7EC3nDn"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "FK6ZuvlzGCII156h", "request": {"allowOverdraft": true, "amount": 14, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"rnEsxSE4vBzG7VK8": {}, "sWEshmZf5fEdvjby": {}, "JPQ1qdRcJjsme1Ou": {}}, "reason": "kIfIZVH8q8svV5hM"}, "userIds": ["OSfpyJkJlmJmTkFv", "GtpK43uORGREOOwT", "B7wkY6nuUEGJ3k0H"]}, {"currencyCode": "uY8dhNCDWWpN3B6t", "request": {"allowOverdraft": false, "amount": 2, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"UREoBSFtCLy2CqgC": {}, "G7JwJCDqkzOdFwLJ": {}, "pIPxzLE1V9U1NgpH": {}}, "reason": "7Oc44yjRdfqZgv34"}, "userIds": ["WMx0MiPAjnWIhFrq", "Sn4erXEtU1CaD8Aq", "GqqjelcN0GJmPwUT"]}, {"currencyCode": "sMCGBNhmUt6fzYRn", "request": {"allowOverdraft": false, "amount": 3, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"16HKXX1ft5nBA9xN": {}, "IJVuMz04evSdE2FM": {}, "cKd7c94rEmIYuAT5": {}}, "reason": "OAcUwYHGmG5rNDBF"}, "userIds": ["wmi0i1WABBbq8IzZ", "1oU37vjfyX5YLaM0", "sMFLX9ZhFXcFtfBS"]}]' --login_with_auth "Bearer foo"
platform-sync-orders '3ZIHofhwyM6Bw2sF' 'GQ5DQoDwzrKPOZZn' --login_with_auth "Bearer foo"
platform-test-adyen-config '{"allowedPaymentMethods": ["V3zR7YxSu6addocg", "10Hy9jx7gBHTOHHA", "rjld0LnREsrrB2pJ"], "apiKey": "7V8BSrucjO3zvSM5", "authoriseAsCapture": false, "blockedPaymentMethods": ["eVNHU9GcOivIfcCJ", "t4U8VSgXoi9Fw25b", "9qXzlIK2G6AUjBCd"], "clientKey": "f0Rp5e5IvFuN1oUs", "dropInSettings": "CnBmGMx5F6EhM3dK", "liveEndpointUrlPrefix": "vIG9MR0hTINvq1VR", "merchantAccount": "9SJUfQEX996Mh1sQ", "notificationHmacKey": "3Dw3uyjgQNAs9188", "notificationPassword": "Qm3W1De2McGd10we", "notificationUsername": "fF0CJlH55RLEgeAs", "returnUrl": "SpQdcmGHZuRVQ8tz", "settings": "wqMayP8A3HGNI3Bf"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config '{"appId": "jkFd6MHo6gGQ5mCh", "privateKey": "YoKD7yqCR03RovQZ", "publicKey": "hwfjkq9iyTbyD3D0", "returnUrl": "1tRpuuyIagSSzEL8"}' --login_with_auth "Bearer foo"
platform-test-checkout-config '{"publicKey": "H4euLufhQj2KP3LL", "secretKey": "xl9Hs2L2wlpKBVUR"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-neon-pay-config '{"apiKey": "xHefz77a9fntCNiH", "webhookSecretKey": "BRUNCPSre5GmZzCQ"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config '{"clientID": "wilS3IxSjlyvR9Px", "clientSecret": "G9Lji2Vc88W8aLjI", "returnUrl": "xVGpdOqguxvRwI9Z", "webHookId": "BTipMRlhK9DMMaI4"}' --login_with_auth "Bearer foo"
platform-test-stripe-config '{"allowedPaymentMethodTypes": ["ryVDvNaruZxwTfh9", "gEs6GF247cbBLjUr", "5z03wxB3E9hrE9f9"], "publishableKey": "COFrOr6wJDBwIDsJ", "secretKey": "HNg6TvNGjwI4TbTw", "webhookSecret": "BufUorJouduhCEJ5"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config '{"appId": "XiKDIE9YugcupLxV", "key": "BcRkfhRuqkOTHSia", "mchid": "7oFd1fEmDuyAsQGz", "returnUrl": "wJR5poI718RQnj4i"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config '{"apiKey": "mu6XFfRcWDXhq1Ym", "flowCompletionUrl": "Geygr2S4Yw8NmPaB", "merchantId": 9, "projectId": 36, "projectSecretKey": "bHcPHEFuEVP9bF07"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config-1 'gnWDULkJPQR0UJMr' --login_with_auth "Bearer foo"
platform-update-adyen-config '{"allowedPaymentMethods": ["8ouccGH0B4LCe2h0", "iFCCZgFWs5s0nT89", "A88GDOUClGyzYgnY"], "apiKey": "Tdim6PkRoq5TO65K", "authoriseAsCapture": true, "blockedPaymentMethods": ["h8ztRJkXxUAj3jzZ", "vEaY103YUIMuSjDH", "z0zPWMZQNNP2JqQq"], "clientKey": "hISTBT1Gofv4SuaZ", "dropInSettings": "8yCB9TVZnuzgvAZJ", "liveEndpointUrlPrefix": "Rm71EC3ENuvD8OPs", "merchantAccount": "p5Z3ez84KVB7HeWP", "notificationHmacKey": "nVeFdy5ezlCU6SGz", "notificationPassword": "kMpTL2wxobjxAbag", "notificationUsername": "qEmXn6U2VeV2emK3", "returnUrl": "JecJA4skqCbPxRkI", "settings": "AFQh9yDdoLE2s7mr"}' 'VrmTJwtBTzQTrNo1' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'LcWNf7xHpi1JZJjI' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '{"appId": "RtCfqDHSlo54zSnR", "privateKey": "N0zGMworzym1z3Zd", "publicKey": "etOic9AQOFWpdItL", "returnUrl": "BhvKJq9tWz9yui8a"}' '6jOflFJlZEhz1QDe' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'h05hj92bwVVxJ62Q' --login_with_auth "Bearer foo"
platform-update-checkout-config '{"publicKey": "5AOAOyL65cPaOZA8", "secretKey": "BG8KcVWOX9n3YsjJ"}' 'exnFA9Umz3KPICya' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '5Fk5TPaEbX29cV8v' --login_with_auth "Bearer foo"
platform-update-neon-pay-config '{"apiKey": "7MXctihtxMnIr4b7", "webhookSecretKey": "jyfL3zMkklGCPISl"}' 'snVA6z0uSfNNpJUY' --login_with_auth "Bearer foo"
platform-test-neon-pay-config-by-id 'zJxnOyvqmswrToyB' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '{"clientID": "IQumxDfAxNqCUtiz", "clientSecret": "YM97ebZcYqwfIHPW", "returnUrl": "MkOmrT5HL16jMwEC", "webHookId": "nmwJv4rpqtzDaz0W"}' 'UJlBCHzJ2v9K8c1z' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'OlZg30pagfP0FfOM' --login_with_auth "Bearer foo"
platform-update-stripe-config '{"allowedPaymentMethodTypes": ["BOpeQT4zYIbU4i9m", "LyX46Alt08rrnG8y", "2ScXkwjpAp82pGcx"], "publishableKey": "vXaG9LzHpMS53jll", "secretKey": "opwirRo3A8WxnR0Y", "webhookSecret": "aMsF3f5KLtpTSsPM"}' 'GDZTOwEP5Bhh0NSt' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'WIggmhfAzVdNYP7A' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '{"appId": "o1z7FeJM2fWXGk7J", "key": "ObSHksRkabpmvRsc", "mchid": "7ZYvXCT6m6mRZAlL", "returnUrl": "BczJVeil7GbG1ISB"}' 'CkcnpxKUxLjmxhBS' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '6YypRW7fNntaIEtD' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'I6MbhxkQdezbmf39' --login_with_auth "Bearer foo"
platform-update-xsolla-config '{"apiKey": "2ersoZ2KbMb5jal0", "flowCompletionUrl": "ruZmBXlGSp85q6fu", "merchantId": 67, "projectId": 11, "projectSecretKey": "aSaIsMyLKPPIZx0z"}' 'dNAagipZwiaBrFrX' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'tGMjujfHZB1gMI1B' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' 'R58uCVldefonHJZA' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config '{"aggregate": "CHECKOUT", "namespace": "NCjIySe36SA5dxAT", "region": "Lv5PkLvraRzChdjD", "sandboxTaxJarApiToken": "Gdlk2A2jHbAPNGIn", "specials": ["STRIPE", "NEONPAY", "ADYEN"], "taxJarApiToken": "WwIVXp9avUr6Iydp", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '{"aggregate": "ADYEN", "namespace": "eT9okl6MlWOl9feW", "region": "O2bmOikTBJHTEm5P", "sandboxTaxJarApiToken": "Seyod5L6OooYoQn9", "specials": ["CHECKOUT", "NEONPAY", "XSOLLA"], "taxJarApiToken": "y7j2BrdCAm3slCwa", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' 'qHpE55sjxBGijw0d' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'QtZNonMrPkzUe9Sg' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config '{"sandboxTaxJarApiToken": "lAJGyZS0I8FevJiT", "taxJarApiToken": "98HUBp56Q4WETxtG", "taxJarEnabled": true, "taxJarProductCodesMapping": {"sE89JW8UU0RsB6dv": "rpmInhHYzVVlHGFS", "wjby6rMYkVQnZDUA": "bINRKQsxUO1YMxAn", "dOj5O6IBwXJjgQjg": "LoJyqwFVBd1ZjaRX"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'EdWgS12bSbPgOCWU' 'ogizeWOPUMrqgEIs' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'MwNbfti0LoTBcNzy' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'oCSw1t653G3ydYmG' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'zvx9bSqqyAPha5b6' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'STEAM' --login_with_auth "Bearer foo"
platform-get-apple-config-version --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'QTPTytHeeXo7gOFV' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'LZCBWuVIROZuqdJB' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'i8pkn98VtLNkaIQJ' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'fkFDhSeSGXtZU5Su' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition '{"itemIds": ["IhMSaDRp17dUWHcj", "rb6qNeKpOxPrlG9s", "vdqsiVTqPbzY1yxl"]}' --login_with_auth "Bearer foo"
platform-public-search-items '7zeEpmSPO6KwlJQl' 'j9Ii2jARwzowk9Oo' --login_with_auth "Bearer foo"
platform-public-get-app 'iPdnq9KBqBwiNCsn' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'K8CcO1OHbpQZtwW3' --login_with_auth "Bearer foo"
platform-public-get-item 'EwLre1bL4dJnkRLJ' --login_with_auth "Bearer foo"
platform-public-get-payment-url '{"neonPayConfig": {"cancelUrl": "bMvOGSd7uMrmQ2Sa", "successUrl": "Ld6M7TM3wnJyExuo"}, "paymentOrderNo": "5z9RAcYgYZb7cAak", "paymentProvider": "PAYPAL", "returnUrl": "zYpqUsliPyXZGYIW", "ui": "5ZDtWbdkzPP47RcU", "zipCode": "Ii2CoNj4EG2emxKQ"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'k8cBrt5E8k8rzDZ0' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '8j6ICP75cm8YDChF' --login_with_auth "Bearer foo"
platform-pay '{"token": "i3zLvfQWC85MxWxv"}' 'W0veFl3uU1aMD0mc' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'zWxc8f1s2QPMMZsf' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ALIPAY' 'dvKZyHChRPHvdkcK' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'W21B5EFtD2pYaKTz' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '1gcE2XCwTkRUIX6I' 'FHNmB9mYBvtOwxjq' 'WALLET' 'wzuIpGBYHTHoSVxg' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'QCbpZx5yMGIQ1ZxV' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'QFkVVEf36S7yPgG4' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '8bk6PwH1tdEAJSqX' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'A0Wv0zWGvkc6byp3' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'mvyYT3GuaZVTxBlw' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '1IWeXKFT4rfSbbSl' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '{"gameId": "DPGf9Fn32SJNPZkE", "language": "oK-ekRv", "region": "S4pVRcCHIGfmCMTr"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet '9ACnI2sMrEgl7ZR1' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'HCkf2Sw78lLGKjDH' --body '{"epicGamesJwtToken": "uXt358gzqRMuMPrI"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'ekxq58fikq83hqJ7' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'HP63Se6kVW5fkl60' --body '{"serviceLabel": 71}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'hrqWCTXOxQUpyFgZ' --body '{"serviceLabels": [81, 39, 15]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '{"appId": "pvJUuyPdzx8BM2wE", "steamId": "gTtLRT5stwQFUEbT"}' 'PQ8p7VMlxEXnqHwM' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'yKpwphjUXvM1GqMk' --body '{"xstsToken": "Z44UXgdBqtJaRyDl"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'P9qIZJ5Krx6KkHag' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'EugKJxkU8Y58COtT' 'NjnNSikJDg6ujKvq' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '0CIa1YCK9PlMeQpr' 'DEMO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'eG0HwUXxQTf5YpDU' --login_with_auth "Bearer foo"
platform-public-user-entitlement-history 'GYsJBEkYUrLv4qUi' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'TkFcLBrg2JB0WiCp' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'VBwvAffJ3btt0PpQ' 'Y3Pnnic80yEO8dL6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'Jh10XMUGeDavCKra' 'dJmJFUsU418vAlmf' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'Gg9NO1Z2DvnAxH3p' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'S3jyCkGKltBNE2Ub' 'hNtH3yYg4Qnn2uhd' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'w7C9Bx1LQOTCbAPL' 'C3iqrkyJFOVaewFc' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "options": ["lG7rEXi6LEqJERpb", "xEq07txnvZZeAf7Q", "BuZK5GJlBncg8tQn"], "requestId": "JOKHC16xjJZ4kiU3", "useCount": 82}' 'cMtwINUlrhIpnlam' '2EefVopbpPhsana0' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '{"requestId": "uXG7GUTV1BwgkLDj", "useCount": 13}' 'pjVktyoNSsEHlzyd' '0SarkhltUxgbN5eE' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 87}' 'oJXxVEfnaqX8NuZt' 'RUTKUvR69PImy6Cc' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement '{"entitlementId": "wlqJ4MO3L8x1H5Og", "metadata": {"operationSource": "INVENTORY"}, "useCount": 8}' 'HypgsSeKCvtPz7ja' 'gBG9a1TZ87ltClc3' --login_with_auth "Bearer foo"
platform-public-redeem-code '{"code": "RDXF5055tUlenimj", "language": "RBpM-Yd", "region": "d24ZKfvMf1T5FzYM"}' 'f1jaCgZosntPzP1v' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '{"excludeOldTransactions": true, "language": "CQ", "productId": "0WEIetOXMt37MXy7", "receiptData": "Fp7lUfQqXrqGadwv", "region": "KlJFX1ZHV9yo9Ur1", "transactionId": "hfhmGEKuVUZdCacR"}' 'GataPrcgTcA71dtq' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'tSUN4zvBzGh3mhID' --body '{"epicGamesJwtToken": "NuMBZegHtB9uTCii"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '{"autoAck": false, "autoConsume": true, "language": "sJdE_qM", "orderId": "JpUf9RpcfEQn0O6D", "packageName": "8PGQuazAypgWhTED", "productId": "5YmPTBUkm2Fyvdgu", "purchaseTime": 59, "purchaseToken": "oGynp6xcqNKJnAhr", "region": "St96OaARAjHLGV3s", "subscriptionPurchase": true}' 'DyniVESUgrROrP1i' --login_with_auth "Bearer foo"
platform-sync-oculus-subscriptions 'p3jNG68DByf2UMPt' --body '{"skus": ["igq9zOQOcAqBj0bX", "hOr9OHt6zx1i2W3G", "Y7tdh8hHlQyMlgfk"]}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'TsAThLyflAqqAP4M' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store '78smYdyge6DroOyw' --body '{"currencyCode": "OxI4G6jZzoYIFAvY", "price": 0.08555178900358829, "productId": "T8XQw2EOq6BFjmN4", "serviceLabel": 82}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '{"currencyCode": "MGInO4yznh2YpZvv", "price": 0.19499790960161456, "productId": "ziSSiSpXeWOGayfR", "serviceLabels": [88, 9, 20]}' 'NRsjQuDEgO3MEQNL' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '{"appId": "6ijLRvQOgoaBooTa", "currencyCode": "wHLMxhx9nC3o6pXU", "language": "Nekm-DyOB_420", "price": 0.23770025177391996, "productId": "oaBVemsbkaXZQ6nT", "region": "j9rZpkSntuOeaPAy", "steamId": "PeEGBepK1Ix4SwjC"}' 'YjCHniVSn1gYGal5' --login_with_auth "Bearer foo"
platform-sync-steam-abnormal-transaction 'NrBtT0om9OlGzpF2' --login_with_auth "Bearer foo"
platform-sync-steam-iap-by-transaction '{"orderId": "5qu98RhktX6qwkXb"}' 'CLbh8t0zPkQWRUlg' --login_with_auth "Bearer foo"
platform-public-query-user-third-party-subscription 'TWITCH' 'EqYudHlA4AxeEIfU' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '{"gameId": "xJ2xMSNNBxCeN3pG", "language": "Zw", "region": "Gvodt413MRdG8qAP"}' 'iANv2Ar8yXV6qf6v' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '5SgcJPZPUh2nHQwp' --body '{"currencyCode": "Wi8HZ6C0VJ0fK2m6", "price": 0.18789654035947356, "productId": "Q5Ao8TITYiHSR2SE", "xstsToken": "Jh1YDedZdNqkXPWZ"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'fT8ZfdKp9q4nXuK0' --login_with_auth "Bearer foo"
platform-public-create-user-order '{"currencyCode": "tJAYror2XdtSCG7Z", "discountCodes": ["UL7wS3HaMTXAX6y0", "ExOoIpWzacOvwUsn", "IbQM3ZAtyEWKWoZR"], "discountedPrice": 90, "ext": {"dNfMiwgSvsTRmJsO": {}, "m0wVFyHvFhRMCFJu": {}, "A0DEMgykqqjoHTpI": {}}, "itemId": "PMSRAuPI7mSZQ5UD", "language": "JF-WxAi", "price": 46, "quantity": 77, "region": "cO48pthyYpBJDHII", "returnUrl": "xTIGI5EssYllIqjJ", "sectionId": "zuQ8GglVgxjOGQGl"}' 'Hm8VTN56tJKwD8O0' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "7L9GG1uenDihceaL", "discountCodes": ["aK6s3Hha69MgxjGJ", "x62mkfVlu4bGB1py", "dgPZI0fKW8LeQxIt"], "discountedPrice": 20, "itemId": "NziO9Bz2wx4kDAm8", "price": 61, "quantity": 70}' '9a5mdlXTCL467xHb' --login_with_auth "Bearer foo"
platform-public-get-user-order 'AiD3Pr3mXZO1PnbS' 'lfVRlAI8F2f3mEv0' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '9kAA5hnQtd4bcivH' 'GIEplRpcHDWcIoJ4' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '5L0Ze3YamxKDSZTl' '4UiJSCbG4UmG3TkM' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'TzOcBIciiKwRs1E7' 'sH2G9MJ6F7Rr7O15' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'jqeKssQpme6eyM48' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'tE7eJRsXNeveQXqn' 'card' 'RYmEIX40XOUoLOa7' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'oDz00gxcoaH6u9TV' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'f4DvEzpoPRiClZ6r' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '{"currencyCode": "lwX99AHMLHqguYyk", "itemId": "VWzNwPcvGyieBsRU", "language": "Vy", "region": "ABOgTKtnaA7O35Ia", "returnUrl": "ytd9CsAMTZC37xPX", "source": "xnfggnZ3EZp6wSAu"}' 'fwYirs9lwvPKd925' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'u3fFLV0YeMrVaYST' 'RYGFzgLZ7gEypQf2' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'Pn9A4gcbDJ0LmdnO' 'PkIT1C6KGTpA7JZ6' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'xullPROSfiW9zcxm' 'gNfTHu3vkZt9FgWc' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '{"immediate": false, "reason": "ibQNBz81zRPntxpg"}' 'i7tXIcNEcGJjOCXp' 'uix5vnPeTu9evbRo' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'v7Bm40CtZiAxk43D' 'GV1SCkw8U0d4FvVm' --login_with_auth "Bearer foo"
platform-public-list-views 'PMtpRMWSQ8Szi1Ir' --login_with_auth "Bearer foo"
platform-public-get-wallet 'GidRmR5BGRJhFwxm' 'kGfPI3j4luXQuuLt' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'Ya86kvL6cBZQssUU' 'XOsXMNdvW1hbvGen' --login_with_auth "Bearer foo"
platform-public-get-my-dlc-content 'XBOX' --login_with_auth "Bearer foo"
platform-query-fulfillments --login_with_auth "Bearer foo"
platform-query-items-v2 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'bm3QtsY5WaKM5YY6' --body '{"itemIds": ["pYrmeMIHLS8egV8X", "hgDjbrum8UxcutmV", "g8APWKxoj6MF68Vu"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '{"entitlementCollectionId": "KDoklYmkytCAH8Ji", "entitlementOrigin": "Oculus", "metadata": {"8y1PVriIyv9kjuiA": {}, "GiXx47etMikLFggY": {}, "Dc2FMbzZoeKagnKf": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "Yifzvr9OqTsInGzH", "namespace": "FpFXYJtHtqwoIwQB"}, "item": {"itemId": "eIALI8JNIII4jrzr", "itemName": "PsuMziNM8AB7RRxi", "itemSku": "ZH3ngnitURdMjZLY", "itemType": "CaeklQcFY1QIk1h5"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "KvMGd6hQ2mHjmLu4", "namespace": "oFlReHy0JyZv7hon"}, "item": {"itemId": "qeiGTTqpgVsY1kPN", "itemName": "dJiJXB3yjNUPIfvo", "itemSku": "XRO0CkW1ZcgUSbbn", "itemType": "ffBWRaJN1SjCFLDN"}, "quantity": 72, "type": "CURRENCY"}, {"currency": {"currencyCode": "54NNs3XdhMbQX9D1", "namespace": "znEWw9p7g4UsQCTK"}, "item": {"itemId": "Dh5n9yc34xF8qFll", "itemName": "M1LTrl4MP3Nl4T3u", "itemSku": "jvV7W6ADLtn7oInn", "itemType": "1Bz3wM3BI51etn17"}, "quantity": 84, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "mSVHZ6wtPVAwgvxY"}' 'xXJTduZp1nNYHREm' --login_with_auth "Bearer foo"
platform-v2-public-fulfill-apple-iap-item 'm1cBuaRaGeM8yxRf' --body '{"transactionId": "ejqSbVgLd1FoyNFG"}' --login_with_auth "Bearer foo"
platform-bulk-fulfill-items-v3 '[{"items": [{"duration": 31, "endDate": "1990-06-15T00:00:00Z", "entitlementCollectionId": "sjroKHPApA8GsGwy", "entitlementOrigin": "Nintendo", "itemId": "98dzTL8azKCCNBZp", "itemSku": "wRFNYxx2dr6DDuDH", "language": "XcfvXPXJURX3XwhO", "metadata": {"lgcpcOIxqCMSpZxb": {}, "y2J9vGOUeSeGb02v": {}, "DPUpv5VEdIG82dpI": {}}, "orderNo": "bfxVFfdvKQVgPQw3", "origin": "Twitch", "quantity": 22, "region": "VXe4xBPDWHRHCCVD", "source": "REWARD", "startDate": "1989-12-20T00:00:00Z", "storeId": "jOo9fvfXF1VsikD3"}, {"duration": 70, "endDate": "1989-05-02T00:00:00Z", "entitlementCollectionId": "7z4Pb5jyGID39Ung", "entitlementOrigin": "Xbox", "itemId": "D57FjYKlJiRIvhej", "itemSku": "77OSPwdzMSmrSvQd", "language": "sAdTUGpd8KFrXKFA", "metadata": {"2gdjQCYoE8b0CZet": {}, "LfpFNyp7375rhOmR": {}, "4zFjoJZVKZjOD2eP": {}}, "orderNo": "KAKYjJMVnYj2yKqa", "origin": "Other", "quantity": 90, "region": "WpydepM3ap069B9O", "source": "IAP", "startDate": "1987-05-24T00:00:00Z", "storeId": "Aq8oebnS4Y2zkGYT"}, {"duration": 35, "endDate": "1989-04-01T00:00:00Z", "entitlementCollectionId": "yJIveX52r6Inl9VT", "entitlementOrigin": "Twitch", "itemId": "V25N7NAvZdGuyYEY", "itemSku": "ZE3KaGSdhEGKcp6g", "language": "1A8O9N9cbYBK6XOB", "metadata": {"DpR7SH93AE1Toj5v": {}, "ygVvLSJvdsGpmmUe": {}, "MikW3s54zffAL2DZ": {}}, "orderNo": "7gBhy77iRVFfFvWe", "origin": "Nintendo", "quantity": 79, "region": "h9uKLXDaRf3pxKtJ", "source": "CONSUME_ENTITLEMENT", "startDate": "1971-12-24T00:00:00Z", "storeId": "pQWmnS52ZuuuI7F1"}], "transactionId": "xpVrcoXzSOEGEDYf"}, {"items": [{"duration": 17, "endDate": "1993-09-22T00:00:00Z", "entitlementCollectionId": "a1R6ksxLYGkOLgRe", "entitlementOrigin": "GooglePlay", "itemId": "6SuHovoQlk5wL2oX", "itemSku": "DZ20Bw2H4tz6KUC4", "language": "jXGj2G0GZ3JBYi9b", "metadata": {"BKBRpdbLCiwxOx2X": {}, "Qn94xPqXhqeNMDGA": {}, "3O5hQAl6U2g9imVM": {}}, "orderNo": "h3i7j095rDL6lEuB", "origin": "System", "quantity": 71, "region": "ehVCf3AwIzUdQ6sT", "source": "OTHER", "startDate": "1997-02-21T00:00:00Z", "storeId": "nyHKkk6Gh25tEcX9"}, {"duration": 66, "endDate": "1980-02-07T00:00:00Z", "entitlementCollectionId": "FnzE6yR1wLTgjsnB", "entitlementOrigin": "Twitch", "itemId": "Ap1roclyXllFitPa", "itemSku": "mSKRzDIZgSk6suS9", "language": "0ZbDdmjU11QIZtkS", "metadata": {"n8QRbA5V4gjWv1W6": {}, "cqnvSuKswQ7vH8GS": {}, "cnP5QzRBY1Urefgm": {}}, "orderNo": "VFBVz4KRCU0p4jIt", "origin": "Twitch", "quantity": 28, "region": "gzH17IcfJyGulmBy", "source": "PAYMENT", "startDate": "1980-01-24T00:00:00Z", "storeId": "J98WRjqYieXRthQZ"}, {"duration": 44, "endDate": "1984-07-31T00:00:00Z", "entitlementCollectionId": "LU9w8MJRIzIgJKg9", "entitlementOrigin": "Playstation", "itemId": "cnrJ64BOKqywS6DK", "itemSku": "NSeb2UMWOgVeYkCv", "language": "qq0tO15pEVG7sNih", "metadata": {"xpuuL7DJCxvzZnh8": {}, "oBAk1MNCAUmdnLaV": {}, "RUu5VbjwPa9rYgHa": {}}, "orderNo": "xeTT3ebuaYPNBp9w", "origin": "Playstation", "quantity": 59, "region": "LxO2n7WJQFzBCD9S", "source": "PROMOTION", "startDate": "1999-11-08T00:00:00Z", "storeId": "D7JLsIM3VOMRvvqk"}], "transactionId": "XDMPzOB08tpk0qhZ"}, {"items": [{"duration": 1, "endDate": "1976-06-07T00:00:00Z", "entitlementCollectionId": "BJjokLAaL4oAF2lq", "entitlementOrigin": "Playstation", "itemId": "X1sDjSWiSXsV5rJ8", "itemSku": "eZXZ1TLMZnNL3DQK", "language": "45IAtbyUDDSJSV8p", "metadata": {"zl1lfIR7jnetIJPG": {}, "ObyWCLyFPHaxkKxE": {}, "DvSoi2X9SygvMG8Q": {}}, "orderNo": "AaWUhIguMvKDOrx0", "origin": "Other", "quantity": 39, "region": "QXKEroyKz2reP63E", "source": "PROMOTION", "startDate": "1995-06-18T00:00:00Z", "storeId": "rVT6Hn8B2d1hZUno"}, {"duration": 87, "endDate": "1985-06-28T00:00:00Z", "entitlementCollectionId": "Mt95DEjxqhgYqmMq", "entitlementOrigin": "System", "itemId": "qJsgZPfuelAiZBZc", "itemSku": "QGHHGI7csI8ecZSv", "language": "zXYOytshBcKQytQa", "metadata": {"gui6lsKF28n7UC7y": {}, "1MKYVeoGFrDb8unX": {}, "v1iE7YgEZspOJ0Ni": {}}, "orderNo": "Zl6OVLxKtkBpaCG8", "origin": "Xbox", "quantity": 42, "region": "2LYqtQcDN7OMCehk", "source": "SELL_BACK", "startDate": "1971-08-26T00:00:00Z", "storeId": "cy8wsWaPyppR3ztP"}, {"duration": 91, "endDate": "1985-08-08T00:00:00Z", "entitlementCollectionId": "2haQwVWONEpAPedz", "entitlementOrigin": "System", "itemId": "iXVzrG4EdKn8eypT", "itemSku": "zI497DG0ZNoJvvi4", "language": "Ys50iE7IjZoDzMmM", "metadata": {"goMxZZ9AutWDfVOI": {}, "Nhql9CdDX4xiHpdf": {}, "KH35RWUUVEHCB5wz": {}}, "orderNo": "F6oLIrAwjAsgo51X", "origin": "System", "quantity": 36, "region": "JBG2PmyeFaBiT3Sy", "source": "ORDER_REVOCATION", "startDate": "1997-11-13T00:00:00Z", "storeId": "SyfjukWmkfkiF2GZ"}], "transactionId": "PuyWBVH66JU1IICV"}]' 'NNRV4lBToTcn1l44' --login_with_auth "Bearer foo"
platform-fulfill-items-v3 '{"items": [{"duration": 9, "endDate": "1997-01-04T00:00:00Z", "entitlementCollectionId": "CcrvsV2I4X26p21i", "entitlementOrigin": "Steam", "itemId": "9jVs1lYK1Mx9rEFk", "itemSku": "Dqb31AZzwiQBaGdS", "language": "41VRIyAHjYxVhCbX", "metadata": {"beBEoTlfR33jqIRo": {}, "XcCPaLXJM2B9bMoh": {}, "kWsFKIdycYHQcu7J": {}}, "orderNo": "kKBcLFRf50Y7ME2Q", "origin": "Nintendo", "quantity": 49, "region": "YiYqap7masUcayqm", "source": "ORDER_REVOCATION", "startDate": "1997-01-31T00:00:00Z", "storeId": "vhz1T6cSrZL2CgHx"}, {"duration": 6, "endDate": "1993-04-11T00:00:00Z", "entitlementCollectionId": "dEg8NYuc4q5sJVza", "entitlementOrigin": "Twitch", "itemId": "8WPQGPclChxLfbXr", "itemSku": "H6f2GDrNbLOjGz34", "language": "ct0ctEeH43wYuLnI", "metadata": {"7cTzIUERPlQI99hM": {}, "c4NbiJWP5r9EwbIG": {}, "MGJ70P9IqAyNlZ2O": {}}, "orderNo": "wFSebBkXkaxtY97T", "origin": "Xbox", "quantity": 43, "region": "JH8bO4GDHT6ZaUUk", "source": "PROMOTION", "startDate": "1998-04-03T00:00:00Z", "storeId": "NXg7zd6SFpkV7cAI"}, {"duration": 58, "endDate": "1976-02-22T00:00:00Z", "entitlementCollectionId": "zlcxXsmGGcJhauxf", "entitlementOrigin": "GooglePlay", "itemId": "W1fDZL80oPQ0s7Qh", "itemSku": "C8hgSgytNEojK3Yg", "language": "WH9l7rv6XUSINd4k", "metadata": {"eCeiw7P2PtUrPawQ": {}, "PaHARrhjbEU5n0PN": {}, "uFyKW95dJsGoBIjC": {}}, "orderNo": "KlD3axSivItV1txL", "origin": "System", "quantity": 4, "region": "NmdHTGLtX6TN5ctY", "source": "REDEEM_CODE", "startDate": "1980-06-30T00:00:00Z", "storeId": "ZnYF3hWmCCIrP0lJ"}]}' 'Xexseo2e6BCNJTTR' 'IHDKdVfOUr14yZH0' --login_with_auth "Bearer foo"
platform-retry-fulfill-items-v3 '0n8MsRjaB8iurBWW' '5jSJi0seeGJIqnat' --login_with_auth "Bearer foo"
platform-revoke-items-v3 'ME8GnNWfAY1yY6D1' 'Euusf0eOzoSyKttY' --login_with_auth "Bearer foo"
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
echo "1..510"

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
    'wUUlMRG8vO0OSsJm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'hOJDUyyag9jBDJFJ' \
    --body '{"grantDays": "GOEiWJ8cLrryS5a6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'A4tL8YKMrUBL6dDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'VwPIt1hrg2mhbI0N' \
    --body '{"grantDays": "Dshb7ZzQuBPyNi1G"}' \
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
    '{"clazz": "hZHEj6p5grjk5wzd", "dryRun": false, "fulfillmentUrl": "HqlTTkL8cmpA0sZ0", "itemType": "INGAMEITEM", "purchaseConditionUrl": "19X4zFOvdRTpGmBU"}' \
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
    'voCmprkv7A8MRutC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '{"clazz": "KCsqmx2zriOGB8b5", "dryRun": true, "fulfillmentUrl": "a1POTXhXLRU5prAd", "purchaseConditionUrl": "qnnPOiTVzAeQq6rn"}' \
    'WJoTpYoe2uHaWnO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '8YwqHZnEDkfmNbDT' \
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
    '{"description": "MGgET2yS6C8a8L0v", "discountConfig": {"categories": [{"categoryPath": "QDS4EVpBmsUzx64G", "includeSubCategories": true}, {"categoryPath": "nOFbBtvBw81hUgtO", "includeSubCategories": false}, {"categoryPath": "CIoZ2rkomSj52mAI", "includeSubCategories": true}], "currencyCode": "o6EW9QhzU8FwQtZp", "currencyNamespace": "fUoyoiUjmqOyQ7am", "discountAmount": 25, "discountPercentage": 65, "discountType": "AMOUNT", "items": [{"itemId": "T1z0GqDZN7ftHOhV", "itemName": "y48YYg1AkRh3NmbR"}, {"itemId": "hMxKeIgwq1NZmxa0", "itemName": "ghRG020QpWTNKsVy"}, {"itemId": "K8EU8JYc00PA2ef1", "itemName": "jFeqQ8mBpTuvLTJU"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 47, "itemId": "r872hJvrOCdAEZ2R", "itemName": "Ht3uQ5nFrPXwxJZQ", "quantity": 32}, {"extraSubscriptionDays": 21, "itemId": "cSXpU81S5H9XsZyv", "itemName": "ZOFJ5RrFZYcwfQ1Q", "quantity": 53}, {"extraSubscriptionDays": 56, "itemId": "F6YG1dD1vECBb01V", "itemName": "FFhO5FcdTvIDQI2u", "quantity": 72}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 88, "maxSaleCount": 73, "name": "SNZKqlJZsdnY04DI", "redeemEnd": "1983-05-05T00:00:00Z", "redeemStart": "1978-11-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["prZPBaERb7U9kK4V", "ctUmDhFVNa0JYzTb", "dnOnEarWP4nrJ5fN"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'K22saWaGvrzBdLvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '{"description": "UBZDnVrcwbsD0RDL", "discountConfig": {"categories": [{"categoryPath": "xWgEWwoHpV8E1xQZ", "includeSubCategories": true}, {"categoryPath": "a7Kw77UpCxNyx1jj", "includeSubCategories": false}, {"categoryPath": "66YPD4vNdENY1r1r", "includeSubCategories": false}], "currencyCode": "T97qA1OiblWlz2LX", "currencyNamespace": "QNqcONcJIsYRQz97", "discountAmount": 11, "discountPercentage": 40, "discountType": "AMOUNT", "items": [{"itemId": "17eNP3Y2nWlS9Sfj", "itemName": "h0htyVaGj4y9ahS7"}, {"itemId": "h7XVlmc5Rs5FVQSI", "itemName": "qObR55tV0BlN1iFv"}, {"itemId": "w0GSLBmie8SJckSR", "itemName": "bu7hgmUm7RVCURED"}], "restrictType": "ITEMS_AND_CATEGORIES", "stackable": false}, "items": [{"extraSubscriptionDays": 73, "itemId": "GatGQ1SeOXsg4jof", "itemName": "p9PvlQ1xdmr4JDpv", "quantity": 13}, {"extraSubscriptionDays": 6, "itemId": "vPGHjV7MNTpM7fSo", "itemName": "ds1zdVT0aWj58Oth", "quantity": 44}, {"extraSubscriptionDays": 59, "itemId": "d3jzMDAf40gKSizv", "itemName": "mxts5HSQvRAPG9Jo", "quantity": 98}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 77, "name": "beTeB9KgnFZQ9lVM", "redeemEnd": "1991-07-22T00:00:00Z", "redeemStart": "1979-08-26T00:00:00Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["z5jV7NTRYld9FJJ1", "0goNq8uq79Du28SR", "RAMaQFEzppeticck"]}' \
    'SUon7awfol07696u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 RenameBatch
$PYTHON -m $MODULE 'platform-rename-batch' \
    '{"newName": "xp5ieMjjOfFSx3AJ", "oldName": "N97kUjwiCmWQvbrx"}' \
    'QpUSnos6QiHyrcGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RenameBatch' test.out

#- 18 QueryCampaignBatchNames
$PYTHON -m $MODULE 'platform-query-campaign-batch-names' \
    'Rv27hj73EtufHuNI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryCampaignBatchNames' test.out

#- 19 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'p0GXpM4nbG7aww2T' \
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["DLC", "REWARD", "CAMPAIGN"]}' \
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
    '{"appConfig": {"appName": "W1Or7TvLoL0wwHoR"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "exBOron8wIdUbp7x"}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "KfbAJfW4iMIC52NU"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "nUWGxxfnMIDSCPr1"}, "extendType": "APP"}' \
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
    '{"categoryPath": "DWHcqfYp2EFxEaEH", "localizationDisplayNames": {"CGtg812NQb5Glh8s": "rTlTj61WdV2XUo1B", "O1rE7E12Fapao5jo": "9nJoKEb8tHmFwLGa", "n2SrKckNxLWH6rjh": "RL9uxoV5Oe8ktleP"}}' \
    'Eo1xBuRSv6VizgtO' \
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
    'XZy9cQ6B074dTJZq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCategory' test.out

#- 35 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '{"localizationDisplayNames": {"eOllKQNwJUGtC0tA": "hxn1ay6ruu7PYWHO", "DRb6skOj0lfYFGnQ": "CAWidWPjYgyebU6r", "HFirnUpZ9UJ4N78q": "HTGdn7gE4bwLzDEw"}}' \
    '2PYt8x9SSaOZcEvG' \
    '6KZh954BmtuIFllf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCategory' test.out

#- 36 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'SUnaUhC4x11AS2jT' \
    'KoTYeHaCuN7zpX9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteCategory' test.out

#- 37 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'p4QJdCrwkz0nw2ox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetChildCategories' test.out

#- 38 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'Kye8jZqj7k0YiLqO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetDescendantCategories' test.out

#- 39 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'USBuwR388REDRuYB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryCodes' test.out

#- 40 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '{"batchName": "nWiEsOnDfIAN04f5", "codeValue": "kSONmw1BDqqSctLL", "quantity": 72}' \
    'WfGq8JCDnwGWgccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCodes' test.out

#- 41 Download
$PYTHON -m $MODULE 'platform-download' \
    'zuc6QDRMGdBPbUyH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Download' test.out

#- 42 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'TYPS8CGKXGon2ecc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkDisableCodes' test.out

#- 43 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    '65YAFLweD9Z7U2lN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkEnableCodes' test.out

#- 44 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'korrw9QH3rNhDepQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryRedeemHistory' test.out

#- 45 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'um4Dj7pR05RTGXGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetCode' test.out

#- 46 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'kYXifTd5nAOF9VV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DisableCode' test.out

#- 47 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'JgCOm4wL729Hma0n' \
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
    '{"currencyCode": "CdCEFcf2doBrfHiH", "currencySymbol": "XXgvu496H02yOVN1", "currencyType": "REAL", "decimals": 17, "localizationDescriptions": {"1jIPOMXufZPWSe20": "JfNvtNcWtpUkw98x", "3tMM1bFFDIqKD8HJ": "4X0DetCeJ4x0wf5m", "Qx6Hs7M5apPMc8ZR": "3bPCJ5n5s6DODBmr"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CreateCurrency' test.out

#- 53 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '{"localizationDescriptions": {"qEhGlkEmGdCbwodV": "RjZJWuCQpjuJzpPO", "7BPxVWlRFnIekrQ9": "9ecmenxguw5bO8Vh", "4JaKYAsoMlLJGMl5": "xFgLj4mCShMFlbrR"}}' \
    'GjoBQ45Za4JR4S3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateCurrency' test.out

#- 54 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'ac6vLeoIULJlWXmQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteCurrency' test.out

#- 55 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Flef1tSHJf6sVpwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetCurrencyConfig' test.out

#- 56 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'AKKqmTy0ZSyJ7IIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetCurrencySummary' test.out

#- 57 GetDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-get-dlc-item-config-history' \
    'XlBlZMQeSnOg5gf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetDLCItemConfigHistory' test.out

#- 58 RestoreDLCItemConfigHistory
$PYTHON -m $MODULE 'platform-restore-dlc-item-config-history' \
    'SwrbpmoF4DvNA1wo' \
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
    '{"data": [{"autoUpdate": true, "enableRevocation": true, "id": "xV5C71gTw8BJPFct", "rewards": [{"currency": {"currencyCode": "wUMCRdxXOBu3TWmH", "namespace": "DVmCGFoD7aNFj9wO"}, "item": {"itemId": "RAVqRuNsXxRu4EQq", "itemName": "R3KbYWtFzplXVk36", "itemSku": "IpbGquPnIPwR1Bin", "itemType": "Z4ULwAKO8n42UuxE"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "fzZJsZd9sB6CV9Ki", "namespace": "WkbdpGqWQIPK6mVy"}, "item": {"itemId": "tM5mBRT39gKYLk9D", "itemName": "mjJh6PnpTXWAUt8l", "itemSku": "gqNM4poGEvIKCe3M", "itemType": "rLxmnjmlAuaBCdhz"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "gI2k1P9nQxzj3Anm", "namespace": "pWfje5cAtTDvwFHc"}, "item": {"itemId": "oODi5oF1pccdjjZp", "itemName": "FnVLb7xerpjVPfkt", "itemSku": "Nnl8UYH5kesuOtYH", "itemType": "Lqcdy05YrqdFn8sQ"}, "quantity": 28, "type": "ITEM"}], "rvn": 93}, {"autoUpdate": false, "enableRevocation": true, "id": "8xLKyBfGLHEAKhp6", "rewards": [{"currency": {"currencyCode": "12Y2ncRf7tEGzYqR", "namespace": "oHm6EtyXqQbKWMJ0"}, "item": {"itemId": "aODiWn6bPmSa85Ri", "itemName": "u1alaVEhjJZbwMHk", "itemSku": "FWLSzmAXAruYrVjX", "itemType": "4HRTvm3Qr9IkuW6j"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "ofc6itDEsq0dHfYG", "namespace": "6k853GERdJdphepF"}, "item": {"itemId": "9dfsng9FGGjJ0hRP", "itemName": "UBFxM2Fr3olO10RA", "itemSku": "yIZs2VfCRhzfKDAG", "itemType": "IAJuPhQcZwXRE9FO"}, "quantity": 16, "type": "CURRENCY"}, {"currency": {"currencyCode": "VTfDc3w1tAXRrQtH", "namespace": "km0Tthcx9W7PkFNV"}, "item": {"itemId": "a7czD4wybVjqOKrq", "itemName": "YGxcBxfjLUZHK0OO", "itemSku": "1yQsMBQAdOfrtHWy", "itemType": "Gg5TU3INkMgjsnP8"}, "quantity": 17, "type": "ITEM"}], "rvn": 46}, {"autoUpdate": false, "enableRevocation": true, "id": "1PXkVnetcvAuim14", "rewards": [{"currency": {"currencyCode": "Wdh1qKoSDBbyqlJy", "namespace": "fVgaW6ziZF6ijZzA"}, "item": {"itemId": "3MkosOcoAcV0T2G3", "itemName": "vQZNiqaXzRBra3I4", "itemSku": "K9iBdljXtowifBfA", "itemType": "w30kOykBuDJ0IPQe"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "4MZwEVJe7waGyB6g", "namespace": "2M5JiwtMOfDfoMgU"}, "item": {"itemId": "2yFBTPfnmfN5E20O", "itemName": "RMCVBTrkvObsiHQg", "itemSku": "t7OfL6AcBPjUYURB", "itemType": "3Rsrc0qvV8Gq1cw3"}, "quantity": 49, "type": "CURRENCY"}, {"currency": {"currencyCode": "tGWVKPoA1aKRZM1O", "namespace": "t0PWppB2H0G8Xko9"}, "item": {"itemId": "l5J0IOZmnpzwHhig", "itemName": "9d6vdgfrNiGrH0hD", "itemSku": "jH6IYpfINzNjk5V8", "itemType": "T9pQjnGB83yonudf"}, "quantity": 75, "type": "CURRENCY"}], "rvn": 80}]}' \
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
    '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"huYvwCATIUep61Zs": "SiqW7I03oSwCfYpN", "9jkLCsMYyyhEyBfF": "FZwkC1PRjBWzTuXt", "tDREDWbOM3xQaraa": "EVt3vsBCXpIgQzkW"}}, {"platform": "STEAM", "platformDlcIdMap": {"sITcyT5AhNNH0Ht1": "yPtBwXIuYrbPUcvE", "OJ4PghksbaThW37N": "Tbz8HiRmuknvXiTP", "0KrWQ3pgbHM0Svy3": "GRenDzwlTE9Czhnc"}}, {"platform": "OCULUS", "platformDlcIdMap": {"CPFDZh6JfJfg4X1d": "ZOTBgYwLjPGFqkbT", "L8ifUAMUekrD0J6i": "uJsVjhLgaFeFJ5QR", "uvEsU5QkmsmfFhPT": "fXVzS3hFUXbdYU08"}}]}' \
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
    '{"entitlementGrantList": [{"collectionId": "BQZXTcZnHoYaII5c", "endDate": "1976-10-05T00:00:00Z", "grantedCode": "qVvKR3ydSEb2trPj", "itemId": "qlB5c8a78gp4BGN4", "itemNamespace": "NAydb6GgyFczEOMX", "language": "Geul-TYTi", "metadata": {"TdTLCxJqK7dgsgrn": {}, "pVE1acxZoDXdPORk": {}, "WkyTcJzvDUlhTlBN": {}}, "origin": "Oculus", "quantity": 44, "region": "mUDwtTF1ATVQnAex", "source": "PROMOTION", "startDate": "1985-12-24T00:00:00Z", "storeId": "FaMkJVBkZU3qtk0d"}, {"collectionId": "M4GZGiSutb6wUxEi", "endDate": "1976-11-17T00:00:00Z", "grantedCode": "RyHC9VWMnzbuNQNJ", "itemId": "xCbLEhfrPxIRdbUw", "itemNamespace": "kN6Tr6vRneC9JYmp", "language": "TZBe-559", "metadata": {"iQwezvArAKJwZGVy": {}, "knpOhuGhAnlnjyPB": {}, "j7h3hncU5vgL62RA": {}}, "origin": "Playstation", "quantity": 55, "region": "ScfrHzGYC1TdLVDB", "source": "REFERRAL_BONUS", "startDate": "1983-07-09T00:00:00Z", "storeId": "RFOLeTQyplscfsZv"}, {"collectionId": "vUpCMJRliFCmFC9u", "endDate": "1995-09-04T00:00:00Z", "grantedCode": "xSxI4yyrZIV9M22g", "itemId": "RLsc6Jwt190s6yFi", "itemNamespace": "DZs0wyldbDDntsSQ", "language": "eofS_nWOK_150", "metadata": {"pAIwtlAooXZ7HDb8": {}, "g2BhzW03O2pp9qVp": {}, "ZbsppRsBWQ7RdYqZ": {}}, "origin": "Epic", "quantity": 86, "region": "SMRzSo0RzUoSen8C", "source": "IAP", "startDate": "1986-06-28T00:00:00Z", "storeId": "htRcnVsYOwypw6F2"}], "userIds": ["Zkbrkh3dQNtIEwCc", "fPmWjX540aN2pvOi", "1uYowkPNGANjli9X"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GrantEntitlements' test.out

#- 70 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["5UG7agVhXIgoHE9e", "EvIyV2DqxWhSV3r9", "vk4HQDiwqJUZHP7H"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RevokeEntitlements' test.out

#- 71 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'M6JB2P6ZjZh9eggv' \
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
    --body '{"body": {"account": "vmXZU7lVGZ6lIs17", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 85, "clientTransactionId": "5DfAxsrX7OiSRs0z"}, {"amountConsumed": 46, "clientTransactionId": "RYA8fTlbfUOSmR4F"}, {"amountConsumed": 2, "clientTransactionId": "p5g7b3MegxV9JnAJ"}], "entitlementId": "Su3MX2yYJopKxd9M", "usageCount": 41}, {"clientTransaction": [{"amountConsumed": 33, "clientTransactionId": "XYGoZGkBNXT0feu7"}, {"amountConsumed": 75, "clientTransactionId": "4aV6oMUzpMmsvvKT"}, {"amountConsumed": 23, "clientTransactionId": "717oGCmrTUcZy3DD"}], "entitlementId": "SxpWZV6J5QloYCaB", "usageCount": 24}, {"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "KIN2roJNZmgEGzqD"}, {"amountConsumed": 68, "clientTransactionId": "HEYBW8Aq2KVQNFGa"}, {"amountConsumed": 72, "clientTransactionId": "sa03Nqu13LgD6kOU"}], "entitlementId": "ZXQKRTVR95IwPCb2", "usageCount": 33}], "purpose": "P7vteUYzMZzggFcJ"}, "originalTitleName": "QkYueQLLJPh6Hpod", "paymentProductSKU": "pzuBQwTS66qr03Mp", "purchaseDate": "14S8HG9ID7mZ4eKH", "sourceOrderItemId": "aAP4PYToJAMgJkC8", "titleName": "UGlqb7cexeEhHz7O"}, "eventDomain": "KYNIMPTFnrbysdru", "eventSource": "1PotArVtIQyxp17b", "eventType": "8SHvRIiJgGrdz6Ar", "eventVersion": 45, "id": "ZMGUI9Z0Fol65yD1", "timestamp": "dLBQJcBsvUaK2iHO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "kgyhgijqtdzrvCDz", "eventState": "H5ACyLXmLsHXWPqY", "lineItemId": "BJTzlt302k4rdWgW", "orderId": "YgFgw3mGmogCJXjH", "productId": "TGhyemqqwoT441DX", "productType": "6xwuD6giqKLavCF9", "purchasedDate": "yVeJJwyaY7Ho61Ro", "sandboxId": "V0VH7thk8lnCROZo", "skuId": "dh1gbkbnRcIufk5W", "subscriptionData": {"consumedDurationInDays": 63, "dateTime": "AMGm4h3PbLHDa7uq", "durationInDays": 1, "recurrenceId": "hQA91csvlQSS6PyD"}}, "datacontenttype": "b3vKbCw9eAGmM6lP", "id": "AJMizukBmcy1kbAW", "source": "DUac65Jdlm1JJwmC", "specVersion": "AjTwtCqKdh92wuH9", "subject": "hLkAg90cQgXeZnKR", "time": "P6Gdv2QY9BadKJj4", "traceparent": "HkL0mk4HHDzXcKJo", "type": "wQbOrgveLe4hYQEG"}' \
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
    '{"appAppleId": 6, "bundleId": "UuEE9wh4CEOrPY29", "issuerId": "A1L1Xijb7GTIFWcZ", "keyId": "WKcGHG9MBp1AEcNU", "password": "zfWwpdraZO1lfHzX", "version": "V2"}' \
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
    '{"sandboxId": "nUiVM7UfbH7Qv0Ey"}' \
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
    '{"applicationName": "y6G3n83Sb2WXmcXt", "notificationTokenAudience": "uUYtYkPAHldms0Nw", "notificationTokenEmail": "lx85unvbUiBJfyM9", "packageName": "bc1hgFvKO2erV4cc", "serviceAccountId": "UhiQnHGDNXw2L4mp"}' \
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
    '{"data": [{"itemIdentity": "580sUSlEfC6ckbV2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"p3cp4fWJlLrbVQce": "Ky5JZK1rVpGdpzlw", "FNJyyLozi8eBqPD6": "pfcv9jGr7b2hHbaU", "EtBnsggbEVNmymBN": "r5C2BOjUiOQVEbp3"}}, {"itemIdentity": "z13pDy371QLVtDb6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"XatSimmKudqURkyz": "4E3EI1bSCYaa8JSN", "QdhrnvuDGFiT4U6W": "QQwsTHCgTvrGllrc", "ttK4WgzdUhB2YhKW": "idqRPQ1hSmShNaSm"}}, {"itemIdentity": "VFsmFW74DkabvmYA", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6qTg6ZOaTNC1LAen": "tTXWyBmb2Ir2yOaV", "vE1N52PwdeTQhMz9": "9aZ3fza0rlzqNhVN", "wgXBCZr4m1UpizE7": "fm00IB0YnQ5xpjcM"}}]}' \
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
    '{"appId": "xUGokG4VQKR0ItcC", "appSecret": "nXFRjhk7tzIHqZpg", "webhookVerifyToken": "Jqlw441XUfp7AVnf"}' \
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
    --body '{"sku": "8BzBBqEvMtJopw2r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-group' \
    '5pKsXnIYkKH6MNrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
$PYTHON -m $MODULE 'platform-list-oculus-subscription-group-tier' \
    'sOlIFw6Fqa6YXBlV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
$PYTHON -m $MODULE 'platform-add-tier-into-meta-quest-subscription-group' \
    --body '{"groupSku": "XOvZUgW2ZMVJhOyV", "sku": "aO1sgnJF31EULHtV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-tier' \
    'tkZrE0YPmtE6fcv3' \
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
    '{"backOfficeServerClientId": "nPROvD1FiqEUhsD6", "backOfficeServerClientSecret": "QxKzbZ7xvbLKNa3O", "enableStreamJob": true, "environment": "MFdrQmX2OFLws9RV", "streamName": "6lY9IGsZjUsSUE7N", "streamPartnerName": "uCYEOWNkgUfe6pVM"}' \
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
    '{"backOfficeServerClientId": "S5m8aRIev5s4q7Uw", "backOfficeServerClientSecret": "wraCDr326Q66cxtj", "enableStreamJob": false, "environment": "XsCsfA2pIWzC6nrU", "streamName": "avXt7t0llsH39PXW", "streamPartnerName": "tk222GY7L58lP7dr"}' \
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
    '{"appId": "hfBjZFgaGUfhy5TZ", "env": "LIVE", "publisherAuthenticationKey": "7Rk1qbFWhtwNaVCq", "syncMode": "INVENTORY"}' \
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
    '{"clientId": "KmTRqrvfJIrFQWID", "clientSecret": "C6PHVsnUueYd49OF", "organizationId": "DlbdIrxqxAtw8vLs"}' \
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
    '{"enableClawback": true, "entraAppClientId": "OFavgMWyxizWKQdV", "entraAppClientSecret": "ExukcKDUzhKKARjq", "entraTenantId": "JSWImXvaLXkvZvwk", "relyingPartyCert": "0v0OKy45dqId3gXU"}' \
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
    '{"env": "SANDBOX", "lastTime": "1995-08-01T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'kT3zo8gxMqM1wUdX' \
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
    'sMjUbhRjnDrYWlRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'PpgHg36d9NP5nNvz' \
    'IlwtYI9wKX9V1XxF' \
    '2CFfEpf0qN2twLYX' \
    'EXTENSION' \
    'wt7cj6v5DLEk9Rku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'mkrnY4LksFD2le3U' \
    'GhQnnmMgk0WYv2NT' \
    'pSejfbYniLmi1GQT' \
    'CODE' \
    'LP65pId36F25c13P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "NqPn7XRlnqiWP9WW", "targetItemId": "QMGmm0biVjE8A3Es", "targetNamespace": "Oz8LDnxgL0t7Qhdw"}' \
    '4vmSxnJcyaijSCsF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "a6ipRu1AaFjz0yLe", "appType": "DLC", "baseAppId": "oRyEXWrhLNPUvlrO", "boothName": "A50xGdlq3Dkm52TA", "categoryPath": "4zLBSh2QJWgWvIZG", "clazz": "JOPkJvsZhfMwJPOc", "displayOrder": 89, "entitlementType": "DURABLE", "ext": {"JTeKbAMIJChPyIhV": {}, "PmMs1zqz6exSNhna": {}, "bXGs0qawVMpRu5wP": {}}, "features": ["9CTLKxi1BjFMOIsJ", "ErhcMpuZW4KtmXpt", "O7EUYasMTHGgaQ2U"], "flexible": false, "images": [{"as": "Aev0UqYpD2R7Yqid", "caption": "gD0wxHpQyntHsI11", "height": 24, "imageUrl": "kMtF5tiwPCAxM9oF", "smallImageUrl": "cQUp7hrvKVNdGrr2", "width": 93}, {"as": "7Q9zNJHkXmHB9cu1", "caption": "ZdRIZ1hHCpApGunP", "height": 49, "imageUrl": "xUCyNQUITTM8jU9t", "smallImageUrl": "fr6NkPjb60b0Y8RD", "width": 97}, {"as": "M7BApA1YByiGkJR3", "caption": "0lAinKfKXqYE8GuK", "height": 64, "imageUrl": "brGOAvaYctXd3jNO", "smallImageUrl": "lJBjBMsJisMu1kQc", "width": 67}], "inventoryConfig": {"customAttributes": {"7DpmCIb5JWu7DAXt": {}, "IeslnM3lJQMDxu7A": {}, "uj8cqdtNaFO3ABy1": {}}, "serverCustomAttributes": {"AeDryAFewcN6U8vR": {}, "J3ebbfa3ep8cKNlb": {}, "024FzQsBlwn2pN8v": {}}, "slotUsed": 34}, "itemId": "mAp8kt8156L7Wl7U", "itemIds": ["fG3PbsgYDgJ0JRrc", "Pbe1REA4kpxN9tCj", "k58n5fBl9xiCZH2K"], "itemQty": {"BHwuAW3jLkVq9bAe": 11, "lcaufemZ4xlGtWc5": 95, "3a6h6dNfg9f25YsZ": 76}, "itemType": "APP", "listable": false, "localizations": {"IGHuO7u2tOUpmu6z": {"description": "ULXQMirzwMshTQYU", "localExt": {"nfHWyBg5c3Wq2dGy": {}, "gLo40eCb82j4OhaA": {}, "iWk4TKx1WRjiCokz": {}}, "longDescription": "g7q7bMwxVAujRx0p", "title": "yulY8igLWA7yUanM"}, "I437Ne6WvRNtbN9E": {"description": "os8o1PdTDqm0SXzX", "localExt": {"Nqw2oEptJsPYgvPn": {}, "AlN2mJeW1LQJ8A7N": {}, "ZLQPAny29oO2B8os": {}}, "longDescription": "fAcB6Pd2uPwzliHi", "title": "PYuwUtR55gCTACz3"}, "aLd0f0QGkwoIQo88": {"description": "hLxgR5AJVEz4FiSP", "localExt": {"gU3FLs6LbIwwxFBW": {}, "1RyUyU8GVL2TVivH": {}, "bcJX1mqJ4BtZCHdl": {}}, "longDescription": "mOzx9DrwT5dJMDgZ", "title": "PQtuRIVY69dhSr3J"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 16, "duration": 81, "endDate": "1992-07-03T00:00:00Z", "itemId": "Apjt9Vvn7MyjPjMU", "itemSku": "oUC9cUOeLu9OVb7a", "itemType": "BijwHPyvaMEDKGCx"}, {"count": 26, "duration": 73, "endDate": "1988-12-30T00:00:00Z", "itemId": "gOQkViutBjVUos6Z", "itemSku": "MGM14H49GbRHeTMH", "itemType": "4jK8hWOlHrqyBElA"}, {"count": 22, "duration": 24, "endDate": "1998-02-28T00:00:00Z", "itemId": "Ywb6nMhhSCXGzZMd", "itemSku": "NwUYOkFXnGtw8Auv", "itemType": "UND3dJ4hbxnIuxtr"}], "name": "WKvmz0RzwVRhRmll", "odds": 0.2653129462489835, "type": "REWARD", "weight": 19}, {"lootBoxItems": [{"count": 100, "duration": 70, "endDate": "1974-03-09T00:00:00Z", "itemId": "DWbrtw6qiRU6n8IK", "itemSku": "PZ1kpSeRooa84wgi", "itemType": "9Qjy4LtkYsyCJFj0"}, {"count": 1, "duration": 98, "endDate": "1983-08-22T00:00:00Z", "itemId": "zojVNIrqZCtbJmJS", "itemSku": "U0agO0PXHCyo70ky", "itemType": "uutjjQDfdr0GXMgS"}, {"count": 76, "duration": 76, "endDate": "1979-03-11T00:00:00Z", "itemId": "x6dbDNBB9LNziCP1", "itemSku": "xQygVqAioKka1tx5", "itemType": "6AwxAJU0XOoXFpKZ"}], "name": "7smOvhTDIdO6ugOF", "odds": 0.8269440157577181, "type": "REWARD_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 39, "duration": 73, "endDate": "1990-04-09T00:00:00Z", "itemId": "UvuPK7wBmEY4lD14", "itemSku": "f0XIJh3uxrBGEume", "itemType": "TG434DmlbwWuZpKP"}, {"count": 56, "duration": 49, "endDate": "1999-12-02T00:00:00Z", "itemId": "rzvo2R5Q7tM4YbPs", "itemSku": "F33KhfoL7PlFt47m", "itemType": "QAQQzQAxQ8GRgWKO"}, {"count": 56, "duration": 47, "endDate": "1989-03-13T00:00:00Z", "itemId": "YYXgFmEZ8kWtzrSI", "itemSku": "fMjxzBwWKzJldpqt", "itemType": "AlzVR0WqkbKYSr7I"}], "name": "Vc2WJyX67v7JTcrp", "odds": 0.24838286799608889, "type": "REWARD_GROUP", "weight": 67}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 47, "name": "8VMGk3b5E1GgAqoQ", "optionBoxConfig": {"boxItems": [{"count": 21, "duration": 72, "endDate": "1974-03-12T00:00:00Z", "itemId": "Lj0VNzr8kTl05oiu", "itemSku": "bu5HHlb7VI1cHNU3", "itemType": "pvbpyJTgwl3ZOMpz"}, {"count": 80, "duration": 33, "endDate": "1993-08-24T00:00:00Z", "itemId": "8Tka2qLo5spq850Z", "itemSku": "KnX3Inv5lG8WEklk", "itemType": "FFkJPn2yomTQth1i"}, {"count": 72, "duration": 32, "endDate": "1991-02-21T00:00:00Z", "itemId": "yDZJCwufYAURyXVo", "itemSku": "J9qEel6x5O5otpuj", "itemType": "fw64GJDWklFkqhGF"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 29, "fixedTrialCycles": 47, "graceDays": 45}, "regionData": {"fL2vrevlUaCgxl01": [{"currencyCode": "oVwoWAbcskuBfcvc", "currencyNamespace": "oAMPzCXwpgD8MOfY", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1980-04-07T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1976-07-24T00:00:00Z", "expireAt": "1995-11-29T00:00:00Z", "price": 62, "purchaseAt": "1982-08-13T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Jq3OJhzlgtX87XuW", "currencyNamespace": "OIpQwptcvroohLb6", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1999-11-05T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1973-05-02T00:00:00Z", "expireAt": "1992-11-27T00:00:00Z", "price": 31, "purchaseAt": "1982-02-06T00:00:00Z", "trialPrice": 7}, {"currencyCode": "yQyv10mRO0tK1CH6", "currencyNamespace": "ozETFSgu96JYKhAD", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1974-11-15T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1991-05-09T00:00:00Z", "expireAt": "1999-09-27T00:00:00Z", "price": 4, "purchaseAt": "1976-07-17T00:00:00Z", "trialPrice": 64}], "v8wx2JosSHLipk5N": [{"currencyCode": "6e79zCfL2ar4zJmB", "currencyNamespace": "2wifDA7LpND5zXLh", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1983-09-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1973-08-12T00:00:00Z", "expireAt": "1981-07-02T00:00:00Z", "price": 93, "purchaseAt": "1974-08-02T00:00:00Z", "trialPrice": 93}, {"currencyCode": "s9QmLReEZ0r6n6an", "currencyNamespace": "ryoVkl4tChuDibBI", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1972-08-23T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1986-12-17T00:00:00Z", "expireAt": "1992-09-30T00:00:00Z", "price": 31, "purchaseAt": "1981-10-04T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Kqpl1Xk1CdFvYqfo", "currencyNamespace": "YzBc16XXXuoJGXCy", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1984-11-07T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1971-04-17T00:00:00Z", "expireAt": "1983-06-21T00:00:00Z", "price": 77, "purchaseAt": "1974-11-10T00:00:00Z", "trialPrice": 76}], "tl0k2ZOJHBnYPNYK": [{"currencyCode": "WhYLsAlPZs4v14XF", "currencyNamespace": "GIVeBHRe7JBlzH9C", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1996-07-15T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1972-08-17T00:00:00Z", "expireAt": "1991-02-10T00:00:00Z", "price": 28, "purchaseAt": "1978-03-18T00:00:00Z", "trialPrice": 65}, {"currencyCode": "lfFFTD6KSEeAEd96", "currencyNamespace": "gzUY6EuVZznqQVYO", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1975-06-11T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1988-06-13T00:00:00Z", "expireAt": "1996-08-04T00:00:00Z", "price": 33, "purchaseAt": "1999-01-31T00:00:00Z", "trialPrice": 66}, {"currencyCode": "aYlaYm2XGN51wxYT", "currencyNamespace": "CHYaW7BAFZnpxmzs", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1992-08-03T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1989-04-08T00:00:00Z", "expireAt": "1978-08-13T00:00:00Z", "price": 26, "purchaseAt": "1982-03-05T00:00:00Z", "trialPrice": 40}]}, "saleConfig": {"currencyCode": "rkop7LL7Yqjh4lgG", "price": 67}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "Jv0EyLkZej5voHh0", "stackable": true, "status": "ACTIVE", "tags": ["DJjPEF1LpvoOxT54", "Z0tkEWAqM0EZhtIp", "t5Ffna72ji4B86NK"], "targetCurrencyCode": "1XL7HL2nKoPXxLMt", "targetNamespace": "U6hLliy7em6ox8O9", "thumbnailUrl": "f2ojEQrZ645LOpaG", "useCount": 65}' \
    'ZNjdKHqDX1jGg2X6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'VHZOulL5KfkSA0am' \
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
    'HSK4Sz7fbw7cgHHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'IEPvqjKVvPP5x3gf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '1HnOzyuw55KAICc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'N5AqnaH49QFksDAG' \
    'UgVcYdzd3mUKKxi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'anNFpYXwE37QpBIY' \
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
    '8LEEtCmsemV8gAHQ' \
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
    '{"itemIds": ["aitMhleY83sh3B07", "O0XQWCZXaPi8oY6V", "kZP57PyBLX7knj7y"]}' \
    '5qEOp7hzPCxvetFh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'AgAkkEhd3Y16uyKw' \
    --body '{"changes": [{"itemIdentities": ["J713r4F9WC342Ugg", "yr64isEfxbFEabmT", "6MmgebEkQ73QcKQl"], "itemIdentityType": "ITEM_ID", "regionData": {"3FKvRIguqDEJfdxs": [{"currencyCode": "QXLRJRONKh0R0RXJ", "currencyNamespace": "6anzAeqD1HlhQ1rq", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1981-09-11T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1982-10-05T00:00:00Z", "discountedPrice": 47, "expireAt": "1983-03-04T00:00:00Z", "price": 56, "purchaseAt": "1990-08-14T00:00:00Z", "trialPrice": 66}, {"currencyCode": "KkzIBx4VA9ZxbKQD", "currencyNamespace": "qG7UJEMeseC0hnoI", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1971-05-12T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1983-07-13T00:00:00Z", "discountedPrice": 49, "expireAt": "1975-02-21T00:00:00Z", "price": 67, "purchaseAt": "1995-11-29T00:00:00Z", "trialPrice": 36}, {"currencyCode": "vWuSKhoOQCljoyZp", "currencyNamespace": "9rrR7RJbkDwkEjOW", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1981-07-31T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1978-04-11T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-10-10T00:00:00Z", "price": 0, "purchaseAt": "1986-02-05T00:00:00Z", "trialPrice": 45}], "TuHqCNtVlNaGzoqp": [{"currencyCode": "AFVT8PkW7ouFIdlT", "currencyNamespace": "uousRcrhXNAh3Cu4", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1981-09-20T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1976-08-30T00:00:00Z", "discountedPrice": 61, "expireAt": "1993-01-16T00:00:00Z", "price": 98, "purchaseAt": "1999-10-31T00:00:00Z", "trialPrice": 6}, {"currencyCode": "NwkZWTbX0PZb0I9Q", "currencyNamespace": "m4xKek7ZAZJCk1fi", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1993-09-04T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1972-07-26T00:00:00Z", "discountedPrice": 61, "expireAt": "1989-04-26T00:00:00Z", "price": 15, "purchaseAt": "1988-03-17T00:00:00Z", "trialPrice": 22}, {"currencyCode": "grxoEVEIkvpWupGh", "currencyNamespace": "taU3oC1Ly7xHbAN2", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1997-06-24T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-01-19T00:00:00Z", "discountedPrice": 10, "expireAt": "1996-12-13T00:00:00Z", "price": 60, "purchaseAt": "1991-10-01T00:00:00Z", "trialPrice": 17}], "8RZqUjELC82uP1nM": [{"currencyCode": "UDAKQEkOvO52VTPF", "currencyNamespace": "FuLWL0HQkTuy4fU6", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1975-12-28T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1982-04-10T00:00:00Z", "discountedPrice": 53, "expireAt": "1973-04-08T00:00:00Z", "price": 87, "purchaseAt": "1980-03-07T00:00:00Z", "trialPrice": 67}, {"currencyCode": "ANYIF1YbEZwEzBNP", "currencyNamespace": "CCnVKYp3EQx9pSof", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1997-11-19T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1972-07-29T00:00:00Z", "discountedPrice": 78, "expireAt": "1985-07-30T00:00:00Z", "price": 48, "purchaseAt": "1987-10-23T00:00:00Z", "trialPrice": 0}, {"currencyCode": "2ScBMbpsjgGDmxpN", "currencyNamespace": "0sNW3RHxioyNedQ1", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1998-03-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1993-12-19T00:00:00Z", "discountedPrice": 13, "expireAt": "1976-05-27T00:00:00Z", "price": 91, "purchaseAt": "1997-06-12T00:00:00Z", "trialPrice": 19}]}}, {"itemIdentities": ["OgZ3Msm86Jr35oZQ", "3WcFld5DKwJoCrYr", "lOXZN7MoQZDN1sju"], "itemIdentityType": "ITEM_SKU", "regionData": {"XDU9ZFHISuKMr6e9": [{"currencyCode": "VKi3lHZdnYzFYEnO", "currencyNamespace": "A6gFO3zfSvvmLgxl", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1997-01-26T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-04-02T00:00:00Z", "discountedPrice": 7, "expireAt": "1971-09-21T00:00:00Z", "price": 13, "purchaseAt": "1996-02-16T00:00:00Z", "trialPrice": 54}, {"currencyCode": "HdIf6eMd0iVUmBrF", "currencyNamespace": "wFIESxo8uFqKtoZi", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1982-01-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1991-08-20T00:00:00Z", "discountedPrice": 52, "expireAt": "1987-10-07T00:00:00Z", "price": 13, "purchaseAt": "1975-01-17T00:00:00Z", "trialPrice": 57}, {"currencyCode": "QRsqYFtxbpKYKp18", "currencyNamespace": "TPWOixbTLfdOF3Vt", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1995-04-21T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1997-07-03T00:00:00Z", "discountedPrice": 81, "expireAt": "1992-01-27T00:00:00Z", "price": 20, "purchaseAt": "1985-12-04T00:00:00Z", "trialPrice": 77}], "nywuIoLpkJEPfnaE": [{"currencyCode": "SuOM4olKFVsSfgNQ", "currencyNamespace": "jKhrrrStCg99ejNA", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1984-11-13T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1993-08-02T00:00:00Z", "discountedPrice": 46, "expireAt": "1989-03-29T00:00:00Z", "price": 99, "purchaseAt": "1972-09-26T00:00:00Z", "trialPrice": 100}, {"currencyCode": "HPO22mCj7yFmbpIt", "currencyNamespace": "mTcMVUlRoYFks2UL", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1978-03-13T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1980-10-28T00:00:00Z", "discountedPrice": 83, "expireAt": "1973-10-07T00:00:00Z", "price": 14, "purchaseAt": "1981-07-19T00:00:00Z", "trialPrice": 7}, {"currencyCode": "iZyNxeNJcBIePMwB", "currencyNamespace": "jK11IFRybWjjYkFv", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1987-08-22T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1971-12-18T00:00:00Z", "discountedPrice": 78, "expireAt": "1999-07-23T00:00:00Z", "price": 56, "purchaseAt": "1993-03-10T00:00:00Z", "trialPrice": 7}], "PScmfoBQ1VO5Trcu": [{"currencyCode": "36LS6o87DKPLLTcj", "currencyNamespace": "U87C2CAKbiD5PxA5", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1981-08-01T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-08-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1993-01-21T00:00:00Z", "price": 36, "purchaseAt": "1974-03-17T00:00:00Z", "trialPrice": 26}, {"currencyCode": "TjzZ8KpdOxrQ8r5t", "currencyNamespace": "e5FkJ58wQyrAb67d", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1985-02-22T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1990-07-26T00:00:00Z", "discountedPrice": 63, "expireAt": "1982-03-05T00:00:00Z", "price": 42, "purchaseAt": "1987-03-19T00:00:00Z", "trialPrice": 36}, {"currencyCode": "T8aEay0LM1IpMDZu", "currencyNamespace": "DLXNscwbXgdwQnMu", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1993-02-04T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1978-05-24T00:00:00Z", "discountedPrice": 0, "expireAt": "1983-05-30T00:00:00Z", "price": 19, "purchaseAt": "1986-02-25T00:00:00Z", "trialPrice": 31}]}}, {"itemIdentities": ["ar5GRzOAfOXbaEHF", "X0sySxhkhCpV5A2Z", "LHG60X6LS9dYe42o"], "itemIdentityType": "ITEM_ID", "regionData": {"GLqYJevKKJR5KWRg": [{"currencyCode": "HuLJEAS7pSDlIS4N", "currencyNamespace": "3VRydtvWZZFDNIc8", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1978-10-30T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1975-12-04T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-12-26T00:00:00Z", "price": 36, "purchaseAt": "1977-02-20T00:00:00Z", "trialPrice": 97}, {"currencyCode": "Mxf3NfjnW9axvejx", "currencyNamespace": "DQgdz6GmSzMPzB5Z", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1979-01-31T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1980-03-19T00:00:00Z", "discountedPrice": 27, "expireAt": "1995-09-24T00:00:00Z", "price": 66, "purchaseAt": "1976-06-11T00:00:00Z", "trialPrice": 52}, {"currencyCode": "bn27LOqX7FWHHlsx", "currencyNamespace": "NkfgF88XOEWI4jAR", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1988-07-30T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1992-07-30T00:00:00Z", "discountedPrice": 73, "expireAt": "1976-04-16T00:00:00Z", "price": 52, "purchaseAt": "1974-03-21T00:00:00Z", "trialPrice": 51}], "yRqefUM764xXmCkJ": [{"currencyCode": "L9p2OQ5Ll9C3fSnn", "currencyNamespace": "tsqrUKREAt8zG7Mw", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1978-05-15T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1980-11-27T00:00:00Z", "discountedPrice": 60, "expireAt": "1990-11-30T00:00:00Z", "price": 88, "purchaseAt": "1979-04-02T00:00:00Z", "trialPrice": 53}, {"currencyCode": "DGxhO1YbPoWmG714", "currencyNamespace": "ZA04yxGcMcYyromM", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1991-09-06T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1971-12-11T00:00:00Z", "discountedPrice": 77, "expireAt": "1977-08-01T00:00:00Z", "price": 91, "purchaseAt": "1999-06-19T00:00:00Z", "trialPrice": 15}, {"currencyCode": "6kWXBTTodpLcEI0m", "currencyNamespace": "WFWKlSwI38LyDyLT", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1988-04-06T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1984-02-09T00:00:00Z", "discountedPrice": 99, "expireAt": "1977-06-03T00:00:00Z", "price": 61, "purchaseAt": "1986-10-20T00:00:00Z", "trialPrice": 63}], "OjFm6OQMQgWL3hmj": [{"currencyCode": "Uydsgdt98KfbaQpg", "currencyNamespace": "EAKKLcKbPxGvL2c7", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1976-11-03T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1999-07-24T00:00:00Z", "discountedPrice": 56, "expireAt": "1993-07-26T00:00:00Z", "price": 22, "purchaseAt": "1992-09-30T00:00:00Z", "trialPrice": 56}, {"currencyCode": "ql6eJa7PZ2Mvexsh", "currencyNamespace": "OyL8KXBfLq1zWLmt", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1973-04-22T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1983-11-13T00:00:00Z", "discountedPrice": 85, "expireAt": "1979-08-22T00:00:00Z", "price": 10, "purchaseAt": "1995-01-07T00:00:00Z", "trialPrice": 38}, {"currencyCode": "E0DZBwK4s4YGhc9q", "currencyNamespace": "jsGzedPNuJ4GH001", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1991-08-25T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-10-15T00:00:00Z", "discountedPrice": 83, "expireAt": "1971-07-20T00:00:00Z", "price": 76, "purchaseAt": "1981-08-14T00:00:00Z", "trialPrice": 34}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'zqs2u1EntDzkQLgW' \
    'QHXc3bRYKbJGFP8H' \
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
    'ZNLJ7aPbRMRrbKjo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "ifZAWt13ISgdwAum", "appType": "DEMO", "baseAppId": "4Qo69tjPCe7O061S", "boothName": "cAQ7gSO3GHo6ESwn", "categoryPath": "8otu3o1B2P8cdPJA", "clazz": "nmCFUZdH9CHHozRu", "displayOrder": 6, "entitlementType": "CONSUMABLE", "ext": {"9g15dSBhpLRxydIE": {}, "1CQFSQS3RD8Q6Ycg": {}, "yTtSOU4FdUceGtnt": {}}, "features": ["uIwxdK6goe9uJ8PA", "yZK7UKLhMA3DOG2T", "m6j0Apyricmsku6r"], "flexible": false, "images": [{"as": "buq9cXar8FKACMfa", "caption": "ESKKo0RBtKDj9PgW", "height": 27, "imageUrl": "bOcYim2syYc8YuKl", "smallImageUrl": "Qjnj5QjrVi62ITQp", "width": 57}, {"as": "NklXSUYkHNYqepad", "caption": "IS0zRgire2ntrz0F", "height": 95, "imageUrl": "Ii8k4T7A6suz0JPL", "smallImageUrl": "hBV8H4Rs8p9AflDj", "width": 20}, {"as": "kwdkgeNE7pA2BmAc", "caption": "otg9A9VvbcAi4Zmd", "height": 36, "imageUrl": "z2NXfbCObijIWdRS", "smallImageUrl": "DSq6oIY8wqc2Ocvj", "width": 13}], "inventoryConfig": {"customAttributes": {"9ibQlReTecqcbggf": {}, "eYn1FnvTuTrRI8Z8": {}, "7U0Y5R6IUWUGWDcg": {}}, "serverCustomAttributes": {"SJ29TqsnbtXNBeq2": {}, "uoLHWsw0m7ZY46mj": {}, "kOA84jougrIsaMHm": {}}, "slotUsed": 52}, "itemIds": ["IkM1Wvc2CcOra4RX", "enU5naN6UuNARNfA", "4hpoNUAwafK1QxxK"], "itemQty": {"2sBBkQz8nIgoYpZY": 72, "yGzE1BMLJmTvUJIV": 96, "W2K8alZaxyEak02r": 8}, "itemType": "APP", "listable": true, "localizations": {"pW4CsuQx2nME1E8l": {"description": "GIgW2AWqhlJfHgWS", "localExt": {"AjBmziLkAEWkqMo2": {}, "uv4G0hb2TC5zbxqS": {}, "MQf3ZXRgmEXKPavN": {}}, "longDescription": "UDslWRgXzKcDEz6i", "title": "vQvlpRKagGd8OJWf"}, "XgBkof2DgN1OHBaK": {"description": "If5hoyD0oT4csEU6", "localExt": {"rwlyAZXRltXTRz9W": {}, "tMMb9e3S9biXun5f": {}, "D0BBCts02Kgz1gL8": {}}, "longDescription": "2ANle3vQP0F7CVBR", "title": "FOlmRZZrSiE7meOU"}, "Bb0ZMyPVBowpLOlv": {"description": "3wNvAi5e5Cp2Id8P", "localExt": {"qgbZMgBinMuWrJOA": {}, "vHxG7UhRxqteme7V": {}, "0mE4XANjqP7L1mgH": {}}, "longDescription": "Dq7oo2SQp9UXJYEG", "title": "Gpt55fVsBfrc4OJ0"}}, "lootBoxConfig": {"rewardCount": 25, "rewards": [{"lootBoxItems": [{"count": 80, "duration": 60, "endDate": "1984-10-06T00:00:00Z", "itemId": "0rolfU1yEokwoBSf", "itemSku": "RPMdPXru40VmHvpa", "itemType": "J6EFG9wLOlD7N2GN"}, {"count": 87, "duration": 79, "endDate": "1980-06-27T00:00:00Z", "itemId": "IgMAbRc0I82pjV4U", "itemSku": "Bb0pZrHFxE9EAcMe", "itemType": "8RHXnsxazB0s0OGt"}, {"count": 21, "duration": 36, "endDate": "1989-09-21T00:00:00Z", "itemId": "9A8DUtbT9Nimqnzt", "itemSku": "0awizcaXFFkKf2Qc", "itemType": "bDNp9wVgloPqugy2"}], "name": "zhY3CjOqLPkNLoeC", "odds": 0.7509547093629674, "type": "REWARD_GROUP", "weight": 37}, {"lootBoxItems": [{"count": 32, "duration": 63, "endDate": "1979-06-09T00:00:00Z", "itemId": "cEYBMPDDNvuy4MWH", "itemSku": "W8YW1euC0ubVpUB9", "itemType": "WTnYHGmKeMnGn3hX"}, {"count": 93, "duration": 91, "endDate": "1995-12-31T00:00:00Z", "itemId": "9y7jKRgCFKj2fpaE", "itemSku": "DgvMXedU0CtjH3UP", "itemType": "Jy3CnYG5ypxMPXQb"}, {"count": 22, "duration": 54, "endDate": "1993-12-28T00:00:00Z", "itemId": "WMTXNI4WIT2qYutq", "itemSku": "ii44IKSSMR4zJKYx", "itemType": "ouzcD0pPXkdTrLYN"}], "name": "48A5DLkL19tXrv2b", "odds": 0.4558053001724811, "type": "REWARD_GROUP", "weight": 45}, {"lootBoxItems": [{"count": 15, "duration": 70, "endDate": "1973-09-28T00:00:00Z", "itemId": "BeKISP0coyLHG52k", "itemSku": "cFEHKN66TOzJSyl8", "itemType": "3HhHTDHO8mQoGOS8"}, {"count": 68, "duration": 20, "endDate": "1995-09-01T00:00:00Z", "itemId": "GCPEvc97uDKDBhng", "itemSku": "mXpNaXSgg2yJzaaU", "itemType": "c8p87eTTm092rucP"}, {"count": 54, "duration": 18, "endDate": "1974-04-23T00:00:00Z", "itemId": "Fks8OhmWshFK5hyf", "itemSku": "wqkxFeK2HSaUyXEO", "itemType": "QUwXDX8MGlijaR3V"}], "name": "Vk7nD09WBTm7Hy1A", "odds": 0.3493574821123171, "type": "PROBABILITY_GROUP", "weight": 14}], "rollFunction": "CUSTOM"}, "maxCount": 94, "maxCountPerUser": 57, "name": "O5OIzshGgQ4ThugQ", "optionBoxConfig": {"boxItems": [{"count": 65, "duration": 14, "endDate": "1992-11-17T00:00:00Z", "itemId": "wlpo3MnSMNdjVtLt", "itemSku": "8CrUFIkcZk3UEaPs", "itemType": "taXtLCGf6Pjb7W28"}, {"count": 59, "duration": 65, "endDate": "1982-08-09T00:00:00Z", "itemId": "eX2LXwaZwDM1CYDL", "itemSku": "maPDEUbDvBUnl1NO", "itemType": "7rLa2XTR4IEvU0JE"}, {"count": 24, "duration": 22, "endDate": "1984-11-02T00:00:00Z", "itemId": "R1frDQIVwmefiYRy", "itemSku": "tVWtyJI7ujeL0gjx", "itemType": "8jAfmTLOwiBSSe1E"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 100, "fixedTrialCycles": 83, "graceDays": 35}, "regionData": {"Tpy2xyajHMUnKflm": [{"currencyCode": "cC3pOWLT8ckEy2SM", "currencyNamespace": "QcmxebThGYrgNOim", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1979-10-07T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1995-03-23T00:00:00Z", "expireAt": "1977-07-18T00:00:00Z", "price": 7, "purchaseAt": "1989-05-19T00:00:00Z", "trialPrice": 68}, {"currencyCode": "AR7z9J0bNuepqWsD", "currencyNamespace": "Ljzow7MvJGnWbcVq", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1993-02-05T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1997-11-15T00:00:00Z", "expireAt": "1996-01-15T00:00:00Z", "price": 50, "purchaseAt": "1989-09-30T00:00:00Z", "trialPrice": 36}, {"currencyCode": "Cl9Xs4E416s1Oq4B", "currencyNamespace": "0c6hcP5jLY1KxbFb", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1984-11-27T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1973-10-13T00:00:00Z", "expireAt": "1992-12-09T00:00:00Z", "price": 1, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 88}], "GbMTiA96lnb5gdT3": [{"currencyCode": "QnV1lkyfpfTo2MX3", "currencyNamespace": "YvlKKTkjhbq0eRvk", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1996-04-04T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1992-03-16T00:00:00Z", "expireAt": "1994-12-18T00:00:00Z", "price": 39, "purchaseAt": "1971-11-20T00:00:00Z", "trialPrice": 29}, {"currencyCode": "IBYTFfPUrNUOX0ha", "currencyNamespace": "xwoUd3ezYAdypb6o", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1988-07-18T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-05-10T00:00:00Z", "expireAt": "1985-08-15T00:00:00Z", "price": 18, "purchaseAt": "1988-02-29T00:00:00Z", "trialPrice": 13}, {"currencyCode": "w3NQXGJDWtQNJFHN", "currencyNamespace": "bgt9uaoCeP9rZK0m", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1974-01-05T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1975-11-24T00:00:00Z", "expireAt": "1972-11-12T00:00:00Z", "price": 74, "purchaseAt": "1985-12-09T00:00:00Z", "trialPrice": 35}], "Aoh6Jk84k7R0603b": [{"currencyCode": "1ChdDIpRn2HgPRev", "currencyNamespace": "BMjempE90i47qjDQ", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1984-06-23T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1997-12-25T00:00:00Z", "expireAt": "1997-02-05T00:00:00Z", "price": 54, "purchaseAt": "1989-08-08T00:00:00Z", "trialPrice": 45}, {"currencyCode": "KOA0L11TgHUfODRo", "currencyNamespace": "csLmBbV1sCNpADwy", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-04-23T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1974-03-16T00:00:00Z", "expireAt": "1995-01-03T00:00:00Z", "price": 11, "purchaseAt": "1977-06-30T00:00:00Z", "trialPrice": 4}, {"currencyCode": "88v1ngAJIsXT5AL1", "currencyNamespace": "og70bKW5QYtGAVQv", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1982-10-06T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1995-06-15T00:00:00Z", "expireAt": "1971-01-30T00:00:00Z", "price": 6, "purchaseAt": "1980-05-18T00:00:00Z", "trialPrice": 42}]}, "saleConfig": {"currencyCode": "2JITEaFYCmQEyL35", "price": 76}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "1cCBgg2D4HUqIhXD", "stackable": true, "status": "ACTIVE", "tags": ["seD5BbL13OgHZysy", "JNm52k6wEP9rj7lO", "ny0912axRFeMgIQd"], "targetCurrencyCode": "6vs4tMfHLoSkvb8l", "targetNamespace": "bFBtF0ILnxdtDeCt", "thumbnailUrl": "bUIxxTu6SQF7Bt4r", "useCount": 44}' \
    'nIavouuFpqcq4Gd9' \
    'fk7fhp8GNMEX4Ps5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'vorNX6W3h8ItD6AF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 5, "orderNo": "bQvGbKVlE5VulHAZ"}' \
    'Z2SKo1C0ktvmekdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'ic6I2n5Hclx6xvlD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "EhlvzVBqt9fNnODJ", "previewUrl": "KrDdt60vGd1u3lR0", "thumbnailUrl": "fkCW4fYJAHmuYyTZ", "type": "video", "url": "aEUFiMTIV4pb5hZy", "videoSource": "youtube"}, {"alt": "B9hLG74YMs1JCrpn", "previewUrl": "pPPUyyCN4MFXqnFz", "thumbnailUrl": "R6C20jVL8heTq0Wm", "type": "image", "url": "WAzVVdQZznMUlqj2", "videoSource": "generic"}, {"alt": "IRhPIRCNW8MLBfGH", "previewUrl": "JseAA3xQG5zPNH4e", "thumbnailUrl": "YMWbtvk7OoIixOGX", "type": "video", "url": "eZoX0eYwpjuQPo1B", "videoSource": "generic"}], "developer": "p5ShR3fI6ZeDWbxH", "forumUrl": "SLn6kQxqK7yxoQHX", "genres": ["Simulation", "Adventure", "Action"], "localizations": {"xjvW4rZ57Ra4Wlon": {"announcement": "8ZzeHgabbmT81jfi", "slogan": "k6ShLjJbf174MCR5"}, "ZpvlWXRfEoUuNmQr": {"announcement": "q6p7WrYOBpl77LsK", "slogan": "N46XLNfQ0SXyMTyg"}, "ZRBzJUpXr5ZkwYPL": {"announcement": "nvikBnp1ILBujZh8", "slogan": "S62GO32C73RnfIDx"}}, "platformRequirements": {"g4DkmnJtxZgIUMxG": [{"additionals": "fQHmg4I1PJybUmpL", "directXVersion": "miuZGk2Gg0Um3ITR", "diskSpace": "OznZA6EVEXEqkFFy", "graphics": "Gp6XhgI2SuEyr4ha", "label": "ctAHdK0X7OZKu6Mm", "osVersion": "VxEFptfSFU0F8qXS", "processor": "fSkxhrHhjWxkDQUT", "ram": "Y21m19Eiqpyu9P7Y", "soundCard": "h6ERWyedt6rkPxW7"}, {"additionals": "2ya2ruQcikSHwHPf", "directXVersion": "yNRUhMXX7FiB3X63", "diskSpace": "4iuF8pqhqsqRF4kq", "graphics": "Mbz4sxPUl2WbQNFN", "label": "B2IE43MBCGNyjqnD", "osVersion": "uWD1qiZzXQxSDgH9", "processor": "L20T6fVxvK30nHMY", "ram": "xf8xOR1DEgYR3iOy", "soundCard": "nLLtqSmaHvUExz8o"}, {"additionals": "7TwcWL7fNlyGuj0E", "directXVersion": "kM7M8G78KZj2jWyK", "diskSpace": "AzXYP9kO0rmonOpg", "graphics": "tONmMvrDH4IXc6tn", "label": "8XayBI734jCTSnRq", "osVersion": "HTWC4NCbltixkXwX", "processor": "O0XemKHsUC5w7fmz", "ram": "F80bbGhU1pjVwMsL", "soundCard": "dJrt5FnAIz4y9yy4"}], "62Mnwchld3LWFhC1": [{"additionals": "kBUvsUcnOXhewths", "directXVersion": "zMsYOEmQiF1OsXfJ", "diskSpace": "G3psjIBzjaFmN0MI", "graphics": "nvVPAPEovHVVguus", "label": "vVUxkCG4IGPYHaRv", "osVersion": "V3JGi5l0G5NBtXVT", "processor": "XK1JdoClQQGLneKl", "ram": "3iXOvSGgZzuoTiOg", "soundCard": "T4AtBZJsMBPDcUuW"}, {"additionals": "C1NgHaxQlxs2MPGk", "directXVersion": "LeY5CedGPB0iJF96", "diskSpace": "NG7vODPmfnV8dOr3", "graphics": "8jFYjFRDj47EZTCC", "label": "wz8yawNImZdPzt9k", "osVersion": "oNSL3vqGgJOWkI0s", "processor": "HphIU3KaP7nk9iEa", "ram": "qudy3aYo02pzHann", "soundCard": "SLeEYvuciynwWb01"}, {"additionals": "HLrp6OW9Y7FIIEJM", "directXVersion": "m4Kizs3NRbyYMyWP", "diskSpace": "Hp8NpreWtVtRQu0c", "graphics": "oThNxwnnpoM2KSoH", "label": "lpDFImJNovlZq1O6", "osVersion": "RDUgilQHCts6SUNx", "processor": "UWIGSkxjKL3EiP6W", "ram": "eXWf3dBAVfIM2oLF", "soundCard": "aTIhv5XrQvTAdisx"}], "P0DyxqSYeCl4gEZg": [{"additionals": "IMDALa4nsITUeFKN", "directXVersion": "h8kgmMjBxD74Lujt", "diskSpace": "GQD9sT5LHkWjFIo6", "graphics": "VbU9gwMgZPR9Q5Ls", "label": "tog0ehjEmcjJzkf7", "osVersion": "rNu3ZARHXZ5yuJsf", "processor": "xI3zuYwCYQw4Rr3l", "ram": "meyijwD3pYZEoKfB", "soundCard": "V4CX15snBgmflygD"}, {"additionals": "W6ab0RoZeMIFYmEr", "directXVersion": "aqGPOCMPGtRg0HGz", "diskSpace": "SGs8nBUQVBsF03D5", "graphics": "vkAkZ8CS09fFrbdr", "label": "egZfA6pBIXqoaoYo", "osVersion": "HcrIwc6qkDf3ciuV", "processor": "B7vM6wSqwns2XJfU", "ram": "l3uiEO9E03Jk5kBn", "soundCard": "uo4jR1HYLJjnydxA"}, {"additionals": "GgqH3ytkroZ2tfFj", "directXVersion": "NF99VixS5Es3u4km", "diskSpace": "3iKiNLRNa01SihgZ", "graphics": "by9mBdGrJY5J0e9j", "label": "WcVTCNxjdv8GxhJo", "osVersion": "B4lAkbm1Abh9QxLB", "processor": "fhpOp8UlDmFYNBSD", "ram": "EgsUMikj8NQNDlhA", "soundCard": "hwAc8mPZRllengCd"}]}, "platforms": ["Android", "MacOS", "Windows"], "players": ["Multi", "Multi", "MMO"], "primaryGenre": "Racing", "publisher": "xsJfyos4fOD6B14c", "releaseDate": "1982-06-05T00:00:00Z", "websiteUrl": "UNByHqsS7t8WUpg0"}' \
    'equIg7wIz8o3rFWv' \
    'lE7bmuaFNPCECKSz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'HTT5beKYt4CDlWZz' \
    'qpJeQd6tN5oH4E7J' \
    --body '{"featuresToCheck": ["CATALOG", "DLC", "REWARD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'UAh5VXa79702d31z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'PHg6tXTsGmv1XM6s' \
    'r8tSaA0g0OCIEQYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '4pHU7Kjrz4HAGIJO' \
    'SxoJdIIw70J2JeqN' \
    'TxshoZJnsAkX5sxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'y0WLYMNb0QsxPlx6' \
    '4IQUpSToD0bb0SXZ' \
    'Uy9H0C213rnYfZ8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '8zURCckWWVlTYAko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 65, "code": "bV1bNoJJUhL5p56d", "comparison": "isGreaterThan", "name": "XSTpU3aCkzqs0hC5", "predicateType": "SeasonTierPredicate", "value": "HoRNWTVvIN7c2uh7", "values": ["Ls9nxKiaoWmrw6n7", "WST6JF9lLvPS5jJ5", "VYPrZA5UWNq6yTj5"]}, {"anyOf": 69, "code": "vaRaaxVQeMUb1kvS", "comparison": "is", "name": "RBv8hh81CTYPYD0W", "predicateType": "StatisticCodePredicate", "value": "1XmB5Z6en6c5d620", "values": ["GRQ2i1n2WJVJy6yB", "PVmpbwVG3MwHy6yQ", "U9addYCAtuTx2FKo"]}, {"anyOf": 95, "code": "KyxJqBCaof96NNQP", "comparison": "isLessThan", "name": "snWC9CFiRmbELIza", "predicateType": "SeasonTierPredicate", "value": "BEWe14kmPIGCrJoz", "values": ["CzyWKP30Kusyvait", "TsWtL2AAtjEKW31S", "Iio8nWa64x5pJSHZ"]}]}, {"operator": "and", "predicates": [{"anyOf": 77, "code": "Sm20DzdKk8FlVcy0", "comparison": "is", "name": "ll18E5J9knaLMlve", "predicateType": "StatisticCodePredicate", "value": "FZqotaiZN3MPuYWk", "values": ["0KLgddr0UUiy5jm1", "XuK2MwrRJukMTkO0", "5lHvw9RXrx8aUB1x"]}, {"anyOf": 47, "code": "maUGIprrzf5gWNxq", "comparison": "isLessThanOrEqual", "name": "LePf5b8MJ94DAh1M", "predicateType": "EntitlementPredicate", "value": "RFPlwtoen6TTQtwM", "values": ["X4QAE2aV1l1P0cjd", "c49Ah8hoDWRw7XYz", "ZLlLq8lPGFyb34DD"]}, {"anyOf": 50, "code": "r5lkfHjqVCMpunze", "comparison": "excludes", "name": "kf8Y5ksiqVvcGZxT", "predicateType": "EntitlementPredicate", "value": "7pduqX3e9tt0zz5g", "values": ["HaJYkzClqPty2kxg", "s7YuyxJLe1TkfLiM", "9EqyhFh7mq6sgk5c"]}]}, {"operator": "or", "predicates": [{"anyOf": 80, "code": "ry1MM9eo43Qi5cRe", "comparison": "includes", "name": "jxfK1P9wjSBBxjKN", "predicateType": "SeasonTierPredicate", "value": "Cbkpn0yX44aL9f0Q", "values": ["eaUdAmgmnzKSVlXs", "RNMykbnHTrHLmaTG", "yO5YXVhTiaE4WKnE"]}, {"anyOf": 65, "code": "7HbR5lY76lAzKbyH", "comparison": "isGreaterThanOrEqual", "name": "n9TSwEvJPZcYrXKM", "predicateType": "SeasonPassPredicate", "value": "5rvBRXJxUvm1xIvC", "values": ["ywA95KVla3LCTgTk", "9gluGDrbO6CoGGaG", "PtcVfRHox2lJjo1I"]}, {"anyOf": 56, "code": "g8TK1CF9X9mTmMVf", "comparison": "isLessThanOrEqual", "name": "aiQKdHknLotplfBO", "predicateType": "SeasonTierPredicate", "value": "9JgVZofu7lNuwrS7", "values": ["x7Sdt80ugFtH5gSu", "f2LOlVbEWajKUr3r", "xf7BiZI9Jujxs7GK"]}]}]}}' \
    'RJLGkijLEJPCdahO' \
    'Y2goEK35CZu7WE18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'eU5rtQUWRLvu3WEf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "wBn40sJji4hVE3lK"}' \
    'NQy2rJxiPPjJk44W' \
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
    '{"description": "HDDNDVgExcmm4fko", "name": "NMVNk6z4A3FI60uU", "status": "INACTIVE", "tags": ["I9vMEB8OHKsqKaw1", "EmCxOMl6uh44gPPf", "iJZCSkIQI1h6OjoU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'Y4QXecerXxPodPok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "DUivfNI3KdSIbTi8", "name": "dxU11tPBlMCz6SSp", "status": "INACTIVE", "tags": ["9y47AVCmFD0nKyUw", "cI9KJZt31la1wZgp", "PXxtcOPw0UBm7wcc"]}' \
    'ELVo9RYTquwIrGgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '3eqgOf7WwNZWyYuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '3y1TjdcOVw94gqQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'OWGw7LSW6Kb9otdV' \
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
    'BjacY5doQGhc8zSC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "eJ4Q8PHY6vGzNfPW"}' \
    'TQ1pJMwPVAUNYFOg' \
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
    '{"domains": ["7TplEkOZy73bRBtW", "CJCJuzB1jbh95vj0", "V2ccQ60lub807E0P"]}' \
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
    '{"currencyCode": "Ghia3QvaFIVfHyAi", "currencyNamespace": "TeDDuvgKTfrZ6Tfr", "customParameters": {"QrFIsYsZ1dTn2pA6": {}, "4FJuEPymbIAwDAyN": {}, "BagGD33WMVj7bfdf": {}}, "description": "xyqKQ4YNnTTwZeuX", "extOrderNo": "7f9iY3skbk25jLP6", "extUserId": "zS6a5C6awft8NPNJ", "itemType": "MEDIA", "language": "BQ", "metadata": {"IJTeOWoVtcblaKlh": "xMNx5h4l3ogPTLlS", "lGfh2XhfCB53jlBj": "zXLwoMxshoo8aHsX", "J87ywdDtou8Np74s": "3RLe4gpS550eQ5Wi"}, "notifyUrl": "ZiQUzC0vBF108QVF", "omitNotification": false, "platform": "OrgT5HMaelKs3hdN", "price": 5, "recurringPaymentOrderNo": "3uQJ2ZdCStanvPwu", "region": "BVifTkflegYoVHYd", "returnUrl": "QPAsGfQVawbSlqUf", "sandbox": true, "sku": "fZytHO4xrQvXR88A", "subscriptionId": "rNPkMbfhbrTb4ZPG", "targetNamespace": "4R5dqhreKq9si5LT", "targetUserId": "ZGjfJI0GRPR9FWa3", "title": "sAlKnzZ5Joq98jWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'zWZxmbhMr5aDNyd7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'VDhThmXAsBwC4MOm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "SF5ZPpYXTbgh3hVK", "paymentMethod": "yU97N87zJHVwE86V", "paymentProvider": "PAYPAL"}' \
    'nuoHevgj9ralh2tj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "IEDpjLJD7E0dh077"}' \
    'pXU34waIIRxeTkl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 74, "currencyCode": "M6AggzKZ3nqWutrp", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 56, "vat": 6}' \
    'OnBeqwBnFdy01mQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'VblM1GnFG6ePpjPG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "4iKj1VxNoFLwY2aY", "serviceLabel": 85}' \
    'XvKjhXcfKE45hKdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "2Ay5KgtWue3XkqcM", "sandboxId": "KE9l0uRkf5RxDdVV"}' \
    'e0VvPmen8keuXuWu' \
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
    '{"allowedPlatformOrigins": ["Other", "Epic", "Playstation"]}' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Steam", "GooglePlay", "Steam"]}' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'UpdatePlatformWalletConfig' test.out

#- 187 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
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
    '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    '{"appConfig": {"appName": "LcI8Vh4bQO4Nc65z"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "3NvXvIgvIynEaAcX"}, "extendType": "CUSTOM"}' \
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
    '{"description": "fXbKWmraqNIKPX6g", "eventTopic": "PHT29wkZwM8cvObR", "maxAwarded": 20, "maxAwardedPerUser": 55, "namespaceExpression": "Kxi25l9mb1mSJffU", "rewardCode": "aLwOsYRIJearztP7", "rewardConditions": [{"condition": "sqwracbiPrT7cARn", "conditionName": "ySCNlQCocWBq1Vsp", "eventName": "Kjs4jxjTNe3vK6XX", "rewardItems": [{"duration": 76, "endDate": "1988-01-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "J9YgLSRyjx0xgbEu", "quantity": 30, "sku": "IxEoxcgOEmGQpzN4"}, {"duration": 70, "endDate": "1989-11-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nWISZ8LUxYanMQUF", "quantity": 1, "sku": "sys0SaqnYIBTANsh"}, {"duration": 74, "endDate": "1991-01-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Vnsl61rzqSDNeQF7", "quantity": 88, "sku": "bShXMN0MRNkMX09n"}]}, {"condition": "QEwFSce6VsIsSSdk", "conditionName": "P3IqaPaXJc57cVP8", "eventName": "tXCteutO2hlDa0vo", "rewardItems": [{"duration": 70, "endDate": "1983-08-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "l8vuxWTaiUJpIgLr", "quantity": 2, "sku": "x1H9kC6LzFqk7MSt"}, {"duration": 34, "endDate": "1973-06-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CtGvxKwuL3MuhHXz", "quantity": 49, "sku": "m4u9ltRo1cXuco8z"}, {"duration": 45, "endDate": "1975-01-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "pmS8p27dvzUWMz6I", "quantity": 14, "sku": "ys0BxLbujuXwWEJU"}]}, {"condition": "vl8k6CNRAfp1s21w", "conditionName": "ulz8cb64KjGDHolx", "eventName": "RGH5sQmA6XL9p83L", "rewardItems": [{"duration": 10, "endDate": "1979-01-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5r4J7MEwKxtP0Ska", "quantity": 12, "sku": "PZUjh5Id1WwN3o2L"}, {"duration": 27, "endDate": "1986-10-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Kn5bM9rW10Xi6WV5", "quantity": 79, "sku": "A2jff0fTRIYip6c9"}, {"duration": 7, "endDate": "1993-03-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8JeefXJ2PdIoHdoD", "quantity": 68, "sku": "KHYwj85RIJjlQAk4"}]}], "userIdExpression": "T5By0AqALCR39RH5"}' \
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
    'PE9RVZONAcvKXL23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "ppvor8grcvFvYajt", "eventTopic": "vdiqyZzxREBSrOk5", "maxAwarded": 24, "maxAwardedPerUser": 62, "namespaceExpression": "G3SSfJb7YC46l63Y", "rewardCode": "Rc0T3d9XaFEWXtvT", "rewardConditions": [{"condition": "ExHo1HliWVA9kYxD", "conditionName": "aegAgXI2ciZ5FWoy", "eventName": "qYl8KD0zlFtltcFG", "rewardItems": [{"duration": 85, "endDate": "1981-01-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ve0VJQksEtHq5KHA", "quantity": 86, "sku": "baTP1jNjpn8azMyT"}, {"duration": 55, "endDate": "1986-11-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "7qRYPx0W6cXzOdGX", "quantity": 76, "sku": "0cTxgD0WOWAsThZ6"}, {"duration": 78, "endDate": "1984-04-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6xBAApmumWxYTfEE", "quantity": 25, "sku": "AQUoGDOUFK4BcWOx"}]}, {"condition": "nwerZoIJ2JMtHAD8", "conditionName": "gJdK4CJBY63ASIuZ", "eventName": "tE2WuycIdVm37lVy", "rewardItems": [{"duration": 97, "endDate": "1981-03-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GAcJRAK1mgNt0pud", "quantity": 51, "sku": "qp6XDPJmYDZqWoL8"}, {"duration": 22, "endDate": "1979-04-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "NGzjQQDw2Sc4DTbe", "quantity": 36, "sku": "IRN1df13EvjSbGYc"}, {"duration": 78, "endDate": "1977-12-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EocUfUPAI2O4xXXw", "quantity": 57, "sku": "BvhgsfcLURAHqkEp"}]}, {"condition": "mWErwMkbsCK44WEK", "conditionName": "YCuqx8xzh9bTsHGm", "eventName": "5hk6Ypn8KsMKfuAR", "rewardItems": [{"duration": 4, "endDate": "1988-04-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SPrezfQIy1FsYo03", "quantity": 69, "sku": "PIJabCPMhqOeDXc5"}, {"duration": 76, "endDate": "1994-09-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8xN38dVbdD5L9eqq", "quantity": 85, "sku": "3ZW1tXAOpK37SfSP"}, {"duration": 18, "endDate": "1997-06-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "mYx19GWm87P1GbEQ", "quantity": 53, "sku": "HoBLGz2Km7DEtivD"}]}], "userIdExpression": "Sv0mmNGIWjV9L9aA"}' \
    '57kR2ACNzI10tZr3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'AjmwxrpjfgamOka0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'iwQFwqJrWlE1xE0A' \
    --body '{"payload": {"gbtqawrlckTguotH": {}, "ZZnBkb1WomHQ23Rr": {}, "mGI0fa4tSghREoTA": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "vCltzrUTJgBjWwZM", "userId": "cxIcmhutMHEeUDIy"}' \
    'Z6bUl6Q4DAwzeZS2' \
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
    '{"active": false, "displayOrder": 56, "endDate": "1996-01-11T00:00:00Z", "ext": {"xb6kbzroGyrFwTSd": {}, "zLOXwPp0OS1jOq8H": {}, "tddVhZ7lfOiLRYQk": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 56, "itemCount": 45, "rule": "LOOP"}, "items": [{"id": "SEqiXIaji4MOmP49", "sku": "4vGlNtuMUpS3K4kK"}, {"id": "GKct8SZQK7TEK4sZ", "sku": "zj7oPP3OeZVILEaX"}, {"id": "bHnhR8gT3if17nsn", "sku": "dhy0Gtga4xRRNit3"}], "localizations": {"ApyAvkVtA8b9zvOa": {"description": "iSMHjVciAVrPuzKV", "localExt": {"1Wj7J3QrgnhZMehN": {}, "OncXNM18ZiBLaa5i": {}, "N5b6ODd1kj4Qj6RS": {}}, "longDescription": "5aO256ceteBSz425", "title": "Kp2PGW8gpXu2mBdR"}, "vF84eD5m02245Ylr": {"description": "GlfgrzLifZvRPXji", "localExt": {"YCPM52HK8ASyze4T": {}, "9TmQupOzuaRV8Vw1": {}, "OuyVC7JcK5UdheuW": {}}, "longDescription": "7HOMooXzmW321H7C", "title": "Ge7BlGbNTtvAEsQs"}, "0WkD6Y555p9oqb5M": {"description": "eMGL8kITGmF087BW", "localExt": {"KC6wzHgwFqS6c2YC": {}, "A1r312BKDvA3YyGs": {}, "BgTJCc6734MnrbjA": {}}, "longDescription": "M32RlQ3Wpg0XNZCs", "title": "ESCHRPA5OQX8twQr"}}, "name": "Du49JFXjPc1tJBaH", "rotationType": "NONE", "startDate": "1994-02-09T00:00:00Z", "viewId": "2IdgUYmmt7HXJCUj"}' \
    'wNMnmrmR9dDVbvyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'upYCzyYEaMgXsszL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    '7hpsSwAQxtDEUm4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 94, "endDate": "1997-07-17T00:00:00Z", "ext": {"jakKtgPfJHbuwF3a": {}, "ZQrVPWyZpnVjbpot": {}, "D8HTOOdvA4UhdTY2": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 81, "itemCount": 37, "rule": "LOOP"}, "items": [{"id": "uGcD5vraJ3WftgZ4", "sku": "3r4ZLb7i2SZkIaAN"}, {"id": "vZ0I2EGVDWs67zwX", "sku": "LLDtNRfmo1w8aAcu"}, {"id": "RQzdYhuES7BncXfi", "sku": "lyRfU4YHfMpHxEcJ"}], "localizations": {"G7c76AToup2zhRng": {"description": "3KibPdtHZPKb8CPL", "localExt": {"dIk4I9TU6FvvEdqH": {}, "zEDtl5oR9m1dm3fG": {}, "K1wINqvFrAsrmYYu": {}}, "longDescription": "40w6szojkvjtacFS", "title": "VTvgh23BGEa5ftmS"}, "BKQ3zAXk9qVrzEqs": {"description": "DwIwRyHKWspPtJlL", "localExt": {"DOjXTWGIrWq2VvH0": {}, "roA20Sfzrc9YYsgv": {}, "VLN3usfhiyCf1FOd": {}}, "longDescription": "dxtE52sFK1jNp3Ow", "title": "crNR2jH7Xx7m8IqI"}, "RyUqaCbbMa2LqgJO": {"description": "AfFwvvgYPIFEVZLG", "localExt": {"zEglEe95LWKrkj7T": {}, "Puigp3RiJofgD4Vy": {}, "pGT4cTfKNrjPqUk0": {}}, "longDescription": "t9aquw2B2UVIQMA6", "title": "BOpxtYbmQwS5kNxC"}}, "name": "PLeKM4cQl8DlY91S", "rotationType": "CUSTOM", "startDate": "1985-03-11T00:00:00Z", "viewId": "eHwrkPCaAycmEvk3"}' \
    'rVTLjZT9qayJJtW8' \
    'sqkuIBd1NrGWPVvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'hMTdfTjLVxzjyQsg' \
    'v5n6Vn7Tiakc1Rzb' \
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
    '{"defaultLanguage": "4MCHH4aATHwPTM0L", "defaultRegion": "fcjvOko7332ZZa1Y", "description": "fuaQ7gPgiz2EBME5", "supportedLanguages": ["ikH5iUT9GB4bGcYz", "y0T6Q89155mM6RsY", "xtVcgA1q0sR85Dcn"], "supportedRegions": ["V5fUvb2OK8scK4My", "Iy9F8aBXzn8z72hf", "4D4NOpbUDnyVmYot"], "title": "ZCA9LADbjj6viKPQ"}' \
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
    '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["l1kZWnqjJaGGTFaJ", "HecFy9m5s6oIWMnk", "88GXMrS82vN0N223"], "idsToBeExported": ["6tI7v0x9St2EFfU2", "FbyIXierPr2qLKBX", "RYt7v7Wfg2omS11Y"], "storeId": "yIWGPc92PcmK9zTg"}' \
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
    'GQs1FIKxCXUhNdJ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "cK7rz2VPJ8AZ9i1m", "defaultRegion": "l0sbgQ5zPZbllwvt", "description": "3TjGezRRUjCNiQau", "supportedLanguages": ["O5Cfja0qWoqWrZJA", "MVQaCd4UgSRsFc8F", "Kz1j1HfaNk1P4hC8"], "supportedRegions": ["wgvaTIntj0rekmCK", "MOHEhe6apnthJsQp", "zHxEsiEsZH3UVmVc"], "title": "OxU0GsP6oBsZy1nI"}' \
    'eavdWM4UiM8xE2iH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'gKDtYUBWq18cbnbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'jszS84wsQH451BnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'RGwBPZ82ML7i85xA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'iG2FleXiqNPeymXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'MK8gaxYcDDZjCrkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'UdoPRrSlMOoEllCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'tDiZDBLqmmiE0hD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'A6L9zZJpI7J4njh6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'wMyuNtA5mMerAvf2' \
    'EK1rsQWD1svihoAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'Bd4hkykRLwN2LHFk' \
    'XjhDf4RPTS1xmIM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '8uco5di3sJNayfJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'kaJtAFsemukeOnQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'vXAFVKLeOpEjPJDB' \
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
    'PU8LPr0bjy4nFkl8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'n6PSoXYb9tc6rYyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "iaUKC8t4GV0JiE7Z"}' \
    'bWP80ZctunIw8zzj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'r1oeY1p4P0xno1lu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 92, "orderNo": "qDck0QFovelKxdFe"}' \
    '87vTbT1ykevWiIou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 8, "currencyCode": "fKqq9CzJlj0UGtCq", "expireAt": "1989-09-19T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "lYlBTFD4MBzAgdtJ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 67, "entitlementCollectionId": "aktaCbkIORjbuZi7", "entitlementOrigin": "System", "itemIdentity": "bQpOtqU8Y63DFSnh", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "AhvjsHqU3mTbQzxk"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 96, "currencyCode": "FpwgjtHkQyb5yoi3", "expireAt": "1973-10-14T00:00:00Z"}, "debitPayload": {"count": 16, "currencyCode": "54fgXlDCLFwNGzR7", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 43, "entitlementCollectionId": "SvqUKqpSaqBWWsEe", "entitlementOrigin": "Xbox", "itemIdentity": "M93LGdMKko1WdXcu", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "jnyBh936FR7fT7f0"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 31, "currencyCode": "w65iq4fnnFA4ieAe", "expireAt": "1987-07-20T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "JcWHLxYckKH0j3mm", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 32, "entitlementCollectionId": "Y5FsP84rgl0AQlBi", "entitlementOrigin": "IOS", "itemIdentity": "iuP1xyPeWov5pJJd", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "u2TxbDTPkZkYfTO2"}, "type": "DEBIT_WALLET"}], "userId": "g00JcXGaIUaL3FoA"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 93, "currencyCode": "eK2U3IHpgmmQaQj7", "expireAt": "1975-08-31T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "PiOQzKhR4x3pYj5b", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 93, "entitlementCollectionId": "9x03hTzeUaFK6P6y", "entitlementOrigin": "Playstation", "itemIdentity": "ZxqlGGOe2VYsej3c", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "YWXMTlqVrGyQYDnb"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 20, "currencyCode": "DNCoJ22RroweT9Xa", "expireAt": "1977-11-06T00:00:00Z"}, "debitPayload": {"count": 44, "currencyCode": "wU5IJt4pAasYNW28", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 73, "entitlementCollectionId": "3UZ3q6QdMAL9IC44", "entitlementOrigin": "Nintendo", "itemIdentity": "Wck2oK2mLwkxgJXK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "JSoDgfLayvPNWmvz"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 61, "currencyCode": "7XmR8FUW42wLu5tQ", "expireAt": "1985-04-07T00:00:00Z"}, "debitPayload": {"count": 95, "currencyCode": "y3KsRDI0m4nKNGlX", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 61, "entitlementCollectionId": "2jJfLGd0zQqYmGkk", "entitlementOrigin": "Nintendo", "itemIdentity": "Pcq83l2hWOuqsilA", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "NFfxIWM9jL08jtCI"}, "type": "FULFILL_ITEM"}], "userId": "Id2vIIeRmFR2TQ2r"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 95, "currencyCode": "VlcOTKoZimYNHB2p", "expireAt": "1974-11-09T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "oEsCRrlY6AX1ksmS", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "m75yFZVt1HZPcFbl", "entitlementOrigin": "Steam", "itemIdentity": "XrKUphPevxFz1b7Q", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 80, "entitlementId": "vCur3yS6PcP3N8ee"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 65, "currencyCode": "qH8MR9K5kA67H3XO", "expireAt": "1989-07-24T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "H5cJ1x2IhHEQwW44", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 54, "entitlementCollectionId": "5yXnevZsdD9Iip75", "entitlementOrigin": "Other", "itemIdentity": "nXpH8xifqavEfKK0", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "ei3ChLwkIGKtgDjD"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 78, "currencyCode": "0UewhSyu7JMOvmbq", "expireAt": "1988-12-23T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "rqi0F1FGxhrYszqB", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "ASrarIiILeXO18VY", "entitlementOrigin": "Xbox", "itemIdentity": "Y5Ma16Sr2B137kVZ", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 90, "entitlementId": "kISgONgrrElIGGV8"}, "type": "FULFILL_ITEM"}], "userId": "DDLuoQJspLLZbnus"}], "metadata": {"I9Nty8KpP0RHI8ic": {}, "uY92iMkPiEKRgT1z": {}, "ZPaKlnIY3vGLET05": {}}, "needPreCheck": true, "transactionId": "WhwijC7ydSFRQ4V5", "type": "OyypfQ5iJtNrVbjn"}' \
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
    'yYERw24T1DBdzzVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "hZKnh9FfHsuwhOtg", "value": 84}, {"id": "mAmGWgONbsaq6FR8", "value": 17}, {"id": "FVcE5vUWRlOGzgjn", "value": 12}], "steamUserId": "evVGPnqXXPustpaZ"}' \
    'z47mZuZptSindV4K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'pifmfS94ybYG4wLa' \
    'PxhpGODmwJCF4HCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "6DG2DfogFpQ6h4G1", "percentComplete": 73}, {"id": "4EqnaczanLg5zKTt", "percentComplete": 1}, {"id": "1FR9rKaxaWsCGgI7", "percentComplete": 14}], "serviceConfigId": "Hr331YipwCDOc9FN", "titleId": "s0rjVHzs9C25B5DY", "xboxUserId": "IkGcoYjLN4VPTXzk"}' \
    'nDz9YRB0KErE7XXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'kVsvdGlmWWA02nKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'O7XUNrraxsHn4uKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'XVFTTx0TcboB98Gf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    '5PcmWICZpV13Vxw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'InWyY5J5tCY01Fkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'WfSwD66Xg5Qbc0Ej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'xxzLQLRh64Y1jopY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'iTRZEzq26aXSjyAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '2QsMJlAxZUci2CC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'SEp55TimgFFENNE1' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'yfCm3JLSdyxEkUru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'paAg8X3qrN4NJQHu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "cDPcorTkEhvJJBHT", "endDate": "1973-04-06T00:00:00Z", "grantedCode": "7gHQdNqoM8JpOKNA", "itemId": "U33hDeba57ZY9YNN", "itemNamespace": "rTcdcnzDvUHgR2bX", "language": "MtYa_XC", "metadata": {"Uey4fuSj1kSeWA37": {}, "02McnnKWV37CLHYv": {}, "ul2IsFExmn4GV4MH": {}}, "origin": "Nintendo", "quantity": 11, "region": "OZyTMMDazz0zG1Fm", "source": "REFERRAL_BONUS", "startDate": "1989-08-16T00:00:00Z", "storeId": "1Z0GtE9ePlbHeBy2"}, {"collectionId": "yYQJsEZNAnUcJCHb", "endDate": "1971-09-15T00:00:00Z", "grantedCode": "M8I2sFnR0i1EP6ek", "itemId": "QzrmDqC827Ayw8Hd", "itemNamespace": "DdyIIR5cs3jEJm9c", "language": "Eks_UcSH", "metadata": {"PcoqdV16bQzZjJii": {}, "JFm6K0MsbekvKte7": {}, "LEbOajs9HWygfQVP": {}}, "origin": "Xbox", "quantity": 2, "region": "qE6XNxmrOFx6AenN", "source": "REFERRAL_BONUS", "startDate": "1982-07-25T00:00:00Z", "storeId": "o884abNDjMPiZHxh"}, {"collectionId": "Feo51XVDI8f5EWnd", "endDate": "1975-10-19T00:00:00Z", "grantedCode": "cek3atmhTw5TDjWY", "itemId": "gm2yGvhR6HS643vg", "itemNamespace": "PdN21mWwtuqNbtaA", "language": "Ld-YlxH", "metadata": {"P8JKQ1Fia4jQzEGs": {}, "QTmKTeq9hsX0E1pS": {}, "QzkJa95maQLAJLoG": {}}, "origin": "Twitch", "quantity": 99, "region": "HeP6XZjcdrsSt4sp", "source": "IAP", "startDate": "1989-02-05T00:00:00Z", "storeId": "X2uBUIh1pfP8bRBV"}]' \
    'oq807roCNo3Qw4Z5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '4sNMs82e3yxhkTFf' \
    'QHB8O5ke34NGuMLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '7iPaGqelc3lbrPkW' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'foKqIz9z80ICxp4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '7Opf9oRlvBsYj4Ic' \
    'bdUz2cBWKIUuPLfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'TFl9DbHQLYWCwsAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'cQ0VGEUxlcNQWOpR' \
    'LETWMAv0uJ30L51T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'xrdknW52x2o1yDO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'bwcKYeFoxUWdvEBT' \
    '["wUyzq5bzdNEHv6Gm", "aokUOIadEDAmp524", "IRplmKcwvGguz7SA"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'cGvV4lCJgcrAut2g' \
    'YpuKbE8ulWHoG1zC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '1K7oT3iNe5yhZbqm' \
    'AgI6LUauh1GlEo4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'aeHIeXSROEb0iXuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'FoRm7DFw5ArJzNAE' \
    'lybJSWLbZCdcwYHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'OIGu0vXLFZoXt8k5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'ZtRJGwh0BPRCWdTn' \
    'ytxmesJ8JDDcPDev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '3e8oc7sh3o0r9VYI' \
    'h3Jj15pf4bXUrytK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "H5rM54pVKLq2niQI", "endDate": "1988-09-11T00:00:00Z", "nullFieldList": ["xqs6jAQJWL8Yc3AK", "tQffBJPNo4VIzCxI", "BQt7BEsLhZnLrMlv"], "origin": "Other", "reason": "ZklpNPl881jOSvCv", "startDate": "1975-01-29T00:00:00Z", "status": "ACTIVE", "useCount": 15}' \
    'gU419HQGug3ApiXA' \
    'ivNHSVq7Hy14PWQg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"yxy3AZ9Q29c3FLGn": {}, "sacdakVuBk3eUIeG": {}, "fzqhOBhMJ8BCR0Pr": {}}, "options": ["4lUceWJidPUCDHoZ", "POFJliGQwzPSicmK", "e5tLTY4T61Ztjv4H"], "platform": "jtKUJ2g5iKvkb6ya", "requestId": "N0rJRTtAoroj50ib", "useCount": 42}' \
    'vd9MZqnUseNuEx7Y' \
    'DEkdFOw34ZkvghT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'B0olJY1qewjIDEZe' \
    'db90DCSoLAgeUlju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'QXNi35z75tQmcrR0' \
    '8dqYhgjNEKxgigqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'Iaaftddfk3N3FUGt' \
    '7hRJWz66woOwujZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'qrVmhfRRK7pehYZg' \
    'LjFarF9k0U2fuxYp' \
    --body '{"metadata": {"TLF2CAqFwYdrzmGz": {}, "kvzgJn2pWVs6zZRX": {}, "BAexxsuLkWktcAyk": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "ay7LItVjr1YSzeXf", "useCount": 96}' \
    'fvsOwNGBX5w0CKM4' \
    'KgSaTFkYqyDBVeKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'VWlgMI2a4HuuQiMf' \
    '3ZtSRaKTvnYQcQK3' \
    '83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "DPc4Bi2BT8WWMNZ7", "requestId": "MQ0xXiAUp37WFZG1", "useCount": 2}' \
    'KEQaxvtIGC9xYvHb' \
    'X0ptwZqHLOEqFcFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 56, "endDate": "1999-04-09T00:00:00Z", "entitlementCollectionId": "a88llB2KCetfPNaS", "entitlementOrigin": "GooglePlay", "itemId": "uxoSkuKry9iZZvtr", "itemSku": "eyTjGpaUSGjv2AbK", "language": "gIoGvyLZGyV2nNIK", "metadata": {"GyVatdlj1BAkRkfD": {}, "5QI95OctLxGf6Sil": {}, "VAgYAplPOe3Qpvya": {}}, "order": {"currency": {"currencyCode": "quevE8jhAM4C34bB", "currencySymbol": "PbifHDiBMsRy1ZmF", "currencyType": "REAL", "decimals": 98, "namespace": "fnh1larFYcM0OoFV"}, "ext": {"93hG5GVHrcfGpWAu": {}, "flVB1opvSUYD0K7Y": {}, "5bCch6ur33FthZ0F": {}}, "free": true}, "orderNo": "MVozVctDaMus5bso", "origin": "Other", "overrideBundleItemQty": {"wx7WN70b3lBnY61o": 17, "C3MEgBrVUoMCPYZA": 89, "KXcluepkD2cjAyU8": 39}, "quantity": 41, "region": "hUL0rK6YlDgS7DF6", "source": "REFERRAL_BONUS", "startDate": "1996-07-11T00:00:00Z", "storeId": "Le45nohGKrvpCUuC"}' \
    'lhTnLjG2riY5IlAk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "HgxsULSOBCWJH9jh", "language": "Zlc-825", "region": "sq0yRuQRarSVoIle"}' \
    'Z7PtbbcriinQEr7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "ILTomzVEdqAFGjuR", "itemSku": "aB4ccMpIH8Lan5Ny", "quantity": 94}' \
    'rMiD8seoTU64hQTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "u9MixCLkCkF4GsBy", "entitlementOrigin": "Other", "metadata": {"2Sf2vnHOZhdmTd8E": {}, "NVRZH8lmeTjzHxgw": {}, "KaMjUptGDH129SPA": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "YcrI47DABOUyTgLq", "namespace": "cqWj25jcDQ7S4nZy"}, "item": {"itemId": "mFu9HDayb3pUN53x", "itemName": "wUDjiBHCt3VKh9Na", "itemSku": "XK6yInDEdr3JfyFO", "itemType": "9PUA61ceL94UMGbn"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "Qy5mWp1i7XAgvpl6", "namespace": "VM46gEFqwJcySobY"}, "item": {"itemId": "FsOpqr85xVvxj351", "itemName": "m51uwOolqmdu4KlK", "itemSku": "Lptx5DKFWYNaRNbz", "itemType": "pFsjJLszOiHFs5xA"}, "quantity": 98, "type": "ITEM"}, {"currency": {"currencyCode": "g39H5hnoP20tlphe", "namespace": "w85KPyj4EGRMQTeD"}, "item": {"itemId": "UODYJlL3GEb7CgXW", "itemName": "eXJrzNrt0fkjelr7", "itemSku": "hVgkvQdto2PuC14L", "itemType": "u2G4Mw4Mo4TirGDZ"}, "quantity": 84, "type": "ITEM"}], "source": "OTHER", "transactionId": "NJRgQ3CCklU97Kko"}' \
    'mnjFaT7NQeCqpaKP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'JkOezU2RemXA27tg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '6bypXmwZRpU8Qcrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'p46NHHKuQExWorl4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_SKU", "language": "vkEm_UMqX-gh", "productId": "WCDjFeol1Ra8c5c3", "region": "F5otSicHNAFf6XoF", "transactionId": "jTyGzUy7Gy3lIbJD", "type": "APPLE"}' \
    'ko0KsF8jqH84W95Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-admin-sync-oculus-subscriptions' \
    'Mkpzkat1qYXphVMs' \
    --body '{"skus": ["bw6Rv3XZ4XgIfTmv", "ZDu1OaoVmtgO5YP5", "6VohkMQrBSOet1Ec"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    'W3bKxXuYOn0ULO8b' \
    'wirHmfnBivLKinrw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    'TNNliEMZaebfXS8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "Z4cc4oVqQk9tqGzt"}' \
    '1BHwaxrSepYwXWbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    'BNnyBdWMRvISdcF4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'TWITCH' \
    'NbAv9VCU7hdDbGzc' \
    'JKa1wsM434xCGXTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'GOOGLE' \
    'AhUON0V9Qm5GiVky' \
    'g2ApoZozOLaCrfo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'qFXI3sUf1uYi2GvX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    'liGeEan1MCH7tD6E' \
    'NaY8enBjqk85CIoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'wu2hQOOqU4lxwyKb' \
    'YKZdZvXUVezIt3He' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    'zhSE8IGOaRsievm4' \
    'IDxtFXsff5uksqDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'H01I9KImkc3YwK5J' \
    '3GyOQJLupcfcMQlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    '7ssE0BVP1MHJQhmZ' \
    'HHktlLrVbhm9d4y2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-admin-sync-twitch-drops-entitlement' \
    '{"gameId": "SbI0OO1ououcz4ta", "language": "Rdp_jR", "region": "bzDdA20g9UeCPSEk"}' \
    'HvpI9pfGr7q4J4HR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'fPSShguxCFDvHcOo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "u9G8lXxC3R0xIfzL", "currencyNamespace": "RFel1aMfEV5ZvvwE", "discountCodes": ["DVOZ5VOwnn6MrDyE", "xIjLvTJkl9WnxI3c", "4i8HDHZe4XLK8QPE"], "discountedPrice": 54, "entitlementPlatform": "Playstation", "ext": {"7MUcU28Tjo0XKr5K": {}, "BD3YwTJ4Hn5XqA2k": {}, "k1A3H3rxXt6ggKwW": {}}, "itemId": "IYIm0ypwg4VTJpu6", "language": "4It1R6axg5VLrk3K", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 57, "quantity": 53, "region": "ApNgT5fUWdp4LE1V", "returnUrl": "nZFgkytfX1NqG3h3", "sandbox": false, "sectionId": "WveCv1Rj0emRqo5y"}' \
    'TUCEJDyanAifsUA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'fKzeVIHcetoKKyIT' \
    'DGaFUZsvAcQqJMBs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'peHcHhz8Ok8bgV76' \
    'h8tj65I0OW9DhwNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "CHARGEBACK", "statusReason": "JS3l5sWDcfVxx8PS"}' \
    'jamcbAWAUiz3UhK7' \
    'hY9Xv4bnujVOhaDv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'f3evXo0m3jJ0xten' \
    'PXW0Eog3qNqoLr5u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'xNWDT3hlTaFfn4Th' \
    'PY3oU02EfGsDjENb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "nYSDYXgkcUGG5hRG"}, "authorisedTime": "1988-12-18T00:00:00Z", "chargebackReversedTime": "1980-06-01T00:00:00Z", "chargebackTime": "1978-05-16T00:00:00Z", "chargedTime": "1981-10-19T00:00:00Z", "createdTime": "1978-04-12T00:00:00Z", "currency": {"currencyCode": "dlIm2TA1uiNbPsWP", "currencySymbol": "4dql0EDA4cU4Wstd", "currencyType": "REAL", "decimals": 59, "namespace": "mlpHUD2h7I7UbUNr"}, "customParameters": {"p02FBwxeZXuYnlq9": {}, "5T6quy9PsI3dx75G": {}, "AWm1WfXALgsjwfd3": {}}, "extOrderNo": "eYGpxI9DQs2vOJH7", "extTxId": "6fEQ8WC3iZ6amfE0", "extUserId": "NHQzAvmPZRWnKIfY", "issuedAt": "1996-09-05T00:00:00Z", "metadata": {"kPDBgq17ElbCwKI3": "aXhSEFUvuqvkzikf", "2tQ7LhwHqc9mwHFQ": "3JQtpRpQVAOexmqW", "b9l5yHbiXZ6ThrZy": "4bUEBAVPV9L4ILPJ"}, "namespace": "qDbKXtFPmTQOO3dJ", "nonceStr": "d2YP1XIUKL9g3ACu", "paymentData": {"discountAmount": 75, "discountCode": "VGeRPwa2XfZ7wxA0", "subtotalPrice": 23, "tax": 94, "totalPrice": 43}, "paymentMethod": "URYUzEglKz4HU03X", "paymentMethodFee": 69, "paymentOrderNo": "4OxvZytaM4c4qTIV", "paymentProvider": "CHECKOUT", "paymentProviderFee": 44, "paymentStationUrl": "bSzJGQtaPFC2SxEM", "price": 6, "refundedTime": "1996-02-25T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "Q84nuG9DGOS5kQvK", "status": "REFUNDING", "statusReason": "eEQQ5qXZd41KiSlL", "subscriptionId": "VmN9KSbiFMGQMewQ", "subtotalPrice": 22, "targetNamespace": "YiLFQBUx73FrGG1N", "targetUserId": "ypPAy9ZqaNySvpXw", "tax": 78, "totalPrice": 0, "totalTax": 54, "txEndTime": "1972-06-07T00:00:00Z", "type": "489Y6N0H6yn3PYiq", "userId": "bIBvNbRcU7z56hvD", "vat": 0}' \
    'SdmqyftEYQl2xFFt' \
    'ZWlWKmQH3tI9yHxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'aa0zbT4NGP7Xy3gY' \
    'PJQEukOcBtFyzW1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "Ke15m4NorN2PP1hX", "currencyNamespace": "mALwnidAmiLFK5Dw", "customParameters": {"ak0R9n1WBVWp96bY": {}, "rG5ANSRCXWy9C2oM": {}, "6ZVdGQt7ed5WKQJk": {}}, "description": "zGQPBQoXpXVvDLul", "extOrderNo": "elX30R2hPYkRArSf", "extUserId": "ExoJMARmEC7Kyhtx", "itemType": "EXTENSION", "language": "VSRt-BfbW", "metadata": {"NZZ58G8Xryw8bfE6": "VA6HEvqN7kX4VVVB", "S89UUbLl2ciimYDe": "DceMEtPkjYd9PNBi", "79WHorOJPVoTCRV5": "enPlVeOc8uDGuA9Z"}, "notifyUrl": "VtPuyxsPGoUCgc3B", "omitNotification": true, "platform": "50CSEIj98y965Rax", "price": 42, "recurringPaymentOrderNo": "81aRTbDoFbYLVqxK", "region": "4NVV4KPvi1IDd9h3", "returnUrl": "DkrqAqSqczq4VIqU", "sandbox": false, "sku": "JmGny7g72f6SO7Xa", "subscriptionId": "yfUmZz42HE0t7TAQ", "title": "m0TGMk4DmrwxC6EQ"}' \
    'r9lk8teEugVd3X7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "q2K0e7A1xHVzxmeP"}' \
    'Z06tOqoxMhyqIyPd' \
    'nz3ReXTrC2sNANyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'nXnunWNxg0gQztAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "YiUb5SlpeaMDVE3O", "orderNo": "DebYRPEkmK5ePPaa"}' \
    'cnQTuUibmiz8AhOG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"RIwwo9w06X6XzJil": {}, "jntx5TSAxNBchtca": {}, "aoKZYk4GlikyI0LG": {}}, "reason": "O0eNNgl7jdIf7pto", "requestId": "c5rPRsGFfGRRKQ4t", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "kbpELCCQEX7DlAjo", "namespace": "DECQ1ALpc5HR4Bp3"}, "entitlement": {"entitlementId": "8TGeyfWQESVLLj43"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "Tsq6xxQZBGiif91r", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 84, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "zqSh3UQrHYlWFx0r", "namespace": "b4eSExhChscwh8P6"}, "entitlement": {"entitlementId": "pejiRuUjCpBUL68K"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "lwzAWiJH282OIiKU", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "thMfA2pxZ7ocAtgW", "namespace": "GRZGmCEL7IaqoDDi"}, "entitlement": {"entitlementId": "Q322lITGdQLjygzd"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "WkX7et7rl9ow7BDn", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 72, "type": "ITEM"}], "source": "DLC", "transactionId": "zFRgcuTMYiBESlCY"}' \
    'dNui4AfrJuSaiOYx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "uj6n1UTUHsgjv4O6", "payload": {"6qvH38lYKeEiUS3G": {}, "YxZHMK3ybnM1cQEi": {}, "hWjWNwYN6xeNeZMt": {}}, "scid": "T7f2d2NhlIgGSvbX", "sessionTemplateName": "e1Hyw3mylk3Hwg4W"}' \
    'tj5wR9o07ypJFcZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'oi0QeG6cD8trKjrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Su4MOj7pBAbAKLIC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 42, "itemId": "1d689kzJWUj0IhAu", "language": "SR15xUgtPxWpU3nj", "reason": "fM3MLLEwpsdD0knP", "region": "NT7MZM5TUkTp46Y9", "source": "LTNtGN9WUqYyTxul"}' \
    '6u3RuXCCJSaYmbf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'tEBMWAIsbPmXPNCh' \
    '5Rfq2UC1TCPCsq2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'AEzRa56radYciedO' \
    'lGrfTUc5ACZJjhP2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'aqyZJps39vNgtqv5' \
    '52OktaS7Id9oPGer' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "6FuXv7wMnItLay1I"}' \
    'TOwqgFDt8J1sETgO' \
    'rOLZUbQfz7B7kt11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 83, "reason": "AcV0wHVw4OJZ9KRf"}' \
    'K3ElT6izH6Pdx5D1' \
    'ZrPFTEv91KnFOHx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'QGVt5sQ7M74MHRwG' \
    'WuXrmWB81vpVnNLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "fxMVPORdXWvsGZrP"}, "authorisedTime": "1995-09-27T00:00:00Z", "chargebackReversedTime": "1984-07-18T00:00:00Z", "chargebackTime": "1997-10-09T00:00:00Z", "chargedTime": "1999-12-09T00:00:00Z", "createdTime": "1990-12-23T00:00:00Z", "currency": {"currencyCode": "rDa1xpqIziihTn1q", "currencySymbol": "m3WYY19InV7B8tHI", "currencyType": "REAL", "decimals": 17, "namespace": "K2chnQw6dRB9aYle"}, "customParameters": {"h3D2r0PGvO0IGH5a": {}, "AxTCbwpHq5b9TYQL": {}, "U6VNGYuzawgheBGV": {}}, "extOrderNo": "6FopCasHzSLbZZFV", "extTxId": "Iz8Axh7D6vDwgTWz", "extUserId": "fQZmZcPHcdeyMGra", "issuedAt": "1999-09-18T00:00:00Z", "metadata": {"yLwQHFxeaeIREKfK": "rgrQb1IEYi9kZKg0", "DnxN18EaQxhuWhaj": "v4y7mpuDenMHvCJx", "PolhQomjBGEe1V7Q": "e1VtpXfKrTUd4eK4"}, "namespace": "cPdj9IYCmOOskIKi", "nonceStr": "uKPVqNdfcbarmjmz", "paymentData": {"discountAmount": 21, "discountCode": "u4moOYd8XdHELjym", "subtotalPrice": 93, "tax": 34, "totalPrice": 6}, "paymentMethod": "KD8lNq4hOjr98OLo", "paymentMethodFee": 68, "paymentOrderNo": "3hdj17CLEa8QbsGB", "paymentProvider": "CHECKOUT", "paymentProviderFee": 37, "paymentStationUrl": "Dw7Zrilk8Q803RjC", "price": 10, "refundedTime": "1982-05-12T00:00:00Z", "salesTax": 51, "sandbox": false, "sku": "cgOIphhydYZ7NEwr", "status": "REFUND_FAILED", "statusReason": "bZe3BXyDfCse1Idj", "subscriptionId": "n7UTJHBJE3tOlW5Q", "subtotalPrice": 21, "targetNamespace": "RcQcxJjxgx0It94B", "targetUserId": "uLjZOmtY6jje5osr", "tax": 54, "totalPrice": 41, "totalTax": 10, "txEndTime": "1983-01-30T00:00:00Z", "type": "8mqvM4LzAMy18Az6", "userId": "wAqGqaSmwDvoaPbc", "vat": 20}' \
    'XBEfj5FBqjqhaVBj' \
    'Vf2bpiMDOiSWOpn2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 57, "orderNo": "ctkrQt7UdVDHgEyE"}' \
    'MT17gAkJ9ZOyUyKX' \
    'Z4gnJD0btvfiaLot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'p8rjTOGuuZKYSboP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 31, "balanceOrigin": "Xbox", "balanceSource": "IAP_REVOCATION", "metadata": {"NJxA5bUgJyfyqZXs": {}, "JXmWaoddgjJ2F009": {}, "o01wDwPk87RGZxhb": {}}, "reason": "on95Kr4kABVvvoyJ"}' \
    'HCJBXauQb7rZO3cL' \
    'AcITU9eaHQK6btDx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'qspEHxJ7HIZTmr9S' \
    '9JzIoTTXKTR2Z9P6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 59, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"39RMuXDX1RgEkBol": {}, "pVL29zMvjDniDn8A": {}, "YrRRr985p7F8iN9R": {}}, "reason": "9kmB5pdeZ7PqPhvi", "walletPlatform": "Oculus"}' \
    'KZkGycl5oKG2FV9j' \
    'HnWg7dx8OSOJ9EFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 50, "expireAt": "1976-02-10T00:00:00Z", "metadata": {"x1qj85bRrVwuOnqE": {}, "PcdhXj214NDtW9jj": {}, "IhrEmkNYBheQNR4z": {}}, "origin": "Steam", "reason": "g74z6KA7qyrdGdWM", "source": "IAP"}' \
    'BS6MQ3orSyb3fSoG' \
    '1E1gohjzQBWPVD8f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 13, "debitBalanceSource": "PAYMENT", "metadata": {"qGKgfhTaBBmPDLRa": {}, "6mzkhzzfqsSgeEUz": {}, "auX2BiTkHqFomi9q": {}}, "reason": "MKO7v11iTPPXFNeZ", "walletPlatform": "Nintendo"}' \
    'KYOwqvWgcSMiL3AD' \
    'cBZC1b1ulnqTNaXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 76, "metadata": {"srrwFc43BEFzGxzX": {}, "Rz9ek9cTfklLvhRE": {}, "HXR9ZyR0gYn2o0Us": {}}, "walletPlatform": "GooglePlay"}' \
    'yjwPmzYZp1Cer18Y' \
    'eUzcRemWJu2baHMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PayWithUserWallet' test.out

#- 345 GetUserWallet
eval_tap 0 345 'GetUserWallet # SKIP deprecated' test.out

#- 346 DebitUserWallet
eval_tap 0 346 'DebitUserWallet # SKIP deprecated' test.out

#- 347 DisableUserWallet
eval_tap 0 347 'DisableUserWallet # SKIP deprecated' test.out

#- 348 EnableUserWallet
eval_tap 0 348 'EnableUserWallet # SKIP deprecated' test.out

#- 349 ListUserWalletTransactions
eval_tap 0 349 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 350 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'ListViews' test.out

#- 351 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '{"displayOrder": 78, "localizations": {"uq8Vd4w6txSKD5jH": {"description": "XOt6NIhH6zSxo8OY", "localExt": {"ohg3GlW72bmWwgdG": {}, "m7u6jzl05VURHB2a": {}, "H1OBjSbRTbA5ngX8": {}}, "longDescription": "nMk5seGmbg5yaV5L", "title": "tdtmXxubnK90It1W"}, "EpBd8W8yL5eZhTnh": {"description": "a9eiJsMlXtygrzG2", "localExt": {"QUljK667R7aO0dO8": {}, "De9iVlq9yqguKMz4": {}, "82n0E7GAZv2XPO8D": {}}, "longDescription": "iNcJaVwdWa2ZFc4Y", "title": "AfXGVqiimFcca0MF"}, "CaLqc1H9pctBogeW": {"description": "R41LE3hNpOlQnLV2", "localExt": {"MdeaUWnsI5pKAFAj": {}, "EaVGZXA8TH045L53": {}, "XwwLUeWVf3gL2ycz": {}}, "longDescription": "ZXxdsLxTWwVPr4U5", "title": "NXmKyOdqZZYELSAP"}}, "name": "xBDIEPT2GAxOHInu"}' \
    'fNkRydUBWF1Nh9i5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '9vuR6CcSzvItwdqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 69, "localizations": {"s7ffSpc1OxKg4Uf3": {"description": "g4nlTA2frzx3vb2Y", "localExt": {"n8hNVujI5u1ivKmy": {}, "Btn9fNT1GF6M2zSl": {}, "bUz3WBHpFxzpkrOz": {}}, "longDescription": "s73jVKJexWAazbTZ", "title": "8xcQZYsCETX7eZJ4"}, "NO0fjNEPoyNa1H6p": {"description": "gh7vmRlxBjIqeBpb", "localExt": {"dOgQElalEbCZEVCP": {}, "O4CPfrYjqZmUkz3E": {}, "x6g0nu0nDYcjNC6m": {}}, "longDescription": "nTmEkvGygUoYZDyX", "title": "1XgjjnrUVMhDfw4e"}, "yyzx2XNh0EY35JVE": {"description": "QoV68grUjl9Qae3p", "localExt": {"K8C8CdtTw2J5ZQEu": {}, "9BANVmy4KLyKRCKG": {}, "C9EJ56TgtZfrBCM5": {}}, "longDescription": "NKhIaT1B5Rkbc6yU", "title": "toHNPAPLpeC92ROl"}}, "name": "mtwrNVp1hq3dVtu3"}' \
    'cDHRPMJTQpwuvc5C' \
    'HBSCrAHrYQJhGB6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '1O006QlzwNpwlkXg' \
    '5rRaOG40vwmux5X7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'DeleteView' test.out

#- 355 GetWalletConfig
$PYTHON -m $MODULE 'platform-get-wallet-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'GetWalletConfig' test.out

#- 356 UpdateWalletConfig
$PYTHON -m $MODULE 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdateWalletConfig' test.out

#- 357 QueryWallets
eval_tap 0 357 'QueryWallets # SKIP deprecated' test.out

#- 358 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 74, "expireAt": "1995-12-15T00:00:00Z", "metadata": {"oUz63g5ldLNvDsFR": {}, "xvIWPhDHlguiwW43": {}, "ftI0abvQQByahJAd": {}}, "origin": "GooglePlay", "reason": "tJsp8I8SvYIsj0HT", "source": "PROMOTION"}, "currencyCode": "sbQFx7poAiVGM1Z1", "userIds": ["0Qscn1hnFXSNkph8", "aMlYKe0aIgnVNiSD", "k2FZXq6OW9kp9JuO"]}, {"creditRequest": {"amount": 81, "expireAt": "1980-04-10T00:00:00Z", "metadata": {"XYagYLLaUNG3D8lK": {}, "kUzgYxPns7F4XRUT": {}, "iU2cKn41r9o0qDqN": {}}, "origin": "GooglePlay", "reason": "b3Jx4X529dtXtK0d", "source": "SELL_BACK"}, "currencyCode": "RNd4FbsuGGAOCvNp", "userIds": ["zY1NTTWWM1JAu58g", "R0OkuudBwFtKhDkR", "KR5WiIdTzoKekJyq"]}, {"creditRequest": {"amount": 44, "expireAt": "1973-05-04T00:00:00Z", "metadata": {"Nz0xp2PHIttdH5Oo": {}, "XEL1xP0tQEooU046": {}, "EL2HqNuu1OPm9hwP": {}}, "origin": "GooglePlay", "reason": "9rEFUcFqi9IXEnoj", "source": "DLC"}, "currencyCode": "WJ7EAB7kGxNwO0Z3", "userIds": ["KBxDcndYM9mz3tE3", "aq4k3vORHgbQI9Eq", "Frhz872allb2jaRo"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "VsEwkafcV7jvya0k", "request": {"allowOverdraft": true, "amount": 55, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"PGafhhKkgPI2HTPd": {}, "p4vXIxOt6CxiNDAL": {}, "ftVYMBY66nz5wiI9": {}}, "reason": "UtojzAhVtlXb0Ww9"}, "userIds": ["cX9qD3up8zSqbSAJ", "6bSZOsVSW0yfhrPl", "OVRke0Rw0rMOzAoq"]}, {"currencyCode": "Z9f1EMlA0TgPiaTm", "request": {"allowOverdraft": false, "amount": 70, "balanceOrigin": "Xbox", "balanceSource": "ORDER_REVOCATION", "metadata": {"SbXYXl80IXa09qvd": {}, "nZbUJ9uSIJAuvbRo": {}, "yVKQWhRCa4MeqaWA": {}}, "reason": "GntKi5VcfdJHSQ99"}, "userIds": ["nTRCntYAOhAPz9lC", "MI8Jae96k6wPIbIR", "MzsmCz9csPD3mAix"]}, {"currencyCode": "IjiYukur4iEhlcmn", "request": {"allowOverdraft": true, "amount": 27, "balanceOrigin": "Twitch", "balanceSource": "EXPIRATION", "metadata": {"M88ZHroUTLxsZkcJ": {}, "y594BukgYrUkqKLh": {}, "OtCoMjjcsvkUgpfr": {}}, "reason": "F2pDBhsviMDzvKxm"}, "userIds": ["5AvwhDq9hlVwavR2", "tWflzm98aj22sDOp", "jchReV2Sgd0wMGZH"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'EIFdrXoIkuJvjMnm' \
    'fWaKU8Ip9YwI71rp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["GgzgibcIwh74WoYm", "2RpiaZTqwxkiaQ25", "Cmx027mrMB0ErGNq"], "apiKey": "gTj0m5aXzvl2LFs9", "authoriseAsCapture": true, "blockedPaymentMethods": ["O3c34uFmlM5vFocI", "TDTP5pBOko0gsrX5", "YmIHaEjuL7g0PIjL"], "clientKey": "nAoNjzCHCUKdVx6o", "dropInSettings": "2rdsiMHF2QEzGFMh", "liveEndpointUrlPrefix": "ZeUFOp0vi3HGFkQM", "merchantAccount": "xctUgK5E7xDyzd8u", "notificationHmacKey": "i7Gq6HS2mGz4ijW6", "notificationPassword": "dYj3vyoAh76kCLT2", "notificationUsername": "8EqooASK80uHs4x7", "returnUrl": "76RICQMUv3sTgdlB", "settings": "faaTSjUYSCaN626b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "kQhtz2puGKoDDkN6", "privateKey": "vSK5KlUCrFmKMrNH", "publicKey": "OU25Bqtu3c7SadVY", "returnUrl": "WuZYb5azP3Bn1T6t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "1Gtc06fMGRKwhR0Z", "secretKey": "PvwplWQITcYa8Pk5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'TestCheckoutConfig' test.out

#- 365 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'DebugMatchedPaymentMerchantConfig' test.out

#- 366 TestNeonPayConfig
$PYTHON -m $MODULE 'platform-test-neon-pay-config' \
    '{"apiKey": "8cdH7UdivafvHNmS", "webhookSecretKey": "OYNlojMWEfrT6ZPy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "gSkfhXyykclGUJ6Y", "clientSecret": "BDI6H0BLhMQNcUFU", "returnUrl": "uoIPjHtjlsAVWEEx", "webHookId": "JQvJmELMA89ixWjk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["F5JwpR9Zt9Phwk7O", "RkQcyu5lxJ66HGJ8", "Ih3lT8pzoI46Pcpu"], "publishableKey": "wiYC0cysoxUGXNjS", "secretKey": "5quHgrhtzk9E9cWW", "webhookSecret": "rZXa2EG94tgrGpAy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "KwLIbU47jEqDJTlF", "key": "zhUbELJwcO8QnqAn", "mchid": "LORg2DXpK4Oh0DUc", "returnUrl": "9D8rncloMb1yETgQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "xGUEwv8hzsmReJ5m", "flowCompletionUrl": "zZVaR7dmubH0qAuh", "merchantId": 100, "projectId": 53, "projectSecretKey": "M5yBhQNfv11khOgE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'X8q4XcyM1quCP7gH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["WdrdkbXfhVXJ7MAA", "1c3t56EpmqXtI1ea", "94zZAdFCTO6FC2QU"], "apiKey": "f0Whdcum4saje9Bn", "authoriseAsCapture": false, "blockedPaymentMethods": ["8xXUB2jgA8fRXdoI", "mFIj7wmEGJ3sRDNu", "aHQZFDy0zd6uefje"], "clientKey": "TefS5buyst5TtTcS", "dropInSettings": "2Z7IW6c8m0c4Rv5q", "liveEndpointUrlPrefix": "oB4BUEkv7eDzPw2v", "merchantAccount": "YMDB34LBJ0JFvU4T", "notificationHmacKey": "SVKe3yekeHdH8Hul", "notificationPassword": "MLwKFaDkx5oWYFAq", "notificationUsername": "dEBkZiYj6o1GSa6N", "returnUrl": "GHHLhyP7oboUMlvs", "settings": "FaoUMm7qtHKySXXt"}' \
    'UEByVbF44ZXRI1UU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '4mMQOT2uy3CoHMYJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "NBA3ZNRQrb2Dz3s6", "privateKey": "5mOtCi7uw6EucgA7", "publicKey": "5jV5cXedykx4piMt", "returnUrl": "nYep4qMEijH07e7H"}' \
    'JsG6fiR0imQt0JNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'gDRBXsG5NNHroQDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "woHHnyDbUxgpdscO", "secretKey": "tCH10NfsDVwASx4C"}' \
    '5vUvk9EIUbSzg8oO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'PBDgEhBUnAibqWQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "aieasz9kvrFaaYiZ", "webhookSecretKey": "O9uil887oHlefkOB"}' \
    'CLDC1UuFwhyu1Iem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    '83ei0Y4vfACaZq3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "9FhVaHT51CYJCZK9", "clientSecret": "kz9FkJg1Z8rxzVxQ", "returnUrl": "ff0U7Yg4JRkEi3eT", "webHookId": "oF7Xn3jX3NYM8lZT"}' \
    'tctONZpmzO2FoQfK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'peRnDp96Q4Kc2SuW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["vtgC60a1W5NbXGzA", "cTpSSar2yACKSgTL", "Lhfpe6fOhcjuByeS"], "publishableKey": "W8hYtAfRY6IM5BHr", "secretKey": "yGVAVHgXTySx0ui9", "webhookSecret": "SG992PUNJjyBkLHC"}' \
    'Jw8ZxKr2hhzSgEVD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'TchtwhQp2LAjJuLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "IQF5kRUjrmuhxZB5", "key": "Ajldy64tvczW9hkN", "mchid": "RJKsIQO6Rf71ujka", "returnUrl": "WDqUU627KpJnSnPz"}' \
    'wlgrOizTeAjnOyPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'IVw3l4lq6EBsgRIw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'eAJUroJ8CWZayKnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "lYPxuMiEWl2YYuzi", "flowCompletionUrl": "EAHUJuW7Y2KJEH6U", "merchantId": 42, "projectId": 4, "projectSecretKey": "vOmu2ptkKPy0GiWF"}' \
    'WBkFOuRT7ullmbE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Pg5tjXYlq6UHrZrP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    'fhemqcYTjPlHf8VE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'UpdateXsollaUIConfig' test.out

#- 390 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'QueryPaymentProviderConfig' test.out

#- 391 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "WnWT6iqbevlVe4Zf", "region": "fXJQ3ETXfQnFfOmD", "sandboxTaxJarApiToken": "YHeD3I494uw3RdIA", "specials": ["STRIPE", "STRIPE", "ADYEN"], "taxJarApiToken": "53otU8VIKaNC4jAc", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'CreatePaymentProviderConfig' test.out

#- 392 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'GetAggregatePaymentProviders' test.out

#- 393 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'DebugMatchedPaymentProviderConfig' test.out

#- 394 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'GetSpecialPaymentProviders' test.out

#- 395 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '{"aggregate": "NEONPAY", "namespace": "ZYFC0mjfQGtP1pKt", "region": "lm5hUGLvZiKzCHyQ", "sandboxTaxJarApiToken": "RSjODCVkXOSEqmrC", "specials": ["PAYPAL", "PAYPAL", "PAYPAL"], "taxJarApiToken": "uwAfUV3hQSgZIsLF", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    'cGEKMT2TWw1dhh6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '7sXyB9QdOnACUxcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'DeletePaymentProviderConfig' test.out

#- 397 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'GetPaymentTaxConfig' test.out

#- 398 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "QbRzuOGQIMxFKiXX", "taxJarApiToken": "Sc289Q3xFWRYnNSH", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Ya78hgQeKzeNXadR": "OUnBOxtwqDhMvblD", "46siktYX4HICm1vT": "tS6sumfKR96tudVV", "KTXkDOi3run76w7s": "T6JiAfprjuNuVzni"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'CDkRRUbJiivR8wrW' \
    'clMIjyB9r93VgAc9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'SyncPaymentOrders' test.out

#- 400 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetRootCategories' test.out

#- 401 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'DownloadCategories' test.out

#- 402 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'QZ9C2WWUGboRhmyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'Z7K1izC3LzjpbZYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'mB6mjB4WLkFEbz1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetDescendantCategories' test.out

#- 405 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicListCurrencies' test.out

#- 406 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'GeDLCDurableRewardShortMap' test.out

#- 407 GetAppleConfigVersion
$PYTHON -m $MODULE 'platform-get-apple-config-version' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'GetAppleConfigVersion' test.out

#- 408 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'GetIAPItemMapping' test.out

#- 409 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'ME3dwQ3jZw3dvKpT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetItemByAppId' test.out

#- 410 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryItems' test.out

#- 411 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'h9t3eP83oVzLj603' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'LYJG09eH9Vq6reV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'sJenmheK5KKqE1aH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["xZgS8uJAsbAxWxy8", "0okxaYaNSXzxd2oR", "SinjIKU2N42M5XJn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'yM5TvM5NJ9UFoefZ' \
    'deND5EahSZeodABn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'aVuUHHBtfHmq5d54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'tGJLHnnQAM0DREcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '6d87tbCcUGlTsltY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "7Kk1OunGWLmRsGb3", "successUrl": "tEZUvioSYTzxbogR"}, "paymentOrderNo": "XHBHxz5rKcxfdG9p", "paymentProvider": "PAYPAL", "returnUrl": "8Wj62EGWzEbs46rc", "ui": "22tQQij2Hme0GGfP", "zipCode": "6uytyYgZsusP2SPD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'jVIfftSxnreb8TQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'xnon3dB05wGQYx86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "tv0QClmxWgu3QfhT"}' \
    'r7idEkKSnDGue6g9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'jqZCmyvD6hehEvad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    '0JxsNUjSVGhlo6BJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'VxNK6m3dLvKKvOeL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'QJ1DfSJm9R8uKJWv' \
    'SyKtpPL665Va0hLs' \
    'NEONPAY' \
    'hBUqY3Yu7hr4BXCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'FsJCGWDLfbEBX1fD' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '9NIi9V270K70e3tm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'GetRewardByCode' test.out

#- 430 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'QueryRewards1' test.out

#- 431 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'Ml0aJwJFaCvge5Oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'GetReward1' test.out

#- 432 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicListStores' test.out

#- 433 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicExistsAnyMyActiveEntitlement' test.out

#- 434 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'I8XNrSx9JCxN4prJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '1YNwelndOCI9YnUi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'Shlx9Pk08ti5dm4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 437 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicGetEntitlementOwnershipToken' test.out

#- 438 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "smWwxeV5ju6lVC5w", "language": "Kx-MuDM", "region": "XymIObjRrxucZTOt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'fIlJrMOPwdUCtzH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'oI7IMo6jYsbXIs1j' \
    --body '{"epicGamesJwtToken": "2kdfY9jVoPTTfSop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'AH3k7WRbBnExLSlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'BkIhkcYsdlko7aPa' \
    --body '{"serviceLabel": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '7OWinIu82m9kXRKv' \
    --body '{"serviceLabels": [51, 52, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "MWXk0IafEeZiiyd7", "steamId": "fv9BMDJjJPbrYcp3"}' \
    '04cHsi4N013hrlkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '0fX6m0y4oC4cK1B2' \
    --body '{"xstsToken": "rFxEperuU9eQbEZT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '9w603YcGu5NpJQGV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'sYAcnwttayXhbtq3' \
    'oxkWkWZM6QqbW0t6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '91SXQ1p0o3UycSZQ' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'galHYLWoM0gqpkta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'qz3Riz5qKt4QbzYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '1vSzFONRBPloB0AS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'E8UJr7JwsZBUsRaw' \
    '0PY6G9sLHzVEFhnh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'T9rEFK3sHMoD0LY4' \
    'fDRrTTMj0kVB2Kgm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'SqpxVMx6QY29ePH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'F68SIKaFfiPoFVLQ' \
    'tdZIqlnvafBWIGru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'ii3QdmRaNDlR1T3o' \
    'WQcENhwdIRZ2k23r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["ZWYwungysf4SyQNW", "ypArgnNk4jR91W8b", "8dxKhB5ONqCMxOPW"], "requestId": "wH1c4b5Wt74xyIIZ", "useCount": 92}' \
    'vw8KQZ00gJM1Cfnj' \
    'dHJX3yCxhko4vfBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "r53TVizk09fyHgSb", "useCount": 71}' \
    'DkTPschfQ2CAJpaY' \
    'Z5XmkLfftq8TtIM2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 76}' \
    'SaXxaUHbPfHkAIPu' \
    'vmuzR0bwUmJhFK4u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "aehrat7hpJzqcjS6", "metadata": {"operationSource": "INVENTORY"}, "useCount": 73}' \
    'uUk280BxAxexZB4E' \
    'ErArsCARmVlNfne3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "5Jx8S9YCiABOEkZ1", "language": "mW_zMUa", "region": "MBM5P7kt5p0cLeBV"}' \
    'GZZwNyRYVMbkNRA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": true, "language": "GOJ", "productId": "tNBV40Swjryqo0RU", "receiptData": "6346MJE2Z5gvfvhJ", "region": "oQ6KTnc70J3JNzhU", "transactionId": "B7BaWaCv0yipDxA1"}' \
    'dpehk0z89ChLggpl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '5I3N3i0llxVU5WZT' \
    --body '{"epicGamesJwtToken": "OvW4MiVum8HuuXKL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": true, "language": "StZ_rWKD", "orderId": "FexMsFUBv4AFzMve", "packageName": "fUJf082K6GVUNdcW", "productId": "7dNRHWkAYwtCmTIo", "purchaseTime": 30, "purchaseToken": "QnKBUx6yHTllMN3Q", "region": "VCfIhWW0tEidcG2u", "subscriptionPurchase": true}' \
    'quJNnPR6izcot8gf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-sync-oculus-subscriptions' \
    'vyFFGnP0iW9zzvYA' \
    --body '{"skus": ["iICmcuUGrDkQ9ODs", "NGS0vpz0yafOqavi", "wjyzt0XEbXHRjjX4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'NiijpjEEO1RcLcC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'hsGfl7IuTJQEKrFl' \
    --body '{"currencyCode": "YRqsqgjU2fbWodix", "price": 0.6973717991472199, "productId": "nSpY8HLcl4PC7Whq", "serviceLabel": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "MfYlNV4JpSajrb3k", "price": 0.6726535902026374, "productId": "qQwgme45avoS9lAa", "serviceLabels": [32, 58, 87]}' \
    'MA8Sr2sPgHtfv4c9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "9ySk8XEGR8Q2ObtJ", "currencyCode": "j6xqptF3qXZXFqaZ", "language": "iRUL_yZuc", "price": 0.403867766117873, "productId": "6AbtYb7GaKj6QP6j", "region": "hS3RZ15D9RU0J0Hl", "steamId": "MUaZV3EkagoWRp32"}' \
    's9DziqKI1QAQ7pb7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'a65HnETCgoe1sa8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "0Wy1wLXiwamQkC3D"}' \
    'HWOJXJFWjPFtofaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'TWITCH' \
    '8UufshsUocqjbtC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "Op2Dn5tRZqzKJ4Qb", "language": "CN_lljT_753", "region": "OTronWgtTV5xsbAF"}' \
    'zTuNBE9pIh3TQy7N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 475 'SyncTwitchDropsEntitlement1' test.out

#- 476 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'nIqBatySUr0WYKIg' \
    --body '{"currencyCode": "cYxs2y0NZhKDD2TF", "price": 0.6725666597629553, "productId": "inU9e1GlQXYLY3b1", "xstsToken": "OA52MsYOT4iaAzzQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 476 'SyncXboxInventory' test.out

#- 477 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'v6dC4l6pF14rXVk3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 477 'PublicQueryUserOrders' test.out

#- 478 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '{"currencyCode": "pi1AxKacdaPDd2UT", "discountCodes": ["ALBFrVv5aVm8Td8n", "aeWbyesDcgMssCKp", "sBDWWpuCelJqAeac"], "discountedPrice": 33, "ext": {"jBYp2upgfzoaos4n": {}, "V0ve8lbhLwTqvNvY": {}, "EmdP8MKMmlcJlTEJ": {}}, "itemId": "d4MeOQo123k8LkPR", "language": "vR-Ccwo_448", "price": 51, "quantity": 0, "region": "0hVFUeRNd0TRUiFy", "returnUrl": "v0DiRwyWu8QLiY5E", "sectionId": "w7ynZyinDXgHG7BE"}' \
    'XkKHDRIsjXMxauFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 478 'PublicCreateUserOrder' test.out

#- 479 PublicPreviewOrderPrice
$PYTHON -m $MODULE 'platform-public-preview-order-price' \
    '{"currencyCode": "15aVXZDvfYUjbqSQ", "discountCodes": ["ESwKuxLG6SLbij0Z", "uHgrLNCsHpdK7Kga", "JrNfKBCmfOZfEEtp"], "discountedPrice": 3, "itemId": "3mQRlpuV8Pupz5nX", "price": 46, "quantity": 85}' \
    'Q2WOelObF9GOwwUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 479 'PublicPreviewOrderPrice' test.out

#- 480 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    's0NunnvFv7y5QZLL' \
    'olcgJUliN7fSM6D0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 480 'PublicGetUserOrder' test.out

#- 481 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'fkwQ5F7hn9PnQkqw' \
    'AiQbdsEa8FPmA5Rj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 481 'PublicCancelUserOrder' test.out

#- 482 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '88sV0RXYFDvT1R4m' \
    'dfqaGZ5a5qB2J1Ys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 482 'PublicGetUserOrderHistories' test.out

#- 483 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '7k6Dw0ChjJUyJb0u' \
    'VwRHPtiuRbYj1PwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 483 'PublicDownloadUserOrderReceipt' test.out

#- 484 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'l7Af4hN6myStPdio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 484 'PublicGetPaymentAccounts' test.out

#- 485 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'buZ1dxGYQJQjRjZF' \
    'card' \
    'yvQpITvPtfRlFGzo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 485 'PublicDeletePaymentAccount' test.out

#- 486 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'oTVPzZGzMArYj7MC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 486 'PublicListActiveSections' test.out

#- 487 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'ylZXT4sTumASfzM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 487 'PublicQueryUserSubscriptions' test.out

#- 488 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '{"currencyCode": "qZHCov8CgQak3BNg", "itemId": "yqIz8QyplfHPL4SE", "language": "hB-809", "region": "RKhh6uu1Uzg5H1m0", "returnUrl": "iKgFj1bpo9V6Kx2b", "source": "4k3LXirzfiNHNxvy"}' \
    '3KaeX8LAPgWT88UI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 488 'PublicSubscribeSubscription' test.out

#- 489 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'PXJrkAjbCtUBj8v9' \
    'q93zGO9v64M4Pgxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 489 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 490 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'nynVrUC62nbuvxdz' \
    'MEqY7lrl7jXlIVat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 490 'PublicGetUserSubscription' test.out

#- 491 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'p3quTVObvHUZnpdc' \
    'dWJ589DzA4GDiLK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 491 'PublicChangeSubscriptionBillingAccount' test.out

#- 492 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '{"immediate": true, "reason": "HI5s1D4n2WH2wW5g"}' \
    'QrSqXWpTr8foUCrz' \
    'DG8tNC8G124BARkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 492 'PublicCancelSubscription' test.out

#- 493 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'YpcvzbXrsfFBgZSp' \
    'K21XxS7RMp1XZlcf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 493 'PublicGetUserSubscriptionBillingHistories' test.out

#- 494 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '2LlA8OpKgNxX9RsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 494 'PublicListViews' test.out

#- 495 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'os2MjddPf3tEZB5n' \
    'pWjeI4vT3YYjZirr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 495 'PublicGetWallet' test.out

#- 496 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'K7Myt6KHqT9hBXIq' \
    'Z6a1M7Qq3TW2aLsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 496 'PublicListUserWalletTransactions' test.out

#- 497 PublicGetMyDLCContent
$PYTHON -m $MODULE 'platform-public-get-my-dlc-content' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 497 'PublicGetMyDLCContent' test.out

#- 498 QueryFulfillments
$PYTHON -m $MODULE 'platform-query-fulfillments' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 498 'QueryFulfillments' test.out

#- 499 QueryItemsV2
$PYTHON -m $MODULE 'platform-query-items-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 499 'QueryItemsV2' test.out

#- 500 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 500 'ImportStore1' test.out

#- 501 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'ls4a5Oo3xy3WuYRC' \
    --body '{"itemIds": ["mJ9ikTBBFAguNb8d", "mlfUe2TYznn4Ti5F", "uZphd4RhDeGxQDgW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 501 'ExportStore1' test.out

#- 502 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "IoQrDWqdFdgbb9UB", "entitlementOrigin": "Xbox", "metadata": {"EUXWvbX2Ob741VBj": {}, "aA7kS8yjV0k0qCcr": {}, "gXW2JoIzE7nXU5NM": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "1AGibKVdecC5ze9n", "namespace": "XuS431heHGU5ketS"}, "item": {"itemId": "x9783yyHOoDmsEWc", "itemName": "HMI41tpTrJy655o9", "itemSku": "eIH3p2jydzvvmfFT", "itemType": "DSSEhqPl3f4XtEfK"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "E2Y6cnB6TB4lTdCX", "namespace": "V7SS2UqnPn6uD74z"}, "item": {"itemId": "JiMpAEWcMCdBrSqT", "itemName": "6Q8Mh5eLZj89iiEh", "itemSku": "1Js9TxO1uvto2x8x", "itemType": "h7o0O5ZjusrnZQ6D"}, "quantity": 17, "type": "ITEM"}, {"currency": {"currencyCode": "hapMBL7mA8pzIWua", "namespace": "HemUTNmofVeYCKv9"}, "item": {"itemId": "0aZrEtNzjY9TnLYM", "itemName": "U9mkBATXA8My5opJ", "itemSku": "d2eIiQFvFinIjaOW", "itemType": "b4JSFL5lXVL06FUW"}, "quantity": 51, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "Fy8QdPaz8lahBS5t"}' \
    'CwU5avkjztoSGFmW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 502 'FulfillRewardsV2' test.out

#- 503 FulfillItems
eval_tap 0 503 'FulfillItems # SKIP deprecated' test.out

#- 504 RetryFulfillItems
eval_tap 0 504 'RetryFulfillItems # SKIP deprecated' test.out

#- 505 RevokeItems
eval_tap 0 505 'RevokeItems # SKIP deprecated' test.out

#- 506 V2PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-v2-public-fulfill-apple-iap-item' \
    'CDAzIpxA9uYP6iJX' \
    --body '{"transactionId": "wD5Critx7wpTU9In"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 506 'V2PublicFulfillAppleIAPItem' test.out

#- 507 BulkFulfillItemsV3
$PYTHON -m $MODULE 'platform-bulk-fulfill-items-v3' \
    '[{"items": [{"duration": 86, "endDate": "1989-02-01T00:00:00Z", "entitlementCollectionId": "BSkWsvHyKxAes0Ce", "entitlementOrigin": "Xbox", "itemId": "mDjSepPsvbAftcT8", "itemSku": "X0nbcB2C7tkz8PIB", "language": "7ku4Ie9oMYJH9PwV", "metadata": {"tUpHGo2Y7uS9rsiv": {}, "U5O3EN6TCqiO4C3Y": {}, "Sx59pdMpUqpSwlr2": {}}, "orderNo": "lDxiBT3RG7qohlvu", "origin": "Other", "quantity": 19, "region": "PwevrXYgo5rdLcmF", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1995-10-18T00:00:00Z", "storeId": "vII8fKZJ1tOQ8kid"}, {"duration": 74, "endDate": "1993-03-31T00:00:00Z", "entitlementCollectionId": "0ibzdmAgDE4aKSUM", "entitlementOrigin": "GooglePlay", "itemId": "DWibXOdu6nNgus6G", "itemSku": "5lqZv3KZL0TrRyC3", "language": "XkhYiNaQu67dG1Yc", "metadata": {"JwKDv4mez7AaQK2L": {}, "r2GS58EejIE8yJMh": {}, "u1V386Kpa4Sw6WqD": {}}, "orderNo": "n9UVekc1LaRdOg4j", "origin": "Twitch", "quantity": 15, "region": "OSMDNMJA5i9BQl7e", "source": "PAYMENT", "startDate": "1994-05-23T00:00:00Z", "storeId": "58yy5VCCjfncHxVl"}, {"duration": 50, "endDate": "1989-06-26T00:00:00Z", "entitlementCollectionId": "5ZZb20jd4W3GSsfr", "entitlementOrigin": "Steam", "itemId": "L1WEQiIPB8ofinOW", "itemSku": "Ph5WxZM0msf6g9C6", "language": "PXZ3hIkcizzwvhdQ", "metadata": {"so4jeEelkqjEQy5m": {}, "Kvg3UPrFmi9psaT2": {}, "gFDTAJx3Rvl7yxpf": {}}, "orderNo": "bKwIxblqqikxKAip", "origin": "IOS", "quantity": 44, "region": "SSC6NooSHzb1KQwo", "source": "CONSUME_ENTITLEMENT", "startDate": "1984-01-21T00:00:00Z", "storeId": "naGxWLgRXhAuKiz1"}], "transactionId": "NOBjPrVGFImfl7Pm"}, {"items": [{"duration": 9, "endDate": "1981-07-31T00:00:00Z", "entitlementCollectionId": "jgNsczg4UnkpQDmS", "entitlementOrigin": "System", "itemId": "bCAO545uBfWEGOGX", "itemSku": "WligwVAq6p8DJ3g8", "language": "QoWVxtaP0HtBV05Z", "metadata": {"9V7DWvTYgHVvN8z3": {}, "TLTMkwIUuxbkoHel": {}, "rHJEESUtyMv1CwGT": {}}, "orderNo": "QmoUOJfMFIzRPylU", "origin": "Oculus", "quantity": 43, "region": "ABk6FMwL2Igtqtt6", "source": "PURCHASE", "startDate": "1980-04-06T00:00:00Z", "storeId": "ZuxCTD503jksXXxH"}, {"duration": 89, "endDate": "1981-11-09T00:00:00Z", "entitlementCollectionId": "SuzP0MYOGq9HEyvP", "entitlementOrigin": "Playstation", "itemId": "pxhl2R0300l26KPG", "itemSku": "WDgJk2nBaJrKPS0o", "language": "doUEoVDdBVzlCg6m", "metadata": {"THSNPhGVvZ7AKPjZ": {}, "G4g7LVVBHg65T9Th": {}, "wO8SfpjLIxwrxPk8": {}}, "orderNo": "KBf2n6U5vzXyl4rU", "origin": "IOS", "quantity": 91, "region": "LVe3wfLSM7yYYD9L", "source": "ORDER_REVOCATION", "startDate": "1986-11-08T00:00:00Z", "storeId": "IpuegPhhik9U1Jo1"}, {"duration": 23, "endDate": "1972-06-16T00:00:00Z", "entitlementCollectionId": "ihvabTzIehwShRUG", "entitlementOrigin": "Oculus", "itemId": "oz9zfTngZZzfkGpa", "itemSku": "Gt0RKz3UAqzRteXq", "language": "6e5aEkJn4mTr5HKL", "metadata": {"uAg15LrbtQMElAEI": {}, "kbZxTuy7zmd3W5ZT": {}, "m55Sx8EjWSHJCW1g": {}}, "orderNo": "lGauZFFhaDAgc5Tc", "origin": "Other", "quantity": 31, "region": "GfVB1qpY5Ln2pDtv", "source": "REWARD", "startDate": "1994-12-18T00:00:00Z", "storeId": "Rt3Kz9e8g7w1hhP3"}], "transactionId": "1HZa1BILp4fg0JW9"}, {"items": [{"duration": 63, "endDate": "1986-11-12T00:00:00Z", "entitlementCollectionId": "3UwVkf64FGM9EAKj", "entitlementOrigin": "Playstation", "itemId": "puUH2tSQpp21p5AI", "itemSku": "fPlyaShRkUDJNcNp", "language": "QODmqNcr4gZ4kepn", "metadata": {"6o8Vj1KP9YsBMfMB": {}, "MPMrdpdJJKxn920n": {}, "ehL0bzgzb2Xcyp7H": {}}, "orderNo": "EdoCBJoKfy49hhms", "origin": "Epic", "quantity": 48, "region": "8MafY64s9BgFRYLt", "source": "IAP", "startDate": "1976-08-02T00:00:00Z", "storeId": "FDJitvIv1K21a4wn"}, {"duration": 24, "endDate": "1982-12-25T00:00:00Z", "entitlementCollectionId": "zcIEzMo9Vg6oLrU5", "entitlementOrigin": "Epic", "itemId": "GiXYCpPdyBuGtXvu", "itemSku": "ANcDVf00ltvJM8KN", "language": "6stv1GfmhuHjW3ga", "metadata": {"gE1i9xs88eqyCIa2": {}, "Ip3k27PtDOazpd5u": {}, "qtCWADFcWuavDCcI": {}}, "orderNo": "ceUR1ekwCQphNTIB", "origin": "System", "quantity": 2, "region": "enXUmBE9H7Iiin5E", "source": "PURCHASE", "startDate": "1974-10-03T00:00:00Z", "storeId": "BdZeLkORyhbEGi0s"}, {"duration": 70, "endDate": "1992-11-17T00:00:00Z", "entitlementCollectionId": "ClTwE1s3PSShg8xQ", "entitlementOrigin": "Nintendo", "itemId": "UFfHzJEXA4vwoHHU", "itemSku": "GDkYIFMh5254zKob", "language": "78GcV4qButgBd198", "metadata": {"Jv3wYlSOvb9qdNp2": {}, "MyxEVjgYcQWqad0k": {}, "VuWEY8I9rbB8M78j": {}}, "orderNo": "VuTYlvqePdrVymDz", "origin": "Other", "quantity": 41, "region": "eZIqk9VLKbAMVlsB", "source": "REDEEM_CODE", "startDate": "1981-03-12T00:00:00Z", "storeId": "MhfkzyRmS4S6Mxwp"}], "transactionId": "5N4jWz6YixDtW9mh"}]' \
    'vHlrbZ1QbeKsNI0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 507 'BulkFulfillItemsV3' test.out

#- 508 FulfillItemsV3
$PYTHON -m $MODULE 'platform-fulfill-items-v3' \
    '{"items": [{"duration": 84, "endDate": "1986-01-25T00:00:00Z", "entitlementCollectionId": "WRWpzpkPz7DV5vGj", "entitlementOrigin": "IOS", "itemId": "fMZ8PslydU5m1R4a", "itemSku": "c7mmi1LRjMXGPsz7", "language": "WNg8OpkDpWn1O8P9", "metadata": {"6GzAHLHm8L2GQ2u0": {}, "gaynJgkQDxUdEuRi": {}, "qJweGJgY7Ovj5J9N": {}}, "orderNo": "D3XFnDgal5PKCcOd", "origin": "Epic", "quantity": 35, "region": "5Ed5Pq20TdxXau5q", "source": "PURCHASE", "startDate": "1989-12-16T00:00:00Z", "storeId": "T65TCXgK0smoRJjM"}, {"duration": 45, "endDate": "1986-05-29T00:00:00Z", "entitlementCollectionId": "AkPYLffe3c2bvE7O", "entitlementOrigin": "Playstation", "itemId": "yYtENUzfkPHkgjT9", "itemSku": "3eing8MsjoxiyYaB", "language": "dwus7G034pmy7Rpn", "metadata": {"4gnQoAsoL5K4ynun": {}, "zwf0bHRwDZDS2COZ": {}, "eiLuBwXJHUHBu8qt": {}}, "orderNo": "DMjtqnwNEwBJFULP", "origin": "Other", "quantity": 86, "region": "dQVWaRF3Z0M7Cuka", "source": "SELL_BACK", "startDate": "1991-03-23T00:00:00Z", "storeId": "JXHvLzLETtch6xII"}, {"duration": 12, "endDate": "1986-03-16T00:00:00Z", "entitlementCollectionId": "lTQce9R2xqXwOzDe", "entitlementOrigin": "Steam", "itemId": "y3KlXS6GYeuxYxpj", "itemSku": "laumvE3FftT2tisW", "language": "HZEBs6I2nnBWdguw", "metadata": {"Fsn5GgW1xvUOVfTk": {}, "H8pPu3GZpG1QMJJQ": {}, "pYu1BEEL4kaLZFqj": {}}, "orderNo": "NK6hDfP3K7Yos16i", "origin": "Xbox", "quantity": 34, "region": "eXhxWK1PK5sG4RN4", "source": "PROMOTION", "startDate": "1992-07-31T00:00:00Z", "storeId": "uxLjKwo1NOaPOQbB"}]}' \
    'TBCWpms5oljJGHdP' \
    'zjSdYHwkhLII9MXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 508 'FulfillItemsV3' test.out

#- 509 RetryFulfillItemsV3
$PYTHON -m $MODULE 'platform-retry-fulfill-items-v3' \
    'tJ0boD7iRtYwmQIY' \
    'd0MJL5tGSIQTYaQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 509 'RetryFulfillItemsV3' test.out

#- 510 RevokeItemsV3
$PYTHON -m $MODULE 'platform-revoke-items-v3' \
    'QHHruLQXOVsVCPwJ' \
    '4nS8HsByDOq7roKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 510 'RevokeItemsV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
