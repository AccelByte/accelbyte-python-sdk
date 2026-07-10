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
platform-query-fulfillment-histories 'mZEiwxxElpMYSWIe' --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "Vzm7z9noowmlTIKV", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 29, "clientTransactionId": "CFkIf5weqZ18MH57"}, {"amountConsumed": 24, "clientTransactionId": "UQ3z9F1BxNNgnke4"}, {"amountConsumed": 0, "clientTransactionId": "3MnlrjcHp6B8Vj7r"}], "entitlementId": "XFgDnDkdZ9bpjb1t", "usageCount": 6}, {"clientTransaction": [{"amountConsumed": 0, "clientTransactionId": "A3QhjCMW64f4XhIj"}, {"amountConsumed": 92, "clientTransactionId": "lXn77AtYoFzLAATP"}, {"amountConsumed": 63, "clientTransactionId": "8P8P3cfoivvQxeve"}], "entitlementId": "cWw7Rry0KK5rgAGO", "usageCount": 6}, {"clientTransaction": [{"amountConsumed": 55, "clientTransactionId": "W8rX2MVUGKSZ4GcL"}, {"amountConsumed": 21, "clientTransactionId": "W1IS3Uv1BpWoJBaq"}, {"amountConsumed": 8, "clientTransactionId": "dRtCHvuk6B6XTmSL"}], "entitlementId": "yn50sigBVZxiKdV5", "usageCount": 85}], "purpose": "GvRyd9UuL02Le8HS"}, "originalTitleName": "CslsDd4M1F5qRIbl", "paymentProductSKU": "S7Nz81GRazPAANjf", "purchaseDate": "BoldFOyqA2clJ5gE", "sourceOrderItemId": "OaCgM6Yn6RugbNEI", "titleName": "pGBFUjOn5mM7k8nb"}, "eventDomain": "LzvtCIW5ynMKquUi", "eventSource": "cAeIVXtoWAXhMlW4", "eventType": "tLqX7OICf5oD1e6o", "eventVersion": 71, "id": "AfYFG3wSkHKufBdS", "timestamp": "3ZOokZB4cXnAXyuG"}' --login_with_auth "Bearer foo"
platform-mock-xbl-clawback-event --body '{"data": {"eventDate": "z6LlxHv8SwyagYvD", "eventState": "J3w3UNgIGj2jZtEY", "lineItemId": "T8sIPSE1XXPzySa0", "orderId": "sZoFS6xCOWMpyh9p", "productId": "MsQgb64ELbzDMwyo", "productType": "4nIRysQdbufXjYnS", "purchasedDate": "oIFeouC2m38kXrDZ", "sandboxId": "WlGVE9sJ4NpUtKp6", "skuId": "M9I6nEwnZhsjwJeG", "subscriptionData": {"consumedDurationInDays": 45, "dateTime": "YBo4FUTH7CGfKSyx", "durationInDays": 13, "recurrenceId": "D63xe5rruJVfLGea"}}, "datacontenttype": "0ZtlzUcuHAXz0UV3", "id": "1MfuGaXsAuGsZaSH", "source": "evO0TQNEI3kfabxJ", "specVersion": "WWSI1ECUo1NPpeFh", "subject": "UztXDgB7n4C97uAP", "time": "P8PATLpUpxeJlsBJ", "traceparent": "T6Hh3OMjAjq2mK8l", "type": "bSEEelxnb5QxWG2H"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config '{"appAppleId": 64, "bundleId": "t65X4N1LQZmB61JM", "issuerId": "dtwCVUrYQue84dwm", "keyId": "bwFEnAZaWsQJtRYo", "password": "agRJK5PX9UcOvhPy", "version": "V2"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-p8-file --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config '{"sandboxId": "XhnUcvWB28Mpusuh"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config '{"applicationName": "hDJ5slzgiWZEtyd5", "notificationTokenAudience": "6LfxnbY97jjYgXch", "notificationTokenEmail": "CbkXX26uEdCfQaMA", "packageName": "QuTKfC0I2kNjCMDt", "serviceAccountId": "DMrentgn3DhqciwI"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config '{"data": [{"itemIdentity": "eShF9RKb9vvxuJlh", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"bWhbwPwToC6knjVw": "VnzaqSfJiQFC2gXo", "da0kg16yUSpSOAjH": "JWwfCjYwWkLob9gK", "Lqs2nEZhpByfHZin": "xNfgPAwkMBsznlBU"}}, {"itemIdentity": "qnLT4AbGptKaWNvP", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YWOaNdsimmkW2miH": "3xRHAKy4QxZkaXZ7", "vmiEd0JPxVyQpsha": "DwNqTbbFMXAMfVXe", "0GZeMgsRsmH1EQrY": "mkPKTPOlhTtSiZNC"}}, {"itemIdentity": "xuogFteTHJe4BhSS", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"0jr9b8MuYmmeKTmB": "NvGYxEQdf3ewoGGo", "Y7xmFNAmjDDCvs78": "mcMdiS76YApGJ9uf", "wLYkqIgLuZS6hsQr": "yiEtOAbpeUNf26Uq"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config '{"appId": "kCfgCUYBn2xaOBdP", "appSecret": "F0JmX8qwU1cTuHHP", "webhookVerifyToken": "B5S3DvPRCzBrVUxm"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-list-oculus-subscription-groups --login_with_auth "Bearer foo"
platform-create-oculus-subscription-group --body '{"sku": "DOj3cvRFaTC11W0T"}' --login_with_auth "Bearer foo"
platform-delete-oculus-subscription-group 'GTCm4fZWuk6pQxDQ' --login_with_auth "Bearer foo"
platform-list-oculus-subscription-group-tier 'pKqxLGeMvr9TsvcM' --login_with_auth "Bearer foo"
platform-add-tier-into-meta-quest-subscription-group --body '{"groupSku": "Q7dBsaIecRxIsZvD", "sku": "6rmzVr5XT1Nxw0v1"}' --login_with_auth "Bearer foo"
platform-delete-oculus-subscription-tier 'dMQ9Rrbk6C2cVWf6' --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config '{"backOfficeServerClientId": "ttvbU1PO6ApCD2VX", "backOfficeServerClientSecret": "idT7w0Oc15N8WXBP", "enableStreamJob": false, "environment": "CSHy1ei1fIrPvfHn", "streamName": "RN06EjRwEQlNapJR", "streamPartnerName": "fk4f9Zcw1pEHAyNF"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config '{"backOfficeServerClientId": "xcVTKuAQTGh5BxjW", "backOfficeServerClientSecret": "OozGoDtsUuYo5p8E", "enableStreamJob": true, "environment": "8Tb7cUNGPTBxiFFC", "streamName": "rn7djjs69FTFVGUV", "streamPartnerName": "hvKhJCmeisql14mU"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config '{"appId": "HVbMPimNhcZsU3VA", "env": "LIVE", "publisherAuthenticationKey": "h23GUS2amU7syGlE", "syncMode": "INVENTORY"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config '{"clientId": "I2KwjqPBiWXade41", "clientSecret": "s3rH34mB2yPlRpWj", "organizationId": "mHZAAvKTH8MuqIg0"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config '{"enableClawback": true, "entraAppClientId": "41cK8QTwiIAvxSvN", "entraAppClientSecret": "DlmM5nQFMGzs7fzj", "entraTenantId": "gyc44mEh9tRk8knY", "relyingPartyCert": "SV30lnroQehMDli6"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-query-third-party-notifications --login_with_auth "Bearer foo"
platform-query-abnormal-transactions --login_with_auth "Bearer foo"
platform-admin-get-steam-job-info --login_with_auth "Bearer foo"
platform-admin-reset-steam-job-time '{"env": "SANDBOX", "lastTime": "1977-06-17T00:00:00Z"}' --login_with_auth "Bearer foo"
platform-admin-refund-iap-order 'aAtEbu4IjGdqthRx' --login_with_auth "Bearer foo"
platform-query-steam-report-histories --login_with_auth "Bearer foo"
platform-query-third-party-subscription --login_with_auth "Bearer foo"
platform-get-iap-order-consume-details 'TjQ7gkZEY8rG0q0Q' --login_with_auth "Bearer foo"
platform-download-invoice-details '2Qd2JzRbkF2I03dI' 'jvBbA6bfbYaJCJjf' 'k2TUvn95FhO7VW3m' 'APP' 'GloFSKWM1eym5ydC' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '6p25xCWTqUOYZENJ' '1QHZQxPRXH7uxBJE' 'ECQE1li3Bg7Jxc9p' 'COINS' 'tcknrgidKupvXO6a' --login_with_auth "Bearer foo"
platform-sync-in-game-item '{"categoryPath": "j4hCmTC34jxW4pID", "targetItemId": "wdqXpmRmut9H9XyW", "targetNamespace": "I8bp8fQxRuX91uYm"}' 'trHJbEGTUj7YjERL' --login_with_auth "Bearer foo"
platform-create-item '{"appId": "1rEQG02zccA8wvLs", "appType": "DEMO", "baseAppId": "d6lPKvqDejvqklTS", "boothName": "vDwuOrP9lzpiX0Vu", "categoryPath": "FpZum7izxe7NPzjO", "clazz": "a8E7wY76PxLv9HBE", "displayOrder": 95, "entitlementType": "CONSUMABLE", "ext": {"D7fEscShnGUGUtV9": {}, "GJ279GDbLNwjm3FK": {}, "0nnX2poMfZ1hDHtb": {}}, "features": ["11A3HTovFi4tPAGf", "iIPp1yvfAHS0VgLu", "h4HtMlFgvh2Dp2So"], "flexible": false, "images": [{"as": "3wZpFIYeAg79HcLJ", "caption": "XJ7mpVI6eTYAjdPl", "height": 59, "imageUrl": "dt4XSpWBAetsanzq", "smallImageUrl": "P8oxfrtbECD1CYPw", "width": 1}, {"as": "AxJrINPXppPNO3Af", "caption": "mXcgwC3IN6tvKgLB", "height": 42, "imageUrl": "QmJIOq9dP5szG71u", "smallImageUrl": "tjsQ4CrRb9gUCeVz", "width": 82}, {"as": "fWbZIdhevfZvyV7A", "caption": "codcZwKjYDdmJOlz", "height": 47, "imageUrl": "Ii1CMgKAOG5iDcCR", "smallImageUrl": "5PbCvDLil8wj9cKM", "width": 50}], "inventoryConfig": {"customAttributes": {"Ar6MF35hCER4nGmW": {}, "GgTJfHlJl4tHGa4X": {}, "fZcd9CVnGqMX9Fie": {}}, "serverCustomAttributes": {"eEssWEUl07bhwntC": {}, "VqiYOJf5KwMZQjzv": {}, "jSozv6CTRDl0zp9C": {}}, "slotUsed": 52}, "itemId": "huiTnJarYYkHBDdS", "itemIds": ["zBXdxapwhd5IQYBQ", "uxLvPuWYvE3fsNy9", "Z9OhxXvCp9y7fLD2"], "itemQty": {"qfCXnlUnqxT1WsRN": 79, "lcEPhMDFzjHZ3sIh": 52, "4MHX6AgMep90AyyU": 73}, "itemType": "SEASON", "listable": true, "localizations": {"9n8D2eLMe3lt9qfx": {"description": "2UDcgVE7L9FK6e0M", "localExt": {"rPc4vtxk9hVKlG56": {}, "HlzGr7XjdyRJunZP": {}, "kp6ccIBnWyPw8mj7": {}}, "longDescription": "gyQ7XdIszGRj46CO", "title": "PipH1MWVTHG0qHJC"}, "WEfOJpZm9yEYWNGM": {"description": "y2pgSGSUOK68eqGJ", "localExt": {"tWf1Ybgg8rdwY9bm": {}, "rvHmO07KNqX9LM2I": {}, "wEsdOGBXBwnzDX8v": {}}, "longDescription": "3xgC1Ge9PdbTTAJ2", "title": "Gp1r0sVZ6LJAOddI"}, "L2l3hPjNDKv2LWfX": {"description": "qjr8fS79En3wYowB", "localExt": {"dkaZ3y6i38XQjLDR": {}, "qkpiFK5BtiQ272Uo": {}, "9UBJWodpdwsX1jor": {}}, "longDescription": "cyR0x3YiHF8ITGPR", "title": "QBCgIs1Q2lzxl0yF"}}, "lootBoxConfig": {"rewardCount": 70, "rewards": [{"lootBoxItems": [{"count": 25, "duration": 15, "endDate": "1986-05-20T00:00:00Z", "itemId": "TTh4gUoj8u2WRcLi", "itemSku": "EtzVlnkflfn7pHY4", "itemType": "8F1dl1q92m3iRlfn"}, {"count": 56, "duration": 78, "endDate": "1984-09-05T00:00:00Z", "itemId": "k0CwiAsR65yQ9ssu", "itemSku": "HdGmxncCEr0Kcgeq", "itemType": "zGbruNB72HHMkjzy"}, {"count": 57, "duration": 59, "endDate": "1985-01-15T00:00:00Z", "itemId": "4UFKiaoV0VOem2yq", "itemSku": "PsMFxKybPkbuS6x9", "itemType": "cLJ1APnNlsa2bRBr"}], "name": "27fVMWuAfDqLMR91", "odds": 0.9903133106262157, "type": "REWARD_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 29, "duration": 85, "endDate": "1977-10-28T00:00:00Z", "itemId": "CsodJrhQW41q2Osp", "itemSku": "CZbt3Uta5I0uGcL1", "itemType": "koyHjCH5olYLETRp"}, {"count": 54, "duration": 18, "endDate": "1985-08-16T00:00:00Z", "itemId": "AmO2EGvJ4UMS93yO", "itemSku": "xNInDByhnoluO6ti", "itemType": "0QP2ssiJ66OzOj84"}, {"count": 83, "duration": 68, "endDate": "1980-05-14T00:00:00Z", "itemId": "gohjtC7bzjPpucdd", "itemSku": "XJ5zifF8y959anrN", "itemType": "SleywHbHig6IKWVZ"}], "name": "77KeRWdECaFGzfZ2", "odds": 0.11879654180846755, "type": "REWARD", "weight": 4}, {"lootBoxItems": [{"count": 4, "duration": 73, "endDate": "1986-09-13T00:00:00Z", "itemId": "r3vk3IfAKEbqcNXS", "itemSku": "GCCvNowNmdpcJgF8", "itemType": "8ySNq4Mj7mulP4tQ"}, {"count": 61, "duration": 90, "endDate": "1985-09-19T00:00:00Z", "itemId": "OqKVOTniBgLsNhdg", "itemSku": "Q0JWZjNRSzOTqcVN", "itemType": "X3ahvxw9gwwhTnjN"}, {"count": 5, "duration": 45, "endDate": "1981-10-29T00:00:00Z", "itemId": "D3QxCXMd00YBWCaV", "itemSku": "VmM45mfIZsWhkS47", "itemType": "6dGGJwJ00UH197MJ"}], "name": "6zU7JLMQyMWzYQCA", "odds": 0.00017950647938613784, "type": "REWARD_GROUP", "weight": 9}], "rollFunction": "CUSTOM"}, "maxCount": 30, "maxCountPerUser": 1, "name": "xGJoJaSzUtY4ZD0X", "optionBoxConfig": {"boxItems": [{"count": 39, "duration": 0, "endDate": "1971-05-20T00:00:00Z", "itemId": "U4pH16NUsVY21NVI", "itemSku": "s7NRen2Y3Ns0QJQe", "itemType": "aWytPfds1BYx0EaU"}, {"count": 89, "duration": 42, "endDate": "1983-01-31T00:00:00Z", "itemId": "9eFJrOXyDYz9vMUO", "itemSku": "PG0iHDT8QbF7gHPT", "itemType": "PQbvLt2NRqJGIKzL"}, {"count": 51, "duration": 68, "endDate": "1997-07-17T00:00:00Z", "itemId": "9oTynmfIuBWgJTNF", "itemSku": "fM8M0IW4oe8KDgy0", "itemType": "xZfAcNg14Ws8TIP1"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 87, "fixedTrialCycles": 59, "graceDays": 30}, "regionData": {"HH9WaVO4iKhDcJ7T": [{"currencyCode": "CcNIsQ3PuppUxDSK", "currencyNamespace": "8aOTGMudcxlCV4cN", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1993-09-23T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1992-03-06T00:00:00Z", "expireAt": "1990-03-04T00:00:00Z", "price": 23, "purchaseAt": "1976-12-10T00:00:00Z", "trialPrice": 25}, {"currencyCode": "dinpjS2DRfGt9Gly", "currencyNamespace": "ZVQ4X67tPZSTpPq3", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1975-05-24T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-03-15T00:00:00Z", "expireAt": "1976-02-26T00:00:00Z", "price": 45, "purchaseAt": "1979-06-28T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Dgw0ag7kSWE0Hiqm", "currencyNamespace": "5IuLryiEXqvUWDjU", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1987-03-22T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1986-03-17T00:00:00Z", "expireAt": "1984-10-15T00:00:00Z", "price": 77, "purchaseAt": "1982-08-20T00:00:00Z", "trialPrice": 46}], "ToLuPakQN1MpOs1R": [{"currencyCode": "VFrcg2CXxepx78fv", "currencyNamespace": "syhE2BKtyTDSIM7m", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1977-05-24T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1997-06-02T00:00:00Z", "expireAt": "1998-08-21T00:00:00Z", "price": 1, "purchaseAt": "1977-10-18T00:00:00Z", "trialPrice": 38}, {"currencyCode": "LNNz6QIVC9Mfuc8V", "currencyNamespace": "OsnmnlVljdWYmELe", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1998-01-22T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1971-06-20T00:00:00Z", "expireAt": "1977-04-22T00:00:00Z", "price": 56, "purchaseAt": "1982-08-01T00:00:00Z", "trialPrice": 43}, {"currencyCode": "nYBTxaTIz0jcgDI8", "currencyNamespace": "Pkz96vd80msqIm5b", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1973-11-25T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1994-08-10T00:00:00Z", "expireAt": "1985-05-11T00:00:00Z", "price": 60, "purchaseAt": "1980-05-09T00:00:00Z", "trialPrice": 14}], "LeqhwVhjnnjKMEmt": [{"currencyCode": "biWsAQHbMrKYi0Zx", "currencyNamespace": "s5SWCqZXHLLa31oQ", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1994-08-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1990-05-03T00:00:00Z", "expireAt": "1977-09-13T00:00:00Z", "price": 73, "purchaseAt": "1986-03-05T00:00:00Z", "trialPrice": 53}, {"currencyCode": "utDM6BqguqD5xxGx", "currencyNamespace": "BWtnTKUe2znsqPzP", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1982-11-05T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1998-08-06T00:00:00Z", "expireAt": "1972-04-29T00:00:00Z", "price": 18, "purchaseAt": "1999-12-16T00:00:00Z", "trialPrice": 91}, {"currencyCode": "hLC10ih2EQfY3XCv", "currencyNamespace": "4hdOa6FdZhNMd1on", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1987-12-22T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1971-07-15T00:00:00Z", "expireAt": "1994-06-05T00:00:00Z", "price": 57, "purchaseAt": "1984-12-20T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "mMhAbUWmFhdYLWzM", "price": 42}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "3zkUY0n0BAZkwbYk", "stackable": true, "status": "ACTIVE", "tags": ["KNdOTacCcJfIfXsh", "uLUk5WdpxjZx5noX", "LyO6A0FqfhnaB3Yx"], "targetCurrencyCode": "PhPUTKbonoucNmzw", "targetNamespace": "OZOK56sDkci5rZ8i", "thumbnailUrl": "MlOuksQJCiRFiZWw", "useCount": 73}' 'Vco2LTo5ijlvDF8q' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'BWCQ9dLWYyS8zdhM' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'eBXH8x6HdVfZVDAi' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'U6iJOF7JKZFNk2NK' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'y59X8iOg2sVBiCoe' --login_with_auth "Bearer foo"
platform-get-estimated-price 'C5weXJl7PeiMH8z8' 'dVej8N2yv6VTnOK7' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'xAvM7tuL81lsR7xx' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'SVp3Gd2TK0HzYviT' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '{"itemIds": ["gYmx82JVBRLPZ6Iz", "8tne5dbguBF6Gsvv", "dl8jHz9x7XZIjU4I"]}' 'K9lOLaZaMphKCqTq' --login_with_auth "Bearer foo"
platform-bulk-update-region-data '3EVheJjoEEXBLIxG' --body '{"changes": [{"itemIdentities": ["nNuhoJM3WWPvvCiC", "f33ViEdqQpoGkUWN", "izk5UcPAGv6c1ESC"], "itemIdentityType": "ITEM_ID", "regionData": {"uxJF3sbeqWBdQuWf": [{"currencyCode": "gBAKx27MSBqabUXO", "currencyNamespace": "GkkoMUZn1YXj5zFZ", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1996-08-20T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1992-12-17T00:00:00Z", "discountedPrice": 11, "expireAt": "1980-11-24T00:00:00Z", "price": 18, "purchaseAt": "1982-08-17T00:00:00Z", "trialPrice": 32}, {"currencyCode": "QZSJPOIKrRBrYVzi", "currencyNamespace": "9ui3lvozTt9TsH7A", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1987-01-02T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1992-01-07T00:00:00Z", "discountedPrice": 84, "expireAt": "1984-03-22T00:00:00Z", "price": 53, "purchaseAt": "1976-03-14T00:00:00Z", "trialPrice": 56}, {"currencyCode": "1sys6GdkDcos5uVJ", "currencyNamespace": "0BJfZ0jvA54CSqZF", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1980-11-30T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1998-07-19T00:00:00Z", "discountedPrice": 38, "expireAt": "1999-03-24T00:00:00Z", "price": 20, "purchaseAt": "1993-03-16T00:00:00Z", "trialPrice": 90}], "OU1SMfQVQa6blj9R": [{"currencyCode": "dd85bdYUumPKVSZC", "currencyNamespace": "g3XTc9vQe0dHJfF6", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1981-04-20T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1993-02-22T00:00:00Z", "discountedPrice": 58, "expireAt": "1971-01-08T00:00:00Z", "price": 95, "purchaseAt": "1977-10-21T00:00:00Z", "trialPrice": 42}, {"currencyCode": "ktyBdxkZKrEWFw9G", "currencyNamespace": "YxjiiOQAD77ci0vf", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1993-07-09T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-11-11T00:00:00Z", "discountedPrice": 59, "expireAt": "1992-02-23T00:00:00Z", "price": 17, "purchaseAt": "1993-01-19T00:00:00Z", "trialPrice": 23}, {"currencyCode": "HyKKz5nyI6ulKNKo", "currencyNamespace": "Xa0dgx1JgjC56pda", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1975-04-13T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1983-12-14T00:00:00Z", "discountedPrice": 29, "expireAt": "1983-05-03T00:00:00Z", "price": 58, "purchaseAt": "1973-10-14T00:00:00Z", "trialPrice": 78}], "n7QqXBDXJcrqKmXD": [{"currencyCode": "woEV6tCdrxw1KOPh", "currencyNamespace": "uvHuYrGWDK41uMOC", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1976-12-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1982-09-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1975-05-01T00:00:00Z", "price": 97, "purchaseAt": "1971-12-21T00:00:00Z", "trialPrice": 67}, {"currencyCode": "4aebjfgGu472oWJl", "currencyNamespace": "fglLM4xjfkNL4lU6", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1971-10-01T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1999-05-26T00:00:00Z", "discountedPrice": 43, "expireAt": "1986-11-07T00:00:00Z", "price": 46, "purchaseAt": "1972-06-10T00:00:00Z", "trialPrice": 11}, {"currencyCode": "YEJTSiXjcY5ZPkv9", "currencyNamespace": "0lyKSTWLxSFZ0Lpu", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1975-03-16T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1993-01-12T00:00:00Z", "discountedPrice": 58, "expireAt": "1976-04-21T00:00:00Z", "price": 97, "purchaseAt": "1980-01-08T00:00:00Z", "trialPrice": 34}]}}, {"itemIdentities": ["vkCPfKofwXOIZZQA", "Jza84lKKmVOaTS6x", "BbNrSUAW2ak7ISDr"], "itemIdentityType": "ITEM_SKU", "regionData": {"HITBg9x4unq3eOMH": [{"currencyCode": "IKeTyBG5dCUoExnK", "currencyNamespace": "fV3869IN4V1OdhH4", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1979-07-11T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1976-03-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1977-10-12T00:00:00Z", "price": 4, "purchaseAt": "1985-07-07T00:00:00Z", "trialPrice": 58}, {"currencyCode": "iLjLyZrXr9Bhtzn8", "currencyNamespace": "jAdTn6xBhrciryLm", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1976-08-23T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1998-01-22T00:00:00Z", "discountedPrice": 41, "expireAt": "1988-06-14T00:00:00Z", "price": 28, "purchaseAt": "1996-03-24T00:00:00Z", "trialPrice": 32}, {"currencyCode": "1SLjCPrFa05Xl5TP", "currencyNamespace": "C5GODS44bmm7jPdK", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1982-01-24T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1988-01-29T00:00:00Z", "discountedPrice": 92, "expireAt": "1980-12-04T00:00:00Z", "price": 96, "purchaseAt": "1999-05-14T00:00:00Z", "trialPrice": 100}], "jXVzW1QqxnWR5she": [{"currencyCode": "LgsAF4ctv5guycGi", "currencyNamespace": "q9j2EyIknfLDpgHn", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1986-04-19T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1972-10-04T00:00:00Z", "discountedPrice": 9, "expireAt": "1974-01-25T00:00:00Z", "price": 9, "purchaseAt": "1997-10-15T00:00:00Z", "trialPrice": 64}, {"currencyCode": "9sde7Ryt4udIv22M", "currencyNamespace": "18uux9xBomQFPFWy", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1996-11-15T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1992-04-29T00:00:00Z", "discountedPrice": 72, "expireAt": "1983-01-04T00:00:00Z", "price": 58, "purchaseAt": "1987-04-30T00:00:00Z", "trialPrice": 78}, {"currencyCode": "etqgfOJDUT0uKAPr", "currencyNamespace": "ARya2IMlNiXpF4qv", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1995-03-08T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1982-10-02T00:00:00Z", "discountedPrice": 9, "expireAt": "1979-03-14T00:00:00Z", "price": 5, "purchaseAt": "1999-12-14T00:00:00Z", "trialPrice": 93}], "O30lpzcBQMAEcNcJ": [{"currencyCode": "qrKxnMzSYoc4ZjiM", "currencyNamespace": "Y4H34B6wVd8ipcKD", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1993-01-07T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-05-24T00:00:00Z", "discountedPrice": 100, "expireAt": "1983-06-12T00:00:00Z", "price": 69, "purchaseAt": "1976-08-15T00:00:00Z", "trialPrice": 58}, {"currencyCode": "6GO9zP3FaepA3b3Y", "currencyNamespace": "J9nJM6vtT27xv85K", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1977-04-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1997-01-28T00:00:00Z", "discountedPrice": 14, "expireAt": "1979-08-21T00:00:00Z", "price": 1, "purchaseAt": "1997-07-11T00:00:00Z", "trialPrice": 8}, {"currencyCode": "xPPdPwOtEuWBSO2j", "currencyNamespace": "JepUnEEgja2mIE2k", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1978-10-05T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1976-07-07T00:00:00Z", "discountedPrice": 10, "expireAt": "1972-11-10T00:00:00Z", "price": 29, "purchaseAt": "1996-04-27T00:00:00Z", "trialPrice": 26}]}}, {"itemIdentities": ["g4me2NBFp62xlXvV", "cJerTPW02PWsHiKY", "ArAxnKBfBfDlrQQu"], "itemIdentityType": "ITEM_SKU", "regionData": {"ukWpnbz4ys7j6lxu": [{"currencyCode": "U3u2HEG0qfKegvFT", "currencyNamespace": "D1sPykS8YLmwtYgW", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1984-10-17T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1975-04-26T00:00:00Z", "discountedPrice": 67, "expireAt": "1989-10-05T00:00:00Z", "price": 77, "purchaseAt": "1988-02-22T00:00:00Z", "trialPrice": 37}, {"currencyCode": "HaX5UBMbsF44VTsL", "currencyNamespace": "DRzdq22cbnyK3ggF", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1974-09-07T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1987-12-30T00:00:00Z", "discountedPrice": 96, "expireAt": "1997-04-22T00:00:00Z", "price": 86, "purchaseAt": "1972-02-29T00:00:00Z", "trialPrice": 32}, {"currencyCode": "3iUfBthbepUCTWiZ", "currencyNamespace": "1uqh7GAi4FEIu44u", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-12-23T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1978-06-14T00:00:00Z", "discountedPrice": 23, "expireAt": "1993-02-19T00:00:00Z", "price": 34, "purchaseAt": "1976-03-31T00:00:00Z", "trialPrice": 32}], "pq03BGdIk4oEogFV": [{"currencyCode": "GR71rJOBy6lsj1AK", "currencyNamespace": "GBjnHmaAu4YK87DY", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1995-08-05T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-01-18T00:00:00Z", "discountedPrice": 59, "expireAt": "1971-07-29T00:00:00Z", "price": 5, "purchaseAt": "1995-01-08T00:00:00Z", "trialPrice": 84}, {"currencyCode": "GWmKgE8CZ4AELr5l", "currencyNamespace": "raa5v5P5Cj8hgFsq", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1972-03-01T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-10-16T00:00:00Z", "discountedPrice": 71, "expireAt": "1992-03-09T00:00:00Z", "price": 26, "purchaseAt": "1990-05-07T00:00:00Z", "trialPrice": 63}, {"currencyCode": "rwPsa9YD92CX0rIT", "currencyNamespace": "ajpwHITGeHTnqRbz", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1985-07-11T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1997-09-15T00:00:00Z", "discountedPrice": 34, "expireAt": "1974-10-25T00:00:00Z", "price": 56, "purchaseAt": "1971-12-20T00:00:00Z", "trialPrice": 25}], "Fj1umx4ItzkMJ7cu": [{"currencyCode": "df4r916GPrhn2etV", "currencyNamespace": "IQvRkQJAtDUH9tx6", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1983-02-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1987-04-14T00:00:00Z", "discountedPrice": 52, "expireAt": "1974-02-08T00:00:00Z", "price": 31, "purchaseAt": "1979-04-16T00:00:00Z", "trialPrice": 31}, {"currencyCode": "JYXsYgL7TfyIlAwj", "currencyNamespace": "TZdRZJJzWZwvTX2b", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1972-01-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1985-07-02T00:00:00Z", "discountedPrice": 44, "expireAt": "1990-10-07T00:00:00Z", "price": 27, "purchaseAt": "1974-07-08T00:00:00Z", "trialPrice": 66}, {"currencyCode": "vSWdDwD7WJHzgNZU", "currencyNamespace": "KsI5y0mR3zMyTsft", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1999-04-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1980-10-04T00:00:00Z", "discountedPrice": 70, "expireAt": "1982-10-20T00:00:00Z", "price": 51, "purchaseAt": "1972-01-07T00:00:00Z", "trialPrice": 40}]}}]}' --login_with_auth "Bearer foo"
platform-search-items '4NpdOzg3hr6ucHf7' 'dbh2iKNUl0qJqzoK' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'MRMG541PAiNjULsx' --login_with_auth "Bearer foo"
platform-update-item '{"appId": "4SnKNXLMUaDSwwQl", "appType": "DLC", "baseAppId": "8JH4n0JtgqzZv5kV", "boothName": "u4S95mj8YRvae4f4", "categoryPath": "lhBPbarbWEm8bVtZ", "clazz": "cfVCPdQhim9QKUAF", "displayOrder": 94, "entitlementType": "CONSUMABLE", "ext": {"VYelIlGJg9wdc8bi": {}, "hhWjfZpfcFBUsnnD": {}, "JlmD1iEokbUiYzCQ": {}}, "features": ["Q9P7sYLDWAJOA75K", "4BYJ2fkqYJoF2FI3", "h2iNTwtnohddMzMT"], "flexible": true, "images": [{"as": "mtQUvro8TWwXWsz9", "caption": "TVmdMKEohKzuMYDU", "height": 94, "imageUrl": "f7Ot2DkUt3yexZBR", "smallImageUrl": "vxYnEBhXtAVxCd3m", "width": 8}, {"as": "fiZrthVvyX0OCKDJ", "caption": "E3RMUddwSSgxCu8z", "height": 36, "imageUrl": "GNgaJmuALlMQl9RL", "smallImageUrl": "rthbfp0VgweLlT2s", "width": 15}, {"as": "3SsTnDQY7kKU2u06", "caption": "Q4veujxtyQENvJrB", "height": 58, "imageUrl": "YPK8IxrSZuxWl0Je", "smallImageUrl": "4fJIyFAm3DQht4Jw", "width": 27}], "inventoryConfig": {"customAttributes": {"CPY70FmvviVIBbcu": {}, "jF8Vk5qb8NhWWwax": {}, "yMchkt8l5IPSrwrJ": {}}, "serverCustomAttributes": {"l7wYIVw13NCo9yXl": {}, "bQ52FTHTCj6SEAzT": {}, "7TOpyiuvvQUm29Ia": {}}, "slotUsed": 5}, "itemIds": ["j7eDTaka9ABfX1IB", "yPEOuPhGspRi3bhP", "QvBBJI5JxytpcubN"], "itemQty": {"4AUUPFPscZsXeJOD": 60, "Bi8JXE52sUBBq2Si": 25, "Z8N4UQ2fg3V1o2x0": 15}, "itemType": "LOOTBOX", "listable": true, "localizations": {"5DuBDqMyIAzWze94": {"description": "MEdJFAy2JTllJkRG", "localExt": {"B8jqJEd6eqqsBVyO": {}, "NV0JRtozI0jpliCF": {}, "Q6WgJpGPigdc5VyC": {}}, "longDescription": "4qvWjVac1cQvSxgT", "title": "NIUzxDgBlIbuzm7D"}, "zJ20NFRJIhFXR2dY": {"description": "prPmbpuptECGd5cd", "localExt": {"XC2Sesc6y68whNBY": {}, "l9iCqfW6rqGOQny4": {}, "ij4ysYPonb59gQff": {}}, "longDescription": "kNOmubxEJr2qEAuJ", "title": "bpZSrcbc4LWfKaY5"}, "c1tP5TDuI5f6m4KC": {"description": "07CnsZe32hqEcB1E", "localExt": {"xYMBb3ckvoaJYdMq": {}, "Gegcg3eRvBZXN3cj": {}, "IXmFWRJnj8xN7HDP": {}}, "longDescription": "TUEDPN1Kb4UTPWDX", "title": "TSb55g8LSTs7Nf95"}}, "lootBoxConfig": {"rewardCount": 23, "rewards": [{"lootBoxItems": [{"count": 24, "duration": 66, "endDate": "1998-03-29T00:00:00Z", "itemId": "3j84P0KqirJ4PkMF", "itemSku": "tsnFfz8Ew0X8fBuB", "itemType": "SKLSQ4GvLtz50D3r"}, {"count": 32, "duration": 81, "endDate": "1985-10-05T00:00:00Z", "itemId": "fBovqLwXBuT30EYe", "itemSku": "Rj17xGhaBKoUfiHj", "itemType": "GmCyPsKCJTv1ic9g"}, {"count": 43, "duration": 56, "endDate": "1971-10-04T00:00:00Z", "itemId": "gF2cSuztsJ5tj64g", "itemSku": "V7nmDk29mcjSuz9v", "itemType": "bNStqPtQmQN6eKAG"}], "name": "iZFCftT0RWECdjWY", "odds": 0.28040678534972296, "type": "PROBABILITY_GROUP", "weight": 80}, {"lootBoxItems": [{"count": 41, "duration": 37, "endDate": "1976-01-17T00:00:00Z", "itemId": "xcCKAru8pOaAVLDB", "itemSku": "4k3JwkdaxR7GJpYm", "itemType": "uYCPG181q9GA5Dyd"}, {"count": 59, "duration": 4, "endDate": "1999-08-27T00:00:00Z", "itemId": "Fh04JTsqDTynCewq", "itemSku": "JligLlRxOelKykIC", "itemType": "RxF6HtlER2txs4qr"}, {"count": 80, "duration": 20, "endDate": "1984-08-14T00:00:00Z", "itemId": "RATn6KXOutlYBbLh", "itemSku": "L8KXx25FZfQIodVB", "itemType": "qQsBpCJBIXLGYcwW"}], "name": "VRK6UKk5ozrXA4HZ", "odds": 0.5379744371526379, "type": "REWARD_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 49, "duration": 2, "endDate": "1979-03-12T00:00:00Z", "itemId": "9odanhR1Zrm3thUv", "itemSku": "V87yfkycLSVdleSa", "itemType": "AylsmLYe2phYOgT5"}, {"count": 22, "duration": 71, "endDate": "1986-10-27T00:00:00Z", "itemId": "TyPl3dKF7NXEjrJM", "itemSku": "ki8jvc3P8Gwjg3IO", "itemType": "H0SDHgYKqxJiFJdr"}, {"count": 25, "duration": 35, "endDate": "1975-07-27T00:00:00Z", "itemId": "5vhzgsJwex7wq8ZP", "itemSku": "lXNaUNgdY2vfJuje", "itemType": "5cPnmGjTvYa5Pqx1"}], "name": "K7qcAoijBPAp6EPb", "odds": 0.9856036502441055, "type": "PROBABILITY_GROUP", "weight": 78}], "rollFunction": "DEFAULT"}, "maxCount": 40, "maxCountPerUser": 48, "name": "NQts2yxf6MLZJ2jZ", "optionBoxConfig": {"boxItems": [{"count": 11, "duration": 61, "endDate": "1971-10-20T00:00:00Z", "itemId": "pTJezzriCDWXT59S", "itemSku": "Ru0YqUxKDc84OMIz", "itemType": "vTScdbKBsAyJMz4I"}, {"count": 77, "duration": 81, "endDate": "1974-08-30T00:00:00Z", "itemId": "SGhnfuF4WZiQVICV", "itemSku": "pWd3UM08gMXhdf3j", "itemType": "uXW4JprIb3CJCAtv"}, {"count": 91, "duration": 67, "endDate": "1974-08-25T00:00:00Z", "itemId": "8nfaKqdZFLbZEHxs", "itemSku": "DxeR6d7r1SQw80Jf", "itemType": "MpPrSqYypRUnq5o4"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 94, "fixedTrialCycles": 9, "graceDays": 20}, "regionData": {"CUYG9ccTt7Wxw8OQ": [{"currencyCode": "13t3uTw6zQuoZcXQ", "currencyNamespace": "poTOxe8y1jorNsg9", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1979-05-30T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1993-10-21T00:00:00Z", "expireAt": "1993-04-28T00:00:00Z", "price": 78, "purchaseAt": "1988-02-06T00:00:00Z", "trialPrice": 91}, {"currencyCode": "e3TcJ7DQIi45aCDH", "currencyNamespace": "N9mVug2zkVf6KgpK", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1977-01-12T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1988-11-07T00:00:00Z", "expireAt": "1981-09-01T00:00:00Z", "price": 2, "purchaseAt": "1992-06-09T00:00:00Z", "trialPrice": 93}, {"currencyCode": "axvagSlpGgVTF6Ve", "currencyNamespace": "DAPOGBwweyFfXEOE", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1986-08-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-01-12T00:00:00Z", "expireAt": "1972-01-09T00:00:00Z", "price": 23, "purchaseAt": "1974-10-26T00:00:00Z", "trialPrice": 32}], "gBgyCd5vjkfz3eR4": [{"currencyCode": "DtNp129hzBw3xLUc", "currencyNamespace": "CEt0DzmkJq1sml5b", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1989-08-10T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1991-06-01T00:00:00Z", "expireAt": "1983-03-09T00:00:00Z", "price": 28, "purchaseAt": "1983-02-24T00:00:00Z", "trialPrice": 67}, {"currencyCode": "iR9434WpKKdzxouf", "currencyNamespace": "CNlFoOcWQQy4bjmQ", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1986-01-18T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1994-02-02T00:00:00Z", "expireAt": "1972-04-28T00:00:00Z", "price": 95, "purchaseAt": "1985-06-09T00:00:00Z", "trialPrice": 68}, {"currencyCode": "5UGkInFGpuUsdtq4", "currencyNamespace": "dOwNESzCEW9dUVhZ", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1990-04-12T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-08-21T00:00:00Z", "expireAt": "1976-05-30T00:00:00Z", "price": 17, "purchaseAt": "1985-03-24T00:00:00Z", "trialPrice": 71}], "CpLCqPD9CeDEdCnn": [{"currencyCode": "L6Kt1Bjj3b8QM8Rr", "currencyNamespace": "45ULqXQgvwD3PsKD", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1999-10-18T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-12-13T00:00:00Z", "expireAt": "1973-08-20T00:00:00Z", "price": 46, "purchaseAt": "1991-01-02T00:00:00Z", "trialPrice": 41}, {"currencyCode": "S7rDBf2S54phbdyG", "currencyNamespace": "Dt47f9GWRlE9hqz6", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1975-09-04T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1991-09-14T00:00:00Z", "expireAt": "1978-01-03T00:00:00Z", "price": 36, "purchaseAt": "1996-03-01T00:00:00Z", "trialPrice": 96}, {"currencyCode": "jxUdMM83WekqfWv0", "currencyNamespace": "4vvn9bk5qr8qs2mq", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1978-06-19T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1981-08-09T00:00:00Z", "expireAt": "1983-05-11T00:00:00Z", "price": 87, "purchaseAt": "1996-10-17T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "iLc1eI9w3JEhxPGb", "price": 62}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "7s7gw07FlounC3vJ", "stackable": true, "status": "INACTIVE", "tags": ["CXNjrdQL2jdx1eIb", "vamIRZHzsIYOCUoi", "r6yvWJDdvM7T7PX2"], "targetCurrencyCode": "a1sB0HsJ06DzfbzR", "targetNamespace": "Yt4OVUyumBeIqdQG", "thumbnailUrl": "ZC5kM03HHijsQRj7", "useCount": 81}' '4LEZvz3EjFR7996U' 'g5m4axDV5uTcYsoa' --login_with_auth "Bearer foo"
platform-delete-item 'hUrELQ1btjJOqQMg' --login_with_auth "Bearer foo"
platform-acquire-item '{"count": 41, "orderNo": "WAU6E92nHJzvw7tn"}' 'YtGfv0EJyjBu4Ezw' --login_with_auth "Bearer foo"
platform-get-app 'RjD7jmQJeFPghqam' --login_with_auth "Bearer foo"
platform-update-app '{"carousel": [{"alt": "Sc5y0X48eT7Mluex", "previewUrl": "k87b9Z5BTsEA3Edm", "thumbnailUrl": "W8saabP4xRowfNoj", "type": "video", "url": "tRFPKThyGnbjmPDK", "videoSource": "youtube"}, {"alt": "kZwS6TYwNN3UYhic", "previewUrl": "03qGEg5fNzBVrjo3", "thumbnailUrl": "g8CfRwtyl1HeT7VE", "type": "image", "url": "gG40QyXzsOzgck07", "videoSource": "vimeo"}, {"alt": "IghoQBp2mWAOYksc", "previewUrl": "zxBS0OBCa2vWadLm", "thumbnailUrl": "QtYKmEMzicbuL2S3", "type": "image", "url": "iW8dLTCBfGUdVEdv", "videoSource": "generic"}], "developer": "bOy1T4hfwkuVykH4", "forumUrl": "RpfmjIXFGZ5PKdba", "genres": ["Action", "Racing", "Sports"], "localizations": {"dT0fefo74eg3Nt2c": {"announcement": "0r4GqF0NHglOVuNZ", "slogan": "9LzNeJnBurh54CWb"}, "Yb0Pebyt8b4DGscj": {"announcement": "wrizsFUgYwbaLvqv", "slogan": "Q2NbmDITuymTBjn3"}, "d2sFzMS3QaVjZF7A": {"announcement": "x6115Kg9U8vrQJXQ", "slogan": "xoIbVi2CLEk277Iv"}}, "platformRequirements": {"jj1A647XQ3koaAfZ": [{"additionals": "Iim0sFPm1YN27boj", "directXVersion": "DVaZLpx4kEWYkO6K", "diskSpace": "rKUMhJrASBh61hmW", "graphics": "KSSrF35anDGvur19", "label": "V18oIrUKXttgAI2Q", "osVersion": "dWJFLmoPEgd8EMsp", "processor": "Os8nkic9gj5vyUMA", "ram": "AmIHYbsxG5N066FX", "soundCard": "b88SbLOa21DiSFsm"}, {"additionals": "0XXQJWszvTQEuALz", "directXVersion": "DNp1SZ58aDllwzTR", "diskSpace": "Hak1MXxj7Esrg790", "graphics": "0nml5BidsK9dCEzh", "label": "VnOv0PQbVIaKiHfo", "osVersion": "eorY7A1otGFyv2SM", "processor": "jbEr50qGdCZIc6EF", "ram": "qBKxbS7Q2OgRucL1", "soundCard": "jwRXzfjDZZBmOau6"}, {"additionals": "syme06c6SKLc2mEC", "directXVersion": "3IXl5XCbkOfHaGr5", "diskSpace": "kdazlypvt6lSLfU7", "graphics": "HByGXPMqxj4hBgVY", "label": "3YAxZLKbcOdyjqf6", "osVersion": "Q4oiwoJcaRMEb15L", "processor": "BlTVufc5ZyODR2NV", "ram": "yn4PRqf3eRbZqBAo", "soundCard": "KGcVCdMiSNV4qBrt"}], "1kcLmRv6EJtl5xWn": [{"additionals": "sb8oWq94RImNWVIJ", "directXVersion": "nhhwFDV1VitaomvW", "diskSpace": "TzdsW4N70wYS4Kj7", "graphics": "Yi2VvoQNW8Yc481d", "label": "YdvGxJAMDRA1LF7j", "osVersion": "dWlekFwO94VBCV9q", "processor": "JhWva2FPBujX0geY", "ram": "CpGJM4sqsPNJMiZX", "soundCard": "XOFwmGWAvNF0Z0Gk"}, {"additionals": "wxUNYyNwGiKrknH0", "directXVersion": "Y5mrQgLC6D2qsFiQ", "diskSpace": "HglUQMZi5WjMZfOa", "graphics": "dpgegCUjTdi1Ehr8", "label": "OtqpNJ9R8TuNy4ej", "osVersion": "mVA3vMCsGyPd12B8", "processor": "QNUz0hFFNbH6j2W4", "ram": "roZM2UKAXEEsL5D0", "soundCard": "oiFchQnVeq3g2AB2"}, {"additionals": "WIRUQmauIY5HXCZ0", "directXVersion": "W4XmWP0HzSdiylLh", "diskSpace": "VYszm8xY33OQbumu", "graphics": "2QHLyZNuysyM4OfC", "label": "zdQCXMAWnf87YPNO", "osVersion": "e9Eevf1fhMg1E2k7", "processor": "QLFrVgtX7y0fPOie", "ram": "DCow2zXyFFVpM87y", "soundCard": "qEwEacQMTlqN4LKk"}], "xJ5v3SBafnKNiMPb": [{"additionals": "FkFGA85W3HJkqgS2", "directXVersion": "B37wwoPYOHiIsxms", "diskSpace": "LBPBJuNLnWRrtW87", "graphics": "0qD88ZcduZSe7W20", "label": "UZcDaiq0nEZ7Pyhq", "osVersion": "FJkDClOsKmfsgJdm", "processor": "zsDPsWh1k0cQ08NG", "ram": "6dX2TZkil67kRngo", "soundCard": "Ua83ECh1gqPeS193"}, {"additionals": "TNNzot3sVli3GN2X", "directXVersion": "TrFibRAhzzEWzWlT", "diskSpace": "Y70qdgJRvpZrSpWX", "graphics": "3KEe2BjV00ReCXFf", "label": "fjJJxlgjzIhpgOoI", "osVersion": "OD74V21HWDAfvXwd", "processor": "xbyp4HAPbBbNPStV", "ram": "BUpKgOssFkz0F36p", "soundCard": "iDYXeHZ7FHls3nyv"}, {"additionals": "conqbHQqKLQKe3xm", "directXVersion": "j6s0GqsWncp5Lrqb", "diskSpace": "iKudv9z75SzoCV8Z", "graphics": "Mi2o1nR482D6gNCl", "label": "k9c87hosaPFC5zBW", "osVersion": "3ZgVZCj9ObVGT0Sc", "processor": "wl4kNmCi15XTJTgC", "ram": "NNH7RtG5Xmo9Q0Wb", "soundCard": "07N17fkxZSc6VbE0"}]}, "platforms": ["MacOS", "IOS", "Windows"], "players": ["Multi", "Coop", "Coop"], "primaryGenre": "Adventure", "publisher": "OmbfJrCJQIj1haAo", "releaseDate": "1980-07-29T00:00:00Z", "websiteUrl": "KglqaCXE9ytpIO8b"}' 'tO3OwNEGSW5TaW4t' 'o7QCY2NGGvi9kg3r' --login_with_auth "Bearer foo"
platform-disable-item 'MIzNmhJTNQjKlwjf' 'J3TJ2xVpge70WsLf' --body '{"featuresToCheck": ["CAMPAIGN"]}' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'NRByjbE8lOLAfTXK' --login_with_auth "Bearer foo"
platform-enable-item 'LzbrddqcKLa7Levx' 'NHOSEhQRZIp693lR' --login_with_auth "Bearer foo"
platform-feature-item 'wtc43atCuCFxbfbz' '4aQERziPL4dHhOqG' '5KDdUvk0LEi26Ls7' --login_with_auth "Bearer foo"
platform-defeature-item 'mjRxNmvvNtjJNQep' 'UTGhwlY4lPzlsCR5' 'rVsyfcH7WjP7HuGz' --login_with_auth "Bearer foo"
platform-get-locale-item '3b5WAEvdRF9bqMj4' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 14, "code": "o5B19VE838c7OydV", "comparison": "isLessThan", "name": "A09rW8i8krFWJhe0", "predicateType": "EntitlementPredicate", "value": "5ZOzx6iCJTu60Iif", "values": ["zMhkk5PxsjqbCKpM", "v2Yky9DYkD2sIllF", "tBtXJKG3rqBmILht"]}, {"anyOf": 99, "code": "A3KMxBlrRytER1qd", "comparison": "excludes", "name": "elFAadM9y66Drf4S", "predicateType": "StatisticCodePredicate", "value": "GGt3MiBKohow3kKo", "values": ["BUI9esSsXegSEhrP", "DyVAHrHncR5dShqi", "aP1K4CDuH1mMIfOC"]}, {"anyOf": 31, "code": "WsGA76yxi0QzZWfm", "comparison": "isGreaterThanOrEqual", "name": "OA8H9VeHv0L2Acm9", "predicateType": "EntitlementPredicate", "value": "0EYQEuGJVl8xs1WI", "values": ["gzReRq0112ISArRO", "GCQGPCxwEdkyuT3M", "d9WlalqshF9Rh2o7"]}]}, {"operator": "and", "predicates": [{"anyOf": 27, "code": "dcmM6v2AEozWWaYv", "comparison": "isNot", "name": "ekLfjmy8zosRCRgV", "predicateType": "SeasonTierPredicate", "value": "9vrtuWWrqTZbSqBS", "values": ["Kp8AmgwhYzk33J34", "fpctNFUsUQ6ZXQcb", "fiTxK63OHpnUCGBV"]}, {"anyOf": 28, "code": "o1J5euLAbBgejqc0", "comparison": "excludes", "name": "Jg5VByeI3ycMcYYB", "predicateType": "SeasonPassPredicate", "value": "lAyvIslt7N1qcxKs", "values": ["JssShBKsQjXvfQgQ", "4nlf1MfqUZXkjHvc", "UOTlxNf09pefgFIi"]}, {"anyOf": 61, "code": "a7cfZl4VuY6rsZyo", "comparison": "isNot", "name": "GSogkewIzTOqKkcj", "predicateType": "SeasonPassPredicate", "value": "h3l2gAJOTCbx7J3g", "values": ["Rn0znIKzAEAHQpBO", "NLIlTk3Bpclrk4hI", "gHEP5l94s7CbIJ7e"]}]}, {"operator": "and", "predicates": [{"anyOf": 84, "code": "VWOboMkyB7FTexsO", "comparison": "excludes", "name": "F4OlRGdmXxETLEQr", "predicateType": "SeasonTierPredicate", "value": "y83Xit6boOLGCcg1", "values": ["1MgTTLS2FgarY903", "INGIyEfRBEj7qms9", "6DqwdQPQ9HkSSV8e"]}, {"anyOf": 55, "code": "HgfHumyfuBNisecY", "comparison": "excludes", "name": "vpgJfuBs1Vpqn47G", "predicateType": "EntitlementPredicate", "value": "mwCwGqOf0bNs97Kv", "values": ["eObbrmgjhWK0x0Zi", "Kyj3MqS7Dcmtfh50", "dAJ1CU1eD1La16Bw"]}, {"anyOf": 62, "code": "JbUnUDh5yGjjv4Mw", "comparison": "isGreaterThanOrEqual", "name": "CD9XPRi4bAQL7VE2", "predicateType": "SeasonTierPredicate", "value": "2E9pX0BWCMqPsRk5", "values": ["9YdFNtRVSO0js0hG", "qv2mM6soMaTvQq2a", "htdM5T3fDSrSHrko"]}]}]}}' '9xmSnzd7zgUxAogc' 'nGkXk17QPkJHRhmL' --login_with_auth "Bearer foo"
platform-query-item-references 'KQuQVFSKiXl8G2uf' --login_with_auth "Bearer foo"
platform-return-item '{"orderNo": "6E8EajXLSAS8MKMa"}' 'xQ1QyJCpKedhuzI7' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group '{"description": "G9NCKKXu1bqI2M5P", "name": "mXfKnQ7BYGjCUDMO", "status": "INACTIVE", "tags": ["bppC6CMYDm5ge659", "UDEOF6gp5UfmjtiV", "bqJnZcrqrPye7fCw"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'i7Il2wIFlHm9N6ow' --login_with_auth "Bearer foo"
platform-update-key-group '{"description": "MHMtJy1Oqn59tEGm", "name": "9NYeUT5P0nx8TqSZ", "status": "ACTIVE", "tags": ["kapTCafFMdvYiCBu", "zUUwyI6Vtd4v9k4f", "v3kMiuQ3DhsKLxjt"]}' '5srPFxBgpFtDBmTL' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'H9kP9U53z6joBAhA' --login_with_auth "Bearer foo"
platform-list-keys 'lJGI2YYb6ajBjgq6' --login_with_auth "Bearer foo"
platform-upload-keys 'eY4PBNHKPx62tHxD' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'b06ZFy3uglSp2Uxv' --login_with_auth "Bearer foo"
platform-refund-order '{"description": "F2uLXWilRD7HD6LC"}' 'gdFxRGj00RT6Lvcn' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config --login_with_auth "Bearer foo"
platform-update-payment-domain-whitelist-config '{"domains": ["GMJbJIYLssMvy9gk", "fTMRrXVRcAVRDX6g", "mDfNfPGYYSTunMgt"]}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated '{"currencyCode": "3C8hEguCqlMHiQN3", "currencyNamespace": "HWJw9zIWsiP2JQ24", "customParameters": {"meDrwEuTyM2qohgl": {}, "zO8AEl6A9sh2x2ur": {}, "2ccp7R7OqPqIjS4i": {}}, "description": "0N9ytb3c8pVZ8GlU", "extOrderNo": "8962e6gtn5pUARJM", "extUserId": "1T8QwMNOAzXmyHEV", "itemType": "BUNDLE", "language": "JP", "metadata": {"a280S5RNB5dVCsB7": "xL4axSPgPCiwLxCF", "LDixZwVtt3RVTl0t": "R00oQgcHdGGK3x76", "U1EIcklttmrpgF5s": "zl0sMY8es36r1FgR"}, "notifyUrl": "70eNLHkVrEFd8xAr", "omitNotification": true, "platform": "JuCAIfNBSHgpFNw9", "price": 75, "recurringPaymentOrderNo": "fHr6WvBxmBvNj3kt", "region": "aDf9B22HGgxakPt7", "returnUrl": "IYzaZUTmvsEzLPnn", "sandbox": false, "sku": "snfmBerp84qjwzWp", "subscriptionId": "CF1vyamjsEzwtLPx", "targetNamespace": "K1os4qR8LaQzEb39", "targetUserId": "sZTdFfC8x5aHLsXH", "title": "lm1RJTTy9JrNz1K5"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'M1qgFddYvifGHawN' --login_with_auth "Bearer foo"
platform-get-payment-order 'x6yhniEHLbEQKc0a' --login_with_auth "Bearer foo"
platform-charge-payment-order '{"extTxId": "UvrKXDIjYC4df9qs", "paymentMethod": "wSlpCI8DhjlxUyrs", "paymentProvider": "PAYPAL"}' 'SesE5p0DwUj2HKUv' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '{"description": "PYUcQBxMSdOOsn2N"}' 'd8Jpa19GJDK46Eeh' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '{"amount": 49, "currencyCode": "ywonA2SrEdN2tmGu", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 13, "vat": 14}' 'pS6A5mkufBpWVxIK' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status '9D2bTcgaKoccaSwW' --login_with_auth "Bearer foo"
platform-get-psn-entitlement-ownership '{"accessToken": "cZmzCWGI1cIQcPWA", "serviceLabel": 92}' 'LAJWpcyNkUvqn6eX' --login_with_auth "Bearer foo"
platform-get-xbox-entitlement-ownership '{"delegationToken": "r6FNbKJ05Orya6LS", "sandboxId": "SUlugIAknXcSaVYc"}' 'AYp7qSiDvsfMUOpW' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config '{"allowedPlatformOrigins": ["Oculus", "Twitch", "Other"]}' 'Oculus' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Oculus' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config '{"allowedBalanceOrigins": ["Xbox", "Other", "Nintendo"]}' 'Oculus' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config '{"appConfig": {"appName": "Ro4mYrCeQUnYoID2"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "qO0iAXA9dB4ib8HD"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert-v2 --login_with_auth "Bearer foo"
platform-create-reward '{"description": "J8TNiP8KgEAj3dbR", "eventTopic": "TI0i6dO3zkbDseh4", "maxAwarded": 40, "maxAwardedPerUser": 47, "namespaceExpression": "JdoGcwMBmegqVUaW", "rewardCode": "MJBjrV0p9A7tcHrV", "rewardConditions": [{"condition": "0MbJGr4drgkDuWS0", "conditionName": "5m0pGzazM2BUXnzU", "eventName": "EWTiKMJAf6AgbiED", "rewardItems": [{"duration": 80, "endDate": "1989-02-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dZDGwqx7T3l1ut2o", "quantity": 50, "sku": "2FBS93Mg6TKwdRMr"}, {"duration": 1, "endDate": "1994-08-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Lrwh3d0ykRGkgqUN", "quantity": 72, "sku": "34xmIOjFLgKR4LjE"}, {"duration": 99, "endDate": "1975-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OScvtQ92iD02YMvE", "quantity": 95, "sku": "PjpSAlZwFGpea5Ob"}]}, {"condition": "BB49Km4ClIQmkIdL", "conditionName": "CvNhZ6P8aqZ2yfrC", "eventName": "1V7ZpJZPHCMqvcYm", "rewardItems": [{"duration": 8, "endDate": "1974-09-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iTP4PSrXUS6jYI9l", "quantity": 37, "sku": "cqclNlBORlC8Zkjs"}, {"duration": 49, "endDate": "1972-06-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gxplHTPLzynjFZgF", "quantity": 58, "sku": "erw7UsyHq4bBb0n1"}, {"duration": 72, "endDate": "1974-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "US8BRPGV9n769zLJ", "quantity": 7, "sku": "QnKzDgDAtqE3kuyb"}]}, {"condition": "wTQFYEJjIYwqfSRy", "conditionName": "8GgVk77fd1GS5Yky", "eventName": "hAiAItnWUmD225fp", "rewardItems": [{"duration": 10, "endDate": "1978-02-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sx3ErheNwqd5pric", "quantity": 22, "sku": "DwZ1HKsOpyq8agQu"}, {"duration": 51, "endDate": "1984-01-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "nc6jLF9DIW2ncJJK", "quantity": 32, "sku": "gFhS0URBhl0L5FCb"}, {"duration": 83, "endDate": "1983-04-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "46W2B2uPQLrt2t6b", "quantity": 98, "sku": "1A1xW6okIqmd87ir"}]}], "userIdExpression": "9op4YfGTno5oHzqY"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'DgykA8zBJX0rkOHU' --login_with_auth "Bearer foo"
platform-update-reward '{"description": "kY5aSlqhYoSXbn6l", "eventTopic": "5xAzc1nc3eFm950d", "maxAwarded": 40, "maxAwardedPerUser": 47, "namespaceExpression": "VAo7w4e3v5mh6Rum", "rewardCode": "5pbgEt39uJQpgEtc", "rewardConditions": [{"condition": "hTe3nt7t9ztprSfW", "conditionName": "9OutADrNGBWSJ1zQ", "eventName": "KxVmRTawjiZPMoZZ", "rewardItems": [{"duration": 4, "endDate": "1990-07-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EHxAKDQher3usApP", "quantity": 6, "sku": "SRiBq23kyH9jQbHW"}, {"duration": 21, "endDate": "1985-01-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RwH3EdKmYtbqQHNf", "quantity": 71, "sku": "7OYTylFRAJKySnC0"}, {"duration": 5, "endDate": "1997-02-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "l3Z2zSBbs4PAV72u", "quantity": 9, "sku": "AxE2IQeoxYV4UcYz"}]}, {"condition": "swAGpXqQxctuVaqP", "conditionName": "JGAHEZmuQrZ8GaQ4", "eventName": "OZ2nDodm4TNs8mAj", "rewardItems": [{"duration": 100, "endDate": "1988-04-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4uyzZo1rj0ZrLQjk", "quantity": 97, "sku": "A2vaNeDiSqTfmAVg"}, {"duration": 65, "endDate": "1997-02-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vzeU5iqhx6zv7EUR", "quantity": 93, "sku": "kbdOsyxX1tfW488o"}, {"duration": 25, "endDate": "1995-02-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "4jyCVJ0V8obTlGVT", "quantity": 16, "sku": "m7Y3wiNloJfey3HX"}]}, {"condition": "L6SjljNPTXA3qbg5", "conditionName": "5SyienCODZ0mnOpP", "eventName": "TVxEgBFzG8tlkxWK", "rewardItems": [{"duration": 58, "endDate": "1974-11-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "4gl7yHvEqpJSrDXV", "quantity": 46, "sku": "UfbpMpRl6xRyV19c"}, {"duration": 3, "endDate": "1978-05-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eCpqnZ5NW623WWn2", "quantity": 59, "sku": "JY3QvRa7CDRTcsAH"}, {"duration": 53, "endDate": "1995-08-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3dZyyWbUQpbcv3Iw", "quantity": 26, "sku": "4UTDgS2SVEo5M80L"}]}], "userIdExpression": "Lbku9GYH4ijqOVM5"}' '0tCqkZfsSxAbDJ7s' --login_with_auth "Bearer foo"
platform-delete-reward 'HCLup8pmEosOXglQ' --login_with_auth "Bearer foo"
platform-check-event-condition 'wwdeLVpmXqRwVjc3' --body '{"payload": {"W2ANmE3VVsQ1fm9E": {}, "UdiaRjuLsKZoqnpK": {}, "whpZVdw5UMa8ymxt": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '{"conditionName": "EFLwELCY2vIddlxn", "userId": "A1VynioJcAPwVHUG"}' 'cs1ACMvoY4jWH9dF' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '{"active": false, "displayOrder": 84, "endDate": "1996-09-27T00:00:00Z", "ext": {"TqHc0cM7ixq8Tjnx": {}, "p5Cl8ggaEmCcuK2h": {}, "HviBEWpbusO6EyVq": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 40, "itemCount": 40, "rule": "SEQUENCE"}, "items": [{"id": "edh1SiZlOpIQ8GL7", "sku": "jBF1R5OexAPzCG6Z"}, {"id": "KQClGc1636nbfM3J", "sku": "9G40Y62bCo941ALz"}, {"id": "nQuHVskfCjUK8GeX", "sku": "4Q0B2Cj0oOmBmXu1"}], "localizations": {"KiTTiz7yrIvQj2is": {"description": "N7bRwcr16lW5YwgZ", "localExt": {"pjlMMtPWg8217m7q": {}, "NkQiKp2oac8QTNEu": {}, "BbeuQqm9wM7mgTtU": {}}, "longDescription": "dPVcQijMBhs0kDP6", "title": "d3nuUZ41mSeS9SnG"}, "qhJOvykBcDpzD9zh": {"description": "6dtPK4fVHLMvrCsH", "localExt": {"3RYxH2Up9VthPjFr": {}, "K7Hip0eONFDgUPSh": {}, "G8wwFKY9AMpcwJd4": {}}, "longDescription": "SrigIxAhbFMZfxaz", "title": "nlDQbzTiFrQB1yUo"}, "nirH4URx3NkKQBYr": {"description": "lUaMiFEWUT8cAFO5", "localExt": {"zEw8GENEJYPKxxOw": {}, "7xNQ98IEbc9YITN9": {}, "8j4P2AGeidXRRnIA": {}}, "longDescription": "JfKVjOn6rtILNJVv", "title": "2DLLUyBt5hDs45si"}}, "name": "G30Lv9iGa5mkZjnR", "rotationType": "FIXED_PERIOD", "startDate": "1995-01-14T00:00:00Z", "viewId": "cHZZjFegVnZOn0tk"}' '4IATSIefcqNEn4IZ' --login_with_auth "Bearer foo"
platform-purge-expired-section '0Dv6b8WtaMVvLbG0' --login_with_auth "Bearer foo"
platform-get-section '4KKnh3jvW0Qp3kTy' --login_with_auth "Bearer foo"
platform-update-section '{"active": false, "displayOrder": 54, "endDate": "1985-04-04T00:00:00Z", "ext": {"sLwiWUMcpxn4B6Xo": {}, "TNMuqZTHwo1IAJQp": {}, "b6r8ZeaSHwQuiH3O": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 67, "itemCount": 42, "rule": "LOOP"}, "items": [{"id": "G6bXxp0gYZyF9fJB", "sku": "JkSOrF9Dg4FcDwBG"}, {"id": "yBiHewZkwEeuzBBR", "sku": "SknxyWkZObuvig8s"}, {"id": "Muss76ezTrsDZNYU", "sku": "V48Oh6I45X7HvUtP"}], "localizations": {"YONZdFk75lkjQNHr": {"description": "jaboGomguUqeuZh5", "localExt": {"qtrRbNnGejdTGvZg": {}, "N5hshSe5YmZXKEQL": {}, "kM6o3eGSP4Htmr90": {}}, "longDescription": "TqGf0OyqJ9ibJMmR", "title": "goxNwp1lGkYoq8HP"}, "1TM0tefVQPWX1NPO": {"description": "5Wn7rNG8rGp7Fadv", "localExt": {"o5EzpX0IttsRezyY": {}, "9GB5sf94ALBmvdnc": {}, "QkcZb8cWdVH9bww1": {}}, "longDescription": "5zZsaYrJAe5Kd5QB", "title": "96ndlO6iPGC9RhzM"}, "C7V8BEphnRXnSpCz": {"description": "yb8FkoxQbrPngi87", "localExt": {"K58pQswqKLutINus": {}, "Osa92F6iwkJIYOLa": {}, "rmpWyvib9CDW21AN": {}}, "longDescription": "rlpuXD9H1u1CvzWP", "title": "cZwkj1l6bf2F9EXO"}}, "name": "Bj7v8LHYivmD0eky", "rotationType": "CUSTOM", "startDate": "1974-11-17T00:00:00Z", "viewId": "ppgxJhk4EdTZ000r"}' 'S92594HLvWFsXHtM' 'P0k9L5dREQbCqfh0' --login_with_auth "Bearer foo"
platform-delete-section 'gpABFBER6WNcDOsR' 'zBkf9A6HjCnFRdSi' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store '{"defaultLanguage": "hcvszzQLZBktk0si", "defaultRegion": "Mup01kyaFwwD7wec", "description": "uQb4GNQHVZMKGBnz", "supportedLanguages": ["h4suaGIzttTncVBf", "5g3oeuHiNyLkfPQP", "mjUkvSs5YmIejozm"], "supportedRegions": ["G5HlrIfMAvvpkAHR", "JHZyfrXZmiJX4CjK", "CeIRIr997KKpJXTL"], "title": "bYWpqeXjaf1f5fjN"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'VIEW' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv '{"catalogType": "ITEM", "fieldsToBeIncluded": ["ZjKJ05puX3197WrM", "nJtovSMFw8X4zxbd", "fXgunt1oMNZ68eov"], "idsToBeExported": ["HSH3xV3URIRVDYBd", "6hMB0l7sg7IfMH5T", "u1ky1ZYvyeHmfoFk"], "storeId": "UDP864shbnQ3bVvu"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'vpsDJXPCWkX4Kpi8' --login_with_auth "Bearer foo"
platform-update-store '{"defaultLanguage": "CJ88aMPGFFAQZbfb", "defaultRegion": "mVTEbiRq5Juikmpa", "description": "t75rVbN9ZBtzJ33t", "supportedLanguages": ["Cwv8H1f451FVZ630", "HNBYZSrz7pMjESLL", "MPKDXLki6Oz5Bygt"], "supportedRegions": ["8Q0RjSf1srB7hGwG", "bUmQmJHNffZENs9X", "0hFMdzryvhc1YjHm"], "title": "mulSBIElc2CdRvBb"}' '0aGnMt625bWHb5sb' --login_with_auth "Bearer foo"
platform-delete-store 'X6asrjV7XJUOtHlz' --login_with_auth "Bearer foo"
platform-query-changes 'XNHEPpzlMlx7b2H2' --login_with_auth "Bearer foo"
platform-publish-all 'THLwZGikW7TFA9gE' --login_with_auth "Bearer foo"
platform-publish-selected '6SrYKq6lcVOhPJIc' --login_with_auth "Bearer foo"
platform-select-all-records 'EHbiKHW7flVolAWE' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'MmQSPDTRqjlvwnnC' --login_with_auth "Bearer foo"
platform-get-statistic 'A5tfK5ushaKTPVjy' --login_with_auth "Bearer foo"
platform-unselect-all-records 'OUpR3uUdgNlyU4IJ' --login_with_auth "Bearer foo"
platform-select-record 'nqtrjCOsE8VjvzhJ' 'wNX4bhqCjlwrmsSR' --login_with_auth "Bearer foo"
platform-unselect-record 'V86iic1FIMyF7CcN' 'u2DYn6E9Gk51kOTJ' --login_with_auth "Bearer foo"
platform-clone-store 'ZluTekDMCGUJvERx' --login_with_auth "Bearer foo"
platform-query-import-history 'Ng8djSb4Vt2vKQ5v' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'lCdI519Pf2iogwxM' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '5DZM0dgozmco4175' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '0xdYQg34WUV0Wpms' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '{"orderNo": "Qnp1n4YGumTKOlDO"}' 'y5vhSkxERZ2AQ1jv' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'XYBar5RMmmGdWl0w' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '{"count": 31, "orderNo": "9z70LFQMI0oZuEjY"}' '0rNBbbB9txAvtRQv' --login_with_auth "Bearer foo"
platform-commit '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 73, "currencyCode": "OoENg2Lw7uepmahX", "expireAt": "1978-03-27T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "PUBnB0ZEJH3ebM71", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 13, "entitlementCollectionId": "G43R6nlRPrEAYqRB", "entitlementOrigin": "GooglePlay", "itemIdentity": "1WkIa0oZ1nXpW1l7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "cZgIn4lPghHyMEHB"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 55, "currencyCode": "gsjl5NmnSHhxNmCe", "expireAt": "1974-06-08T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "xY0MsPc9EMgf9JCJ", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 96, "entitlementCollectionId": "EvhL8ZfwCVJW9ysp", "entitlementOrigin": "Nintendo", "itemIdentity": "OyHC9eKeXzrvzBll", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 67, "entitlementId": "zyC1aTWEmPgoy4Tk"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 62, "currencyCode": "rM24F3celFgM62HQ", "expireAt": "1980-01-18T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "kMQVjKk3bWJ0ZuYS", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 2, "entitlementCollectionId": "3sI0x2hc8vaN1Off", "entitlementOrigin": "GooglePlay", "itemIdentity": "JMX7xSrz1EH6X2SM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 55, "entitlementId": "zsNrJzWBcdFlo7oA"}, "type": "FULFILL_ITEM"}], "userId": "qxx24QM35bSkFrvG"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 18, "currencyCode": "P3r1a8KIJH33aKkP", "expireAt": "1981-06-19T00:00:00Z"}, "debitPayload": {"count": 53, "currencyCode": "D59MgTy1HA58Jt5N", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 38, "entitlementCollectionId": "ROjSKFEuZo2ElXYS", "entitlementOrigin": "Oculus", "itemIdentity": "4ezBRSiOyReviDax", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "PdhwmcH03yoMxzRR"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 6, "currencyCode": "uR8OEyICvwgwBFeh", "expireAt": "1982-06-23T00:00:00Z"}, "debitPayload": {"count": 39, "currencyCode": "9pZQjWAN0tny16ZH", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "eP9qOHaLwYnXxrz7", "entitlementOrigin": "Oculus", "itemIdentity": "TcAzkIlndN5xeayr", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "5SjzQfOLYu9O46OO"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 27, "currencyCode": "9p57qSpHerzO87cg", "expireAt": "1985-05-16T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "wZXQZZrSsuYiIPei", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "XglJYnKkoCAZuolA", "entitlementOrigin": "Oculus", "itemIdentity": "nxkImVbDP0QX31gI", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "5TDYpkk2Gza6DrSy"}, "type": "CREDIT_WALLET"}], "userId": "bzr6qQw6fSESkM19"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 60, "currencyCode": "PMBb12gpmShlmIt2", "expireAt": "1977-05-25T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "MeD4bD8gISE34yIA", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 9, "entitlementCollectionId": "acmZRXZm626POXWV", "entitlementOrigin": "IOS", "itemIdentity": "eP72AB8EO3YrlyrW", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 46, "entitlementId": "tQm307IORTyHnLYD"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 53, "currencyCode": "G6izJZruOJvSRFLD", "expireAt": "1993-11-07T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "Pf8g1rbhfIMStMnS", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "rKWYOuITlYS2RYaD", "entitlementOrigin": "Nintendo", "itemIdentity": "WNKGhbLhjz1v0RBI", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 13, "entitlementId": "rkJGmPaK6HEVIQJd"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 93, "currencyCode": "VHAqp4O9XSjap24e", "expireAt": "1980-09-12T00:00:00Z"}, "debitPayload": {"count": 49, "currencyCode": "sKOmgEhjH2wFzCpx", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 36, "entitlementCollectionId": "JLfAg5cFT0gHAklt", "entitlementOrigin": "Epic", "itemIdentity": "n0T5uzlmi2NY26xr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 6, "entitlementId": "PPdg3pXjmtpNfCrI"}, "type": "DEBIT_WALLET"}], "userId": "D8RiaTsdD4d3kSbT"}], "metadata": {"kHPMUvOAUXkw36cr": {}, "2WJQqS7Tq4YIyZAF": {}, "Q6lZfa2jdNvpWf32": {}}, "needPreCheck": false, "transactionId": "S1av9VNpVLT0Lvqc", "type": "fSdO1nAjY5FvADb3"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'GUQgci632w6LUrHu' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '{"achievements": [{"id": "KBoNTpPQXDNHto74", "value": 66}, {"id": "mx1BT6iLFQejNZJN", "value": 64}, {"id": "MEeL0EJG67g4W1eA", "value": 26}], "steamUserId": "KU5abnqw8fFa30pV"}' 'bhr1BHh1arZAyuLc' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'ZoEkPpqKhP2jWnRT' 'glw0gdWoE4esuiDr' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '{"achievements": [{"id": "quccz4J6fFQezJ5E", "percentComplete": 98}, {"id": "iYHIknvPcJkjRevV", "percentComplete": 32}, {"id": "fiExpAgoK9YDq1x3", "percentComplete": 7}], "serviceConfigId": "dJtx6GV01vD7lNLx", "titleId": "lpvqaB9P9GaukfCE", "xboxUserId": "IeSBLhTfzigzHcRu"}' 'JgYaj4I8Dzyh1N0J' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'EKNoMtHvjM7X1fjz' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'knv2HZMIL2P2bh14' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'LroFTnAuujPeP9N0' --login_with_auth "Bearer foo"
platform-anonymize-integration 'vdVB5a2XkS3XQfMu' --login_with_auth "Bearer foo"
platform-anonymize-order 'zZh4AhZRe2hgU56x' --login_with_auth "Bearer foo"
platform-anonymize-payment 'tyJtnbTDXu7FbleS' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'P5PcdOuq0m0rvakR' --login_with_auth "Bearer foo"
platform-anonymize-subscription '8rcwojLRjhcaJ56n' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'GlYZ2tod2BGBXjNy' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'RCtPOr1FU3QZy3gd' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc 'cNeTflyvUh3w5Ztf' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'wmOCKpFSMF0tfGIZ' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '[{"collectionId": "CTNiIRc9fEjkZhEp", "endDate": "1984-10-15T00:00:00Z", "grantedCode": "t99HmcxzjDhTrcBK", "itemId": "tU956hOg8oukDVdw", "itemNamespace": "eG0sFHxTHa2k60Sz", "language": "Rkv-191", "metadata": {"bcIMevTmC631p7q7": {}, "94bu49lINFTtERAX": {}, "T2h3hcQ2wV3ZbBTn": {}}, "origin": "Xbox", "quantity": 57, "region": "QnVUhA5WnzVZdj8t", "source": "PROMOTION", "startDate": "1993-07-16T00:00:00Z", "storeId": "mL4i3eRyIECEDa1I"}, {"collectionId": "4lwXqwPfq3VzHQjt", "endDate": "1978-03-17T00:00:00Z", "grantedCode": "lx64w1gyvjacKtGq", "itemId": "xMnoAXRlcq0mYWKQ", "itemNamespace": "YlqMmu2pvF6rP03b", "language": "iAoQ", "metadata": {"IcC4wNFzsbrtYvLh": {}, "56AWXoMiowdWSs9D": {}, "Q0VU1HED9CGo9aUX": {}}, "origin": "IOS", "quantity": 94, "region": "3rh0UyqxVWlIMY5t", "source": "PURCHASE", "startDate": "1983-08-25T00:00:00Z", "storeId": "KV104MtMhKHmSjqP"}, {"collectionId": "uQZX5KjdNrEwfWo2", "endDate": "1990-07-01T00:00:00Z", "grantedCode": "SJLlrwXmIGamRCAR", "itemId": "uFLx4rV4CXVMrDYK", "itemNamespace": "e2eTf1axo16GqT2v", "language": "JmVm_nUWf", "metadata": {"7xssm4hxczskbSUb": {}, "OZ9WNl3apJmNAbl1": {}, "g5ZmTTGYRbP4QVey": {}}, "origin": "Nintendo", "quantity": 72, "region": "Ez1TV5cUtPBsw01i", "source": "GIFT", "startDate": "1973-07-20T00:00:00Z", "storeId": "7WvbNSeeDNfUESLl"}]' 'wHv3JgteOLyKp8a1' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'VqxXnRhDd9TGkO6a' 'IYqftw1SrM2nhSEa' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'nfUYrMU6A43UKGpv' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlements-by-ids 'tBW3pvAJJieHhveG' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'g97PY0txzvYwv7at' 'n9EQv2Oj8TFNeGtJ' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'GjKbMgCeuAYuzrmb' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'WofEaKStqdKu4ROn' 'ONpJ849chqeiUGQM' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'wNwDlYSli3p8YaAd' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'el3hHMSLAiscGRWz' '["kCl1ZKuPxjDUGRGc", "CEPjbUy7F82Adu9B", "YRHrVTehrqgvEtEs"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '2LpE0qfbvdU8hlDo' 'C9FnxqBlPBYJ7X6u' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'Vy7FWTSfMi2CPVGx' 'jcdpdCqVeePMSqb8' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'y8qJTUQY40Zrpn0v' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'AD9YsPeDWrAVQZSv' 'gWuCuLsUGrVQAbhS' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '54ZuQHKersDmJLUH' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'AKtfXCKOna8DdjtZ' 'hh6ofsUoRh6r0e0J' --login_with_auth "Bearer foo"
platform-get-user-entitlement '6vyqPw7YlmV3kES0' 'Hi88UYgSV40OvY7a' --login_with_auth "Bearer foo"
platform-update-user-entitlement '{"collectionId": "pPCrN5bEhmuHgKeW", "endDate": "1975-06-14T00:00:00Z", "nullFieldList": ["zEpw1zN0mOYgGhHM", "z9dddLWJWDuSYtCa", "Iv4Lp91wYUJPbvzn"], "origin": "Twitch", "reason": "TYoMDAaUXSuBQdvd", "startDate": "1974-09-04T00:00:00Z", "status": "SOLD", "useCount": 44}' 'oT0WK5ngNUxDKfZY' 'ofPGUbSaA00nKxQj' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '{"metadata": {"YU6KlavIiLxU2I1G": {}, "yJS48Hxu8Ju4XSAn": {}, "lXRYB9BgSZBvkehR": {}}, "options": ["n83B0nrW1qx3NJTu", "gVWXz8dv7BiEUqnz", "xs2deMF8UAJIHEZv"], "platform": "5zyUUyNJkvA5xF3z", "requestId": "HtZSd3QzXhkrN4pW", "useCount": 36}' 'WnLrXqImgDf3GaJs' 'dCZND0wgYOilX1e1' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '825iasunESjcgr2d' 'rXG5NkKCySLA8cKC' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 's0dFYRSa2OULZ0iO' 'ZJiOAh1SpLhMF2Pa' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'v11FuU8iXCRz8Kgq' 'gwijYxpGhsFArq6l' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'olbj7QKvtVRCPMjr' '5M3vw1GqUjjFp6R8' --body '{"metadata": {"mYZwKftVqSECsypS": {}, "42NmYQ8HlHbHnfs4": {}, "tLVOYQCWMktmiKd9": {}}}' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count '{"reason": "vLPP0w52JRAZxMWd", "useCount": 29}' 'qWrpkWnnova15WVu' 'E5cYVP9tQSa27BnP' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'yq3I1BLtGEZDRNkk' '4DJUofJXK8RGS0zC' '16' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '{"platform": "RVmbfzwUmsy0stUm", "requestId": "KdXiiTObNdqkWa13", "useCount": 12}' 'qdxmh5QWxuQuI7gd' 'DTDb3WdnOpzTrRzC' --login_with_auth "Bearer foo"
platform-fulfill-item '{"duration": 59, "endDate": "1980-01-01T00:00:00Z", "entitlementCollectionId": "NEHcI95GGdJvucDb", "entitlementOrigin": "Oculus", "itemId": "quMQSPp5XD4S1ilf", "itemSku": "gff7Et4uY8nlBwGN", "language": "HgfgwZwVMvshGmsg", "metadata": {"6ZJYnkHDnHTlRugM": {}, "7a2UZgeesipbP027": {}, "okM5E8tAajVSvLRj": {}}, "order": {"currency": {"currencyCode": "306RDuaSixXEdloY", "currencySymbol": "ZBkatNLc42eq0O6V", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "XtOlQwj5xPvm7c5n"}, "ext": {"PR0Y1sffUaZ64dFp": {}, "iv8o9Gw4QtKgyIey": {}, "SoUxoMrj2J4JGQZA": {}}, "free": true}, "orderNo": "Mq4GLj8aGsH0qE5p", "origin": "Xbox", "overrideBundleItemQty": {"1ak59yFSfdZIv8oY": 100, "YWpUYUQMooiKT57r": 24, "zikCh6q0yq2WAHtL": 70}, "quantity": 65, "region": "WE3MFqvfDG5jvMOa", "source": "PAYMENT", "startDate": "1971-09-02T00:00:00Z", "storeId": "cebBd5wb5H3qppoC"}' 'iHMD4iBK2O7qYtOH' --login_with_auth "Bearer foo"
platform-redeem-code '{"code": "V5hnpjc5CNLnnEvo", "language": "AfP_ELiS", "region": "5oadseJg7y4Q9CU3"}' 'fjSRaXD4HDmdvhMX' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '{"itemId": "xiKR29LKIhNU43K8", "itemSku": "bihdw3prp0UHlWUx", "quantity": 20}' 'YGfE6hXZ7XLoWCGf' --login_with_auth "Bearer foo"
platform-fulfill-rewards '{"entitlementCollectionId": "0dZEeXBd6mGG6SHc", "entitlementOrigin": "Epic", "metadata": {"bX2wNnT6A9zosmDn": {}, "Xoncy7NZQ4PkAPXB": {}, "CfkE1Fb0y94eP7yh": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "zsKhR60HZwUwk48X", "namespace": "K7MXHbEwAvvpEeHh"}, "item": {"itemId": "XiJcJqYSxVKUYMim", "itemName": "VLzAP6aOzsTqEFXU", "itemSku": "hGAwpYq1UqZydOB0", "itemType": "MThZW6LwcAg57BYB"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "Cbi0ifdPyKf3SwHe", "namespace": "kWIz4rXlH5jw99Hx"}, "item": {"itemId": "CjXWcaXBcfXXeV7B", "itemName": "XefsSgZxSYnVwXqF", "itemSku": "6K0WA76Kl2mHHoz6", "itemType": "qBQnEDgX49n1xTDF"}, "quantity": 5, "type": "CURRENCY"}, {"currency": {"currencyCode": "aHSx5bClxUOBmMwv", "namespace": "5pmiIVnhlLoMemsp"}, "item": {"itemId": "7o3F2LQw7Y2VdSxg", "itemName": "Xez7VvS0C9JLVQQP", "itemSku": "a7PPx4Zi6WaC8wk7", "itemType": "HMbJhNwZgf5nlMDO"}, "quantity": 90, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "c7ZuZXUCBYnkY0LE"}' 'BSYBdUSiTOrhB8hV' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 's29WOKmZRTtgycLz' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'Xz6lUMKi5mweMEZo' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '2ZnL1Zg2JfH4f73j' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '{"itemIdentityType": "ITEM_SKU", "language": "kW_duje_166", "productId": "fUEEBbqMMKvkOsR1", "region": "fHUyirMVMOFES2J2", "transactionId": "OzNlJE3uqZz574g3", "type": "XBOX"}' 'cA0PwZxTIZVSGQyT' --login_with_auth "Bearer foo"
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
platform-admin-create-user-order '{"currencyCode": "tKcwj6PqqOgCimr3", "currencyNamespace": "ZQNBBkrXu9czsYr3", "discountCodes": ["cFeVw70xdNTuOdLK", "9t1KqeGz7qbPnXEu", "K0M2B2hbqJin37P6"], "discountedPrice": 83, "entitlementPlatform": "Other", "ext": {"zzkoBmMR9C4qPqJr": {}, "Adh1HIk7vCEq7FQ2": {}, "S5VeW9ddxzLPV8wD": {}}, "itemId": "jsnyPh5yNbYXmlAO", "language": "i1SC3I1SjkH42Lty", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 94, "quantity": 20, "region": "Jo0L5sHil4Q0mqa8", "returnUrl": "GatrjbJ5YT7uvqar", "sandbox": true, "sectionId": "xUc2YgRpk2IFGIgI"}' 'pscUpVAciu2XPPUx' --login_with_auth "Bearer foo"
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
platform-bulk-credit '[{"creditRequest": {"amount": 82, "expireAt": "1984-12-05T00:00:00Z", "metadata": {"8XAKKWMDebehSjpt": {}, "0wrfWPXaI1Jb75o2": {}, "MFOa6xgPt69QROGD": {}}, "origin": "GooglePlay", "reason": "L3HDL4yx5I0euBsc", "source": "ACHIEVEMENT"}, "currencyCode": "vs25eiQO3oWdgXdm", "userIds": ["sITfVruDukun42zP", "e049k9W6ZLVJzRpU", "1IxL1OtleUBqBO0Z"]}, {"creditRequest": {"amount": 97, "expireAt": "1981-05-29T00:00:00Z", "metadata": {"Od4yZyMKyED3qDO5": {}, "HXp5oVkhESbHQ7hv": {}, "Tlzf7XwQtVIYU87N": {}}, "origin": "GooglePlay", "reason": "7Bq5bcfPW4pPZB9Y", "source": "REWARD"}, "currencyCode": "DgMiyBGygWFTAY3T", "userIds": ["h5mOwPCPKVPlOGfF", "Blu2ZP0IkiYXGk6B", "oBmSLi0R7zDFMoNT"]}, {"creditRequest": {"amount": 89, "expireAt": "1992-04-11T00:00:00Z", "metadata": {"4kxmHtFbjqurHix0": {}, "QYycDH5we2Mx0sYC": {}, "nYPT4i4mxc14iRfz": {}}, "origin": "Twitch", "reason": "J5imghdfVhjnjd66", "source": "OTHER"}, "currencyCode": "sRYO7wbYh7q02W8t", "userIds": ["hFvDlFd7iyZpvWVJ", "tccNorRls7EC3nDn", "kTURUFmqNc8xhQqp"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit '[{"currencyCode": "FK6ZuvlzGCII156h", "request": {"allowOverdraft": true, "amount": 14, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"rnEsxSE4vBzG7VK8": {}, "sWEshmZf5fEdvjby": {}, "JPQ1qdRcJjsme1Ou": {}}, "reason": "kIfIZVH8q8svV5hM"}, "userIds": ["OSfpyJkJlmJmTkFv", "GtpK43uORGREOOwT", "B7wkY6nuUEGJ3k0H"]}, {"currencyCode": "uY8dhNCDWWpN3B6t", "request": {"allowOverdraft": false, "amount": 2, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"UREoBSFtCLy2CqgC": {}, "G7JwJCDqkzOdFwLJ": {}, "pIPxzLE1V9U1NgpH": {}}, "reason": "7Oc44yjRdfqZgv34"}, "userIds": ["Sn4erXEtU1CaD8Aq", "WMx0MiPAjnWIhFrq", "GqqjelcN0GJmPwUT"]}, {"currencyCode": "sMCGBNhmUt6fzYRn", "request": {"allowOverdraft": false, "amount": 3, "balanceOrigin": "Nintendo", "balanceSource": "IAP_REVOCATION", "metadata": {"16HKXX1ft5nBA9xN": {}, "IJVuMz04evSdE2FM": {}, "cKd7c94rEmIYuAT5": {}}, "reason": "OAcUwYHGmG5rNDBF"}, "userIds": ["1oU37vjfyX5YLaM0", "wmi0i1WABBbq8IzZ", "sMFLX9ZhFXcFtfBS"]}]' --login_with_auth "Bearer foo"
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
platform-public-create-user-order '{"currencyCode": "tJAYror2XdtSCG7Z", "discountCodes": ["UL7wS3HaMTXAX6y0", "IbQM3ZAtyEWKWoZR", "ExOoIpWzacOvwUsn"], "discountedPrice": 90, "ext": {"dNfMiwgSvsTRmJsO": {}, "m0wVFyHvFhRMCFJu": {}, "A0DEMgykqqjoHTpI": {}}, "itemId": "PMSRAuPI7mSZQ5UD", "language": "JF-WxAi", "price": 46, "quantity": 77, "region": "cO48pthyYpBJDHII", "returnUrl": "xTIGI5EssYllIqjJ", "sectionId": "zuQ8GglVgxjOGQGl"}' 'Hm8VTN56tJKwD8O0' --login_with_auth "Bearer foo"
platform-public-preview-order-price '{"currencyCode": "7L9GG1uenDihceaL", "discountCodes": ["x62mkfVlu4bGB1py", "dgPZI0fKW8LeQxIt", "aK6s3Hha69MgxjGJ"], "discountedPrice": 20, "itemId": "NziO9Bz2wx4kDAm8", "price": 61, "quantity": 70}' '9a5mdlXTCL467xHb' --login_with_auth "Bearer foo"
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
    '{"enableInventoryCheck": true, "itemDeletionCheckConfig": ["REWARD", "DLC", "CAMPAIGN"]}' \
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
    '{"entitlementGrantList": [{"collectionId": "BQZXTcZnHoYaII5c", "endDate": "1976-10-05T00:00:00Z", "grantedCode": "qVvKR3ydSEb2trPj", "itemId": "qlB5c8a78gp4BGN4", "itemNamespace": "NAydb6GgyFczEOMX", "language": "Geul-TYTi", "metadata": {"TdTLCxJqK7dgsgrn": {}, "pVE1acxZoDXdPORk": {}, "WkyTcJzvDUlhTlBN": {}}, "origin": "Oculus", "quantity": 44, "region": "mUDwtTF1ATVQnAex", "source": "PROMOTION", "startDate": "1985-12-24T00:00:00Z", "storeId": "FaMkJVBkZU3qtk0d"}, {"collectionId": "M4GZGiSutb6wUxEi", "endDate": "1976-11-17T00:00:00Z", "grantedCode": "RyHC9VWMnzbuNQNJ", "itemId": "xCbLEhfrPxIRdbUw", "itemNamespace": "kN6Tr6vRneC9JYmp", "language": "TZBe-559", "metadata": {"iQwezvArAKJwZGVy": {}, "knpOhuGhAnlnjyPB": {}, "j7h3hncU5vgL62RA": {}}, "origin": "Playstation", "quantity": 55, "region": "ScfrHzGYC1TdLVDB", "source": "REFERRAL_BONUS", "startDate": "1983-07-09T00:00:00Z", "storeId": "RFOLeTQyplscfsZv"}, {"collectionId": "vUpCMJRliFCmFC9u", "endDate": "1995-09-04T00:00:00Z", "grantedCode": "xSxI4yyrZIV9M22g", "itemId": "RLsc6Jwt190s6yFi", "itemNamespace": "DZs0wyldbDDntsSQ", "language": "eofS_nWOK_150", "metadata": {"pAIwtlAooXZ7HDb8": {}, "g2BhzW03O2pp9qVp": {}, "ZbsppRsBWQ7RdYqZ": {}}, "origin": "Epic", "quantity": 86, "region": "SMRzSo0RzUoSen8C", "source": "IAP", "startDate": "1986-06-28T00:00:00Z", "storeId": "htRcnVsYOwypw6F2"}], "userIds": ["fPmWjX540aN2pvOi", "Zkbrkh3dQNtIEwCc", "1uYowkPNGANjli9X"]}' \
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
    'vmXZU7lVGZ6lIs17' \
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
    --body '{"body": {"account": "PXJ8KsgqGNM6sO7I", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 96, "clientTransactionId": "2RYA8fTlbfUOSmR4"}, {"amountConsumed": 65, "clientTransactionId": "SbDQN21JlwPxpuUZ"}, {"amountConsumed": 26, "clientTransactionId": "JSu3MX2yYJopKxd9"}], "entitlementId": "MtXYGoZGkBNXT0fe", "usageCount": 43}, {"clientTransaction": [{"amountConsumed": 57, "clientTransactionId": "7KKPXunBZiqYaReD"}, {"amountConsumed": 93, "clientTransactionId": "4717oGCmrTUcZy3D"}, {"amountConsumed": 61, "clientTransactionId": "z7N4wHLHx7FCWn7i"}], "entitlementId": "OmKIN2roJNZmgEGz", "usageCount": 33}, {"clientTransaction": [{"amountConsumed": 93, "clientTransactionId": "DHdLpDjLIhvCNlBR"}, {"amountConsumed": 5, "clientTransactionId": "aJEyBVlQ5iHlTqgM"}, {"amountConsumed": 53, "clientTransactionId": "UZXQKRTVR95IwPCb"}], "entitlementId": "2qOuIRbBL0njCbit", "usageCount": 63}], "purpose": "JQkYueQLLJPh6Hpo"}, "originalTitleName": "dpzuBQwTS66qr03M", "paymentProductSKU": "p14S8HG9ID7mZ4eK", "purchaseDate": "HaAP4PYToJAMgJkC", "sourceOrderItemId": "8UGlqb7cexeEhHz7", "titleName": "OKYNIMPTFnrbysdr"}, "eventDomain": "u1PotArVtIQyxp17", "eventSource": "b8SHvRIiJgGrdz6A", "eventType": "r6ZMGUI9Z0Fol65y", "eventVersion": 60, "id": "BHILlCC7ovjEbjKr", "timestamp": "Z2d6IbWTfPplY43F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'MockPlayStationStreamEvent' test.out

#- 75 MockXblClawbackEvent
$PYTHON -m $MODULE 'platform-mock-xbl-clawback-event' \
    --body '{"data": {"eventDate": "QpfFWm8VMHjC8qrx", "eventState": "vZsJd3RBYL4PAqdv", "lineItemId": "iBvToSQ7EqHUhHn1", "orderId": "qP3G2kSIurSOWI2d", "productId": "onULQokdCSsp87x6", "productType": "Jfe5YAYJeb1GUdtB", "purchasedDate": "5G8NITA0g58cqZn7", "sandboxId": "9u2grirdqELbdqXa", "skuId": "PlAMGm4h3PbLHDa7", "subscriptionData": {"consumedDurationInDays": 42, "dateTime": "79hQA91csvlQSS6P", "durationInDays": 51, "recurrenceId": "KgU263PawPB10d4K"}}, "datacontenttype": "CtC9mqs8uXBZ2Kxk", "id": "4a5FeKFm3raYpWl0", "source": "MfF3iAQb4Iiy26m5", "specVersion": "1AwCv4UKmP7eczfn", "subject": "YgOqXhJZ6DIokID1", "time": "ZFk9fRCHfId0Dhni", "traceparent": "n8RxnO0qs4FykFXD", "type": "dcUuEE9wh4CEOrPY"}' \
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
    '{"appAppleId": 43, "bundleId": "9A1L1Xijb7GTIFWc", "issuerId": "ZWKcGHG9MBp1AEcN", "keyId": "UzfWwpdraZO1lfHz", "password": "X5CHNiYaLYUlRZSL", "version": "V1"}' \
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
    '{"sandboxId": "Eyy6G3n83Sb2WXmc"}' \
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
    '{"applicationName": "XtuUYtYkPAHldms0", "notificationTokenAudience": "Nwlx85unvbUiBJfy", "notificationTokenEmail": "M9bc1hgFvKO2erV4", "packageName": "ccUhiQnHGDNXw2L4", "serviceAccountId": "mp580sUSlEfC6ckb"}' \
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
    '{"data": [{"itemIdentity": "V2y32kG5QTZnpxYa", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"jDp3LzelXaUz9AKo": "zXBA29DPhYa8Ksjf", "nk7HKSWULkEKqQ4T": "oqWjpaECYi7fBJaU", "43PzOITmqjrcuIH9": "i4ICwRHM518oPa2g"}}, {"itemIdentity": "lj6rHbkWMDSiPRcE", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"kyz4E3EI1bSCYaa8": "JSNQdhrnvuDGFiT4", "U6WQQwsTHCgTvrGl": "lrcttK4WgzdUhB2Y", "hKWidqRPQ1hSmShN": "aSmVFsmFW74Dkabv"}}, {"itemIdentity": "mYAT6qTg6ZOaTNC1", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0Pgh6Uenz7FjcRRI": "KcTVvsormCNHH08v", "Ef2WSsLchLBElch9": "a9Knc6glMjwg8OWA", "T7d65hchXzG4ffz0": "lXBDbBGrYGleamVg"}}]}' \
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
    '{"appId": "jm0xqJhfraXwzn0b", "appSecret": "bNK5rhgy51k1e1gZ", "webhookVerifyToken": "8QCEx41nhN2NMDXE"}' \
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
    --body '{"sku": "Hz2uROYqy72xPhtI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'CreateOculusSubscriptionGroup' test.out

#- 95 DeleteOculusSubscriptionGroup
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-group' \
    'M8Rw0xHZOUW3jlXY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteOculusSubscriptionGroup' test.out

#- 96 ListOculusSubscriptionGroupTier
$PYTHON -m $MODULE 'platform-list-oculus-subscription-group-tier' \
    'z8azHYdzaYe7Wjwo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ListOculusSubscriptionGroupTier' test.out

#- 97 AddTierIntoMetaQuestSubscriptionGroup
$PYTHON -m $MODULE 'platform-add-tier-into-meta-quest-subscription-group' \
    --body '{"groupSku": "U21EdgoOvT13nFPx", "sku": "My9YNTBZTR5tZmaZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'AddTierIntoMetaQuestSubscriptionGroup' test.out

#- 98 DeleteOculusSubscriptionTier
$PYTHON -m $MODULE 'platform-delete-oculus-subscription-tier' \
    'GxrhAPoREvGmmbGW' \
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
    '{"backOfficeServerClientId": "3SttwZrmKkREJXuc", "backOfficeServerClientSecret": "N3IEt8vZSqh6SjLd", "enableStreamJob": true, "environment": "9RV6lY9IGsZjUsSU", "streamName": "E7NuCYEOWNkgUfe6", "streamPartnerName": "pVMS5m8aRIev5s4q"}' \
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
    '{"backOfficeServerClientId": "7UwwraCDr326Q66c", "backOfficeServerClientSecret": "xtjNTXsCsfA2pIWz", "enableStreamJob": true, "environment": "5RXgVFrsR55cpOV3", "streamName": "Qg6eU0Mc21ZZliCy", "streamPartnerName": "dumMW9HWHfZ3bFTq"}' \
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
    '{"appId": "XqdzpP7Rk1qbFWht", "env": "SANDBOX", "publisherAuthenticationKey": "cH66JWKmTRqrvfJI", "syncMode": "TRANSACTION"}' \
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
    '{"clientId": "udR95sQ1FygQvoX9", "clientSecret": "pEJ3R0cuQGjCShST", "organizationId": "NyM9yuMOFavgMWyx"}' \
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
    '{"enableClawback": false, "entraAppClientId": "qK4FBJG8BfuSzytk", "entraAppClientSecret": "PE6mw3Zv0zD14WsQ", "entraTenantId": "t5oimAfS3Sh33Tuf", "relyingPartyCert": "YVdPwYmvZkT3zo8g"}' \
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
    '{"env": "SANDBOX", "lastTime": "1975-11-17T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminResetSteamJobTime' test.out

#- 118 AdminRefundIAPOrder
$PYTHON -m $MODULE 'platform-admin-refund-iap-order' \
    'ZsIfqeLfl0wacx4i' \
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
    'stsfrFqHu6f54mL4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetIAPOrderConsumeDetails' test.out

#- 122 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'hAfiqX3ThREYkndZ' \
    'IrjnjuCHkx8hm217' \
    '8A4NUDAdwt7cj6v5' \
    'MEDIA' \
    'MmdPXWaJRdn3WMdr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'DownloadInvoiceDetails' test.out

#- 123 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'hlWqCc54JfyGzMMH' \
    'iVQ6covYDuI4l1d9' \
    'YaLVuL1mLP65pId3' \
    'OPTIONBOX' \
    '1HvMCIXTQG7AUUES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GenerateInvoiceSummary' test.out

#- 124 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '{"categoryPath": "36bRVaiOL6Q5N2eg", "targetItemId": "LXRiNNV5Fy4ilLbK", "targetNamespace": "zQFBHQ0FHWOul5WK"}' \
    'kzjzRnLLFKGFSUC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'SyncInGameItem' test.out

#- 125 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '{"appId": "sZtVitkoRyEXWrhL", "appType": "DEMO", "baseAppId": "PUvlrOA50xGdlq3D", "boothName": "km52TA4zLBSh2QJW", "categoryPath": "gWvIZGJOPkJvsZhf", "clazz": "MwJPOcRFJTeKbAMI", "displayOrder": 74, "entitlementType": "DURABLE", "ext": {"ChPyIhVPmMs1zqz6": {}, "exSNhnabXGs0qawV": {}, "MpRu5wP9CTLKxi1B": {}}, "features": ["jFMOIsJO7EUYasMT", "4KtmXptKHAev0UqY", "HGgaQ2UErhcMpuZW"], "flexible": true, "images": [{"as": "eANANjqBdfMMU89e", "caption": "6CIBWn2Q3kMtF5ti", "height": 46, "imageUrl": "3eG0BvuCoP1hIpdI", "smallImageUrl": "WajZTyB7k7Q9zNJH", "width": 21}, {"as": "RoQRf0A1eAJUZSjW", "caption": "UPA9vXrqLxUCyNQU", "height": 70, "imageUrl": "iFGxJNOaveGzkTPe", "smallImageUrl": "hZVmZi1UYM7BApA1", "width": 44}, {"as": "ByiGkJR30lAinKfK", "caption": "XqYE8GuKFRwAkAyY", "height": 5, "imageUrl": "8hSNUTpzSm7jdrPd", "smallImageUrl": "kMMoylrI7DpmCIb5", "width": 72}], "inventoryConfig": {"customAttributes": {"hjPVDOEmwpWiJYxv": {}, "vQCHIreoYDgNe1Ry": {}, "ydtCBznu3BT2fe68": {}}, "serverCustomAttributes": {"sGXFylcwoCMa2D9Q": {}, "tE0TKRHukM2BVMu4": {}, "18S3o2DKmAp8kt81": {}}, "slotUsed": 41}, "itemId": "6L7Wl7UfG3PbsgYD", "itemIds": ["gJ0JRrcPbe1REA4k", "pxN9tCjk58n5fBl9", "xiCZH2KBHwuAW3jL"], "itemQty": {"kVq9bAefBF8tiF7m": 16, "xlGtWc5UcGIGpI8Y": 15, "9f25YsZ1L6IGHuO7": 42}, "itemType": "COINS", "listable": true, "localizations": {"tOUpmu6zULXQMirz": {"description": "wMshTQYUnfHWyBg5", "localExt": {"c3Wq2dGygLo40eCb": {}, "82j4OhaAiWk4TKx1": {}, "WRjiCokzg7q7bMwx": {}}, "longDescription": "VAujRx0pyulY8igL", "title": "WA7yUanMI437Ne6W"}, "vRNtbN9Eos8o1PdT": {"description": "Dqm0SXzXNqw2oEpt", "localExt": {"JsPYgvPnAlN2mJeW": {}, "1LQJ8A7NZLQPAny2": {}, "9oO2B8osfAcB6Pd2": {}}, "longDescription": "uPwzliHiPYuwUtR5", "title": "5gCTACz3aLd0f0QG"}, "kwoIQo88hLxgR5AJ": {"description": "VEz4FiSPgU3FLs6L", "localExt": {"bIwwxFBW1RyUyU8G": {}, "VL2TVivHbcJX1mqJ": {}, "4BtZCHdlmOzx9Drw": {}}, "longDescription": "T5dJMDgZPQtuRIVY", "title": "69dhSr3JiNweUidB"}}, "lootBoxConfig": {"rewardCount": 97, "rewards": [{"lootBoxItems": [{"count": 44, "duration": 56, "endDate": "1978-06-30T00:00:00Z", "itemId": "MyjPjMUoUC9cUOeL", "itemSku": "u9OVb7aBijwHPyva", "itemType": "MEDKGCxmJgOQkViu"}, {"count": 39, "duration": 58, "endDate": "1985-06-24T00:00:00Z", "itemId": "jVUos6ZMGM14H49G", "itemSku": "bRHeTMH4jK8hWOlH", "itemType": "rqyBElA4m1Ywb6nM"}, {"count": 16, "duration": 5, "endDate": "1974-12-17T00:00:00Z", "itemId": "SCXGzZMdNwUYOkFX", "itemSku": "nGtw8AuvUND3dJ4h", "itemType": "bxnIuxtrWKvmz0Rz"}], "name": "wVRhRmllqqWYgDWb", "odds": 0.28291824957152056, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 10, "duration": 50, "endDate": "1979-03-15T00:00:00Z", "itemId": "Y0RiyzWJZAZHklGm", "itemSku": "HH8I1l3xgoVyEemJ", "itemType": "DvokY7UUVCHGWcVr"}, {"count": 68, "duration": 33, "endDate": "1987-08-18T00:00:00Z", "itemId": "ehIhJk597xUXpiOL", "itemSku": "FQFxY4AHLzQnClUt", "itemType": "kXb0SoMLqijtgLSG"}, {"count": 93, "duration": 56, "endDate": "1978-11-05T00:00:00Z", "itemId": "HCZ6XwqnOeIUKAIv", "itemSku": "QjUxtk82oOOkHmCF", "itemType": "ldZ0XAvFitLhI0sq"}], "name": "jfua9x08SJmn2gM2", "odds": 0.267511281074129, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 25, "duration": 41, "endDate": "1986-01-01T00:00:00Z", "itemId": "Y4lD14f0XIJh3uxr", "itemSku": "BGEumeTG434Dmlbw", "itemType": "WuZpKPB4rzvo2R5Q"}, {"count": 94, "duration": 41, "endDate": "1975-11-15T00:00:00Z", "itemId": "wS2sBodn1p1MJrZv", "itemSku": "1itpBPRbtgUMFAcx", "itemType": "hrY80cxjAXFOLYQX"}, {"count": 21, "duration": 35, "endDate": "1996-07-14T00:00:00Z", "itemId": "tzrSIfMjxzBwWKzJ", "itemSku": "ldpqtAlzVR0WqkbK", "itemType": "YSr7IVc2WJyX67v7"}], "name": "JTcrppNGl78VMGk3", "odds": 0.025385980446943512, "type": "REWARD_GROUP", "weight": 63}], "rollFunction": "CUSTOM"}, "maxCount": 66, "maxCountPerUser": 13, "name": "BWrzKJ0Lj0VNzr8k", "optionBoxConfig": {"boxItems": [{"count": 93, "duration": 60, "endDate": "1977-09-11T00:00:00Z", "itemId": "05oiubu5HHlb7VI1", "itemSku": "cHNU3pvbpyJTgwl3", "itemType": "ZOMpzNQDtQNlDFMa"}, {"count": 53, "duration": 38, "endDate": "1982-05-09T00:00:00Z", "itemId": "RX5v3UCobMU8bzca", "itemSku": "f0Qv0dFMnEcDHueq", "itemType": "AKTjdRpgYeuitqLY"}, {"count": 74, "duration": 54, "endDate": "1994-09-03T00:00:00Z", "itemId": "RyXVoJ9qEel6x5O5", "itemSku": "otpujfw64GJDWklF", "itemType": "kqhGFAoxfL2vrevl"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 67, "fixedTrialCycles": 58, "graceDays": 12}, "regionData": {"xOOi4DVUYo37I8Mg": [{"currencyCode": "h1DJARpi5KzpbDPf", "currencyNamespace": "XdGvodrl6UOwYZJq", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1985-10-16T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1974-07-27T00:00:00Z", "expireAt": "1979-04-02T00:00:00Z", "price": 13, "purchaseAt": "1983-06-10T00:00:00Z", "trialPrice": 73}, {"currencyCode": "7XuWOIpQwptcvroo", "currencyNamespace": "hLb6q3F16PO9Ydwq", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1980-07-24T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1977-04-19T00:00:00Z", "expireAt": "1993-06-26T00:00:00Z", "price": 82, "purchaseAt": "1995-06-06T00:00:00Z", "trialPrice": 74}, {"currencyCode": "rvVr6DpLOyrgsLZV", "currencyNamespace": "9arTxBgnOqH9lyv8", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1982-01-04T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1989-10-03T00:00:00Z", "expireAt": "1978-05-29T00:00:00Z", "price": 91, "purchaseAt": "1971-10-04T00:00:00Z", "trialPrice": 31}], "Lipk5N6e79zCfL2a": [{"currencyCode": "r4zJmB2wifDA7LpN", "currencyNamespace": "D5zXLhrmEeBwTzs9", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1990-04-07T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1999-01-29T00:00:00Z", "expireAt": "1985-09-08T00:00:00Z", "price": 100, "purchaseAt": "1997-03-11T00:00:00Z", "trialPrice": 52}, {"currencyCode": "r6n6anryoVkl4tCh", "currencyNamespace": "uDibBIH1dyZPHtYH", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1979-11-22T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1989-03-21T00:00:00Z", "expireAt": "1985-08-25T00:00:00Z", "price": 11, "purchaseAt": "1972-09-17T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vYqfoYzBc16XXXuo", "currencyNamespace": "JGXCyzA8a5uh1LdV", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1999-11-22T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-10-24T00:00:00Z", "expireAt": "1993-09-30T00:00:00Z", "price": 16, "purchaseAt": "1985-04-17T00:00:00Z", "trialPrice": 27}], "mMTxEz6bdDFDqRMy": [{"currencyCode": "TZOXYRC3gIRiYFpD", "currencyNamespace": "lAEyVuvyXITMn2F8", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1997-12-21T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1988-07-09T00:00:00Z", "expireAt": "1989-04-20T00:00:00Z", "price": 92, "purchaseAt": "1991-09-06T00:00:00Z", "trialPrice": 85}, {"currencyCode": "eAEd96gzUY6EuVZz", "currencyNamespace": "nqQVYO5728Ri3CuA", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1971-02-06T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1976-09-13T00:00:00Z", "expireAt": "1971-12-22T00:00:00Z", "price": 50, "purchaseAt": "1977-06-14T00:00:00Z", "trialPrice": 61}, {"currencyCode": "XGN51wxYTCHYaW7B", "currencyNamespace": "AFZnpxmzs0AQYJnB", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1981-05-20T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1989-04-30T00:00:00Z", "expireAt": "1980-05-08T00:00:00Z", "price": 36, "purchaseAt": "1985-11-07T00:00:00Z", "trialPrice": 77}]}, "saleConfig": {"currencyCode": "ho0XSsR3HPQNrtkf", "price": 51}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "3ymYms9fuih2WMLl", "stackable": false, "status": "ACTIVE", "tags": ["ji4B86NKZ0tkEWAq", "pvoOxT54t5Ffna72", "M0EZhtIp1XL7HL2n"], "targetCurrencyCode": "KoPXxLMtU6hLliy7", "targetNamespace": "em6ox8O9f2ojEQrZ", "thumbnailUrl": "645LOpaGFJniJl9R", "useCount": 86}' \
    'X1jGg2X6VHZOulL5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'CreateItem' test.out

#- 126 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'KfkSA0amHSK4Sz7f' \
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
    'bw7cgHHvIEPvqjKV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetItems' test.out

#- 130 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'vPP5x3gf1HnOzyuw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetItemBySku' test.out

#- 131 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '55KAICc0N5AqnaH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetLocaleItemBySku' test.out

#- 132 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    '9QFksDAGUgVcYdzd' \
    '3mUKKxi2anNFpYXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetEstimatedPrice' test.out

#- 133 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'E37QpBIY8LEEtCms' \
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
    'emV8gAHQaitMhleY' \
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
    '{"itemIds": ["83sh3B07O0XQWCZX", "aPi8oY6VkZP57PyB", "LX7knj7y5qEOp7hz"]}' \
    'PCxvetFhAgAkkEhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ValidateItemPurchaseCondition' test.out

#- 138 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    '3Y16uyKwJ713r4F9' \
    --body '{"changes": [{"itemIdentities": ["WC342Uggyr64isEf", "xbFEabmT6MmgebEk", "Q73QcKQldxIqMgf2"], "itemIdentityType": "ITEM_SKU", "regionData": {"aNJqIMDWJUW3I4SK": [{"currencyCode": "jp0NOc5dWAES7S7w", "currencyNamespace": "BqBe4F2z2u3wwUBB", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1982-07-27T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1988-01-27T00:00:00Z", "discountedPrice": 55, "expireAt": "1985-07-08T00:00:00Z", "price": 19, "purchaseAt": "1999-05-26T00:00:00Z", "trialPrice": 53}, {"currencyCode": "nh0Y0rQluvKziVTC", "currencyNamespace": "PTrqHc7vqaXxxiGO", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1996-01-05T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1995-08-17T00:00:00Z", "discountedPrice": 74, "expireAt": "1999-02-22T00:00:00Z", "price": 21, "purchaseAt": "1978-11-28T00:00:00Z", "trialPrice": 87}, {"currencyCode": "JxAI3kOXwHnS2VOE", "currencyNamespace": "SYx49M1JdtImLI5e", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1993-09-28T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1979-01-17T00:00:00Z", "discountedPrice": 58, "expireAt": "1993-11-14T00:00:00Z", "price": 1, "purchaseAt": "1981-04-05T00:00:00Z", "trialPrice": 80}], "P2hpjhYQEdyLRX3e": [{"currencyCode": "tMjv8jskCHfqF5uo", "currencyNamespace": "9BT2QqCxWZGjDRc2", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1982-01-02T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1999-07-30T00:00:00Z", "discountedPrice": 99, "expireAt": "1971-01-12T00:00:00Z", "price": 83, "purchaseAt": "1996-12-02T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Zb0I9Qm4xKek7ZAZ", "currencyNamespace": "JCk1fizRJy5JoIlH", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1994-04-24T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1995-04-09T00:00:00Z", "discountedPrice": 62, "expireAt": "1986-10-06T00:00:00Z", "price": 26, "purchaseAt": "1976-06-25T00:00:00Z", "trialPrice": 32}, {"currencyCode": "IBTi05akxBYozWzU", "currencyNamespace": "W4RDVM8Y4PcXDH8R", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1988-03-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1984-11-06T00:00:00Z", "discountedPrice": 26, "expireAt": "1985-06-08T00:00:00Z", "price": 17, "purchaseAt": "1999-06-16T00:00:00Z", "trialPrice": 86}], "vAJizEosjuIsTXKA": [{"currencyCode": "Q4uWLCMgN7rU1yiW", "currencyNamespace": "EODovRwzU7QiANYI", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1971-09-14T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-09-02T00:00:00Z", "discountedPrice": 46, "expireAt": "1976-09-06T00:00:00Z", "price": 52, "purchaseAt": "1994-08-11T00:00:00Z", "trialPrice": 81}, {"currencyCode": "NPCCnVKYp3EQx9pS", "currencyNamespace": "ofiZZNcWBxK2ScBM", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1990-05-26T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1975-02-23T00:00:00Z", "discountedPrice": 82, "expireAt": "1987-08-31T00:00:00Z", "price": 85, "purchaseAt": "1977-11-10T00:00:00Z", "trialPrice": 47}, {"currencyCode": "RaYf8Chh5tiLsXIO", "currencyNamespace": "SE2JSDRlSX5uOgZ3", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1992-04-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-08-24T00:00:00Z", "discountedPrice": 72, "expireAt": "1979-05-23T00:00:00Z", "price": 16, "purchaseAt": "1999-08-30T00:00:00Z", "trialPrice": 29}]}}, {"itemIdentities": ["agSwSs0ORF2pLQCq", "PGUmF8pQCrEqdstm", "oPJurb0FVZK7sonu"], "itemIdentityType": "ITEM_SKU", "regionData": {"6e9VKi3lHZdnYzFY": [{"currencyCode": "EnOA6gFO3zfSvvmL", "currencyNamespace": "gxlU5MdUdF7gHdIf", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1972-11-14T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1972-10-31T00:00:00Z", "discountedPrice": 39, "expireAt": "1975-12-30T00:00:00Z", "price": 98, "purchaseAt": "1983-04-12T00:00:00Z", "trialPrice": 87}, {"currencyCode": "BrFwFIESxo8uFqKt", "currencyNamespace": "oZiVPtwECFgcQRsq", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1981-06-12T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1983-05-24T00:00:00Z", "discountedPrice": 3, "expireAt": "1975-05-05T00:00:00Z", "price": 1, "purchaseAt": "1989-10-22T00:00:00Z", "trialPrice": 31}, {"currencyCode": "gd7A1555BielNg6k", "currencyNamespace": "fRgfnBT7OdjPnywu", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1999-05-01T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1976-02-01T00:00:00Z", "discountedPrice": 72, "expireAt": "1980-09-11T00:00:00Z", "price": 83, "purchaseAt": "1992-01-05T00:00:00Z", "trialPrice": 11}], "5Jp6oxvvtB4aireJ": [{"currencyCode": "SZc7Cojp07DFR7Iv", "currencyNamespace": "EhnKAMSw1WGHPO22", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1985-11-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1997-05-25T00:00:00Z", "discountedPrice": 49, "expireAt": "1992-09-09T00:00:00Z", "price": 25, "purchaseAt": "1985-01-11T00:00:00Z", "trialPrice": 97}, {"currencyCode": "pItmTcMVUlRoYFks", "currencyNamespace": "2ULHooisOHhyiZyN", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1973-06-22T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1989-01-02T00:00:00Z", "discountedPrice": 4, "expireAt": "1972-08-13T00:00:00Z", "price": 31, "purchaseAt": "1988-02-03T00:00:00Z", "trialPrice": 7}, {"currencyCode": "PMwBjK11IFRybWjj", "currencyNamespace": "YkFvEHCnQ2BiPScm", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1978-06-19T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1981-12-12T00:00:00Z", "discountedPrice": 66, "expireAt": "1998-08-04T00:00:00Z", "price": 97, "purchaseAt": "1979-12-01T00:00:00Z", "trialPrice": 40}], "5Trcu36LS6o87DKP": [{"currencyCode": "LLTcjU87C2CAKbiD", "currencyNamespace": "5PxA5v9644D4d5jT", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1984-09-23T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1999-05-02T00:00:00Z", "discountedPrice": 6, "expireAt": "1975-12-01T00:00:00Z", "price": 14, "purchaseAt": "1983-08-07T00:00:00Z", "trialPrice": 36}, {"currencyCode": "BEz5T57ICJiWEPnZ", "currencyNamespace": "sQ3NsS8VgyzvujT8", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1986-01-01T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1983-10-29T00:00:00Z", "discountedPrice": 58, "expireAt": "1990-07-03T00:00:00Z", "price": 80, "purchaseAt": "1995-10-04T00:00:00Z", "trialPrice": 6}, {"currencyCode": "pMDZuDLXNscwbXgd", "currencyNamespace": "wQnMuReen3aYjhar", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1980-07-29T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1992-08-02T00:00:00Z", "discountedPrice": 87, "expireAt": "1973-05-04T00:00:00Z", "price": 84, "purchaseAt": "1972-03-12T00:00:00Z", "trialPrice": 3}]}}, {"itemIdentities": ["DSNS6hf28TvyyZjE", "MbPRNKUABS8cyK8S", "nSvsUGLqYJevKKJR"], "itemIdentityType": "ITEM_SKU", "regionData": {"gHuLJEAS7pSDlIS4": [{"currencyCode": "N3VRydtvWZZFDNIc", "currencyNamespace": "86TKj3grgVdqSpg9", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1978-08-24T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1975-07-12T00:00:00Z", "discountedPrice": 44, "expireAt": "1973-03-24T00:00:00Z", "price": 18, "purchaseAt": "1983-07-09T00:00:00Z", "trialPrice": 32}, {"currencyCode": "DQgdz6GmSzMPzB5Z", "currencyNamespace": "P4mdsjnGGtbn27LO", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1996-07-27T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-10-03T00:00:00Z", "discountedPrice": 50, "expireAt": "1988-10-19T00:00:00Z", "price": 22, "purchaseAt": "1980-12-22T00:00:00Z", "trialPrice": 48}, {"currencyCode": "bX8fkG3hcRbcSuSk", "currencyNamespace": "d72wzQJjmhy4f9F9", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1980-10-04T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1983-07-21T00:00:00Z", "discountedPrice": 67, "expireAt": "1977-09-03T00:00:00Z", "price": 59, "purchaseAt": "1976-09-01T00:00:00Z", "trialPrice": 73}], "DRW0KNwlKcveutOH": [{"currencyCode": "Z2aWSL11msU7Qpcp", "currencyNamespace": "kApFODOqz4FKRWcv", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1995-07-28T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1996-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1989-03-06T00:00:00Z", "price": 54, "purchaseAt": "1998-04-09T00:00:00Z", "trialPrice": 49}, {"currencyCode": "yxGcMcYyromMVFEa", "currencyNamespace": "TLz3hmDX1C9gHM8S", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1999-11-03T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1979-09-11T00:00:00Z", "discountedPrice": 65, "expireAt": "1975-01-01T00:00:00Z", "price": 75, "purchaseAt": "1999-03-30T00:00:00Z", "trialPrice": 92}, {"currencyCode": "lbCcD2bQLuFwHyfW", "currencyNamespace": "s9J4OjFm6OQMQgWL", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1973-04-14T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1985-11-23T00:00:00Z", "discountedPrice": 51, "expireAt": "1993-01-28T00:00:00Z", "price": 87, "purchaseAt": "1980-02-23T00:00:00Z", "trialPrice": 7}], "T37n6lgMV9tMXN2k": [{"currencyCode": "Dg7INFTJO4FUT152", "currencyNamespace": "zR0PBTEvM3TgMsAS", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1983-05-31T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1974-12-01T00:00:00Z", "discountedPrice": 50, "expireAt": "1991-11-04T00:00:00Z", "price": 54, "purchaseAt": "1987-10-23T00:00:00Z", "trialPrice": 23}, {"currencyCode": "XBfLq1zWLmtFhefM", "currencyNamespace": "qfbE0DZBwK4s4YGh", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1979-06-26T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1980-09-23T00:00:00Z", "discountedPrice": 59, "expireAt": "1984-02-08T00:00:00Z", "price": 98, "purchaseAt": "1972-07-05T00:00:00Z", "trialPrice": 85}, {"currencyCode": "sfzatv4JzfVNAJbS", "currencyNamespace": "LBzqs2u1EntDzkQL", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1995-12-02T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-09-27T00:00:00Z", "discountedPrice": 78, "expireAt": "1996-08-24T00:00:00Z", "price": 4, "purchaseAt": "1980-03-02T00:00:00Z", "trialPrice": 3}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'BulkUpdateRegionData' test.out

#- 139 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'HSWtyrOFmeGGIRRL' \
    'bsmgDO0TIQbgg12L' \
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
    'HWqVdQIiLCN04Qo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetItem' test.out

#- 142 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '{"appId": "9tjPCe7O061ScAQ7", "appType": "DEMO", "baseAppId": "bAgA4OlQUCJsDilW", "boothName": "hSc6XIxh1HqBg5Fh", "categoryPath": "Y2vclqnTbyZ7fYvm", "clazz": "iZxdNpmibPCLiJaH", "displayOrder": 91, "entitlementType": "DURABLE", "ext": {"QS3RD8Q6YcgyTtSO": {}, "U4FdUceGtntm6j0A": {}, "pyricmsku6ryZK7U": {}}, "features": ["KLhMA3DOG2TuIwxd", "K6goe9uJ8PAnT6lH", "om6RSj2xFFFrIQFW"], "flexible": false, "images": [{"as": "BtKDj9PgWnODMMsw", "caption": "us0ykKyOTFH9npo1", "height": 20, "imageUrl": "rVi62ITQp6NklXSU", "smallImageUrl": "YkHNYqepadIS0zRg", "width": 16}, {"as": "TMiQqOA7WiIi8k4T", "caption": "7A6suz0JPLhBV8H4", "height": 89, "imageUrl": "z3bo23SF3Xkwdkge", "smallImageUrl": "NE7pA2BmAcotg9A9", "width": 99}, {"as": "SdS49CybTerX6wW5", "caption": "HLYxM5DN6DJmnjBd", "height": 34, "imageUrl": "8wqc2OcvjggLVwAQ", "smallImageUrl": "MWoB0LkwHKKIT2D8", "width": 93}], "inventoryConfig": {"customAttributes": {"JKnP2TmDSwAt1UGN": {}, "ieMe0c6eA8xCvVNg": {}, "S0wUvETmRwwaH21x": {}}, "serverCustomAttributes": {"uey3fB1KN5EzSmB6": {}, "aO1JqypofIkM1Wvc": {}, "2CcOra4RXenU5naN": {}}, "slotUsed": 95}, "itemIds": ["TEBnzFuxHzrR3PiH", "yAFfiwIi9bI2X8C6", "xnSImJqwyGzE1BML"], "itemQty": {"JmTvUJIV0W2K8alZ": 1, "6tB2fqN6D76apW4C": 38, "7n72icTrg8RyI3bD": 56}, "itemType": "LOOTBOX", "listable": true, "localizations": {"GiLSqDVnEtbqHnY6": {"description": "D1Z2oKGmRbhR6rnS", "localExt": {"jFQf699gOqEWjr9T": {}, "9UhsGYJ3NLSVOdqF": {}, "xY9j8P8IFwNKh0Zn": {}}, "longDescription": "i7P6ZfRFkQolDEty", "title": "xyMGw4ZEIMYFaIEr"}, "69zjnPKVLZ59QuwB": {"description": "bW2xX96TmFiMrqZa", "localExt": {"ZSR4SAMIG5DRP307": {}, "xNIxMniv6VDtGhPQ": {}, "u5IgTlvO4wr8D7AP": {}}, "longDescription": "HhihwdNSBKpqJ8V1", "title": "kQHisGldXgqa99UN"}, "yHIlnrLOesUoAwwC": {"description": "O2c7aEAHcpdx91Ua", "localExt": {"bvNvRaUrUqTcFsGX": {}, "xjR7vTeNdfPVWmEd": {}, "VFXX02sJsXg7AKOu": {}}, "longDescription": "2Xk8T0sqdmD20rol", "title": "fU1yEokwoBSfRPMd"}}, "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 20, "duration": 4, "endDate": "1980-06-15T00:00:00Z", "itemId": "e2wwruEu9pKFWxMr", "itemSku": "OrO7m2fUVM4vgvN5", "itemType": "a9nlua2qF5WhoaEp"}, {"count": 3, "duration": 36, "endDate": "1990-09-30T00:00:00Z", "itemId": "KCe8F6OE3PKy2vHH", "itemSku": "6XrTj3i1nC0J9A8D", "itemType": "UtbT9Nimqnzt0awi"}, {"count": 52, "duration": 50, "endDate": "1972-08-13T00:00:00Z", "itemId": "aXFFkKf2QcbDNp9w", "itemSku": "VgloPqugy2zhY3Cj", "itemType": "OqLPkNLoeCULsEpt"}], "name": "E9wdsebmIkQbE3nP", "odds": 0.026975020550963014, "type": "PROBABILITY_GROUP", "weight": 99}, {"lootBoxItems": [{"count": 80, "duration": 8, "endDate": "1997-06-10T00:00:00Z", "itemId": "QJL8jGfdMvM0zEHm", "itemSku": "Ths6Oydk9jSSY0aq", "itemType": "jjeExTo07XGD7r4d"}, {"count": 43, "duration": 45, "endDate": "1981-11-09T00:00:00Z", "itemId": "uyipF1FB9RNF3G6s", "itemSku": "PweMmOIXU6IcFkTW", "itemType": "MTXNI4WIT2qYutqi"}, {"count": 17, "duration": 31, "endDate": "1981-01-13T00:00:00Z", "itemId": "IKSSMR4zJKYxouzc", "itemSku": "D0pPXkdTrLYN48A5", "itemType": "DLkL19tXrv2bC14h"}], "name": "fBeKISP0coyLHG52", "odds": 0.17643147886438215, "type": "PROBABILITY_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 87, "duration": 62, "endDate": "1988-10-25T00:00:00Z", "itemId": "uKeTQQXDNtjgypGg", "itemSku": "BtsGOxHfW3WBHUGC", "itemType": "PEvc97uDKDBhngmX"}, {"count": 31, "duration": 80, "endDate": "1994-12-30T00:00:00Z", "itemId": "PUEwP8KagnEKkfRn", "itemSku": "TAD7nNuqrknaj1Fk", "itemType": "s8OhmWshFK5hyfwq"}, {"count": 21, "duration": 99, "endDate": "1983-07-23T00:00:00Z", "itemId": "FeK2HSaUyXEOQUwX", "itemSku": "DX8MGlijaR3VVk7n", "itemType": "D09WBTm7Hy1AvjH8"}], "name": "TO5OIzshGgQ4Thug", "odds": 0.6833424791919306, "type": "REWARD_GROUP", "weight": 14}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 24, "name": "xYKZWUVW9NyUUdkr", "optionBoxConfig": {"boxItems": [{"count": 74, "duration": 35, "endDate": "1985-08-24T00:00:00Z", "itemId": "FIkcZk3UEaPstaXt", "itemSku": "LCGf6Pjb7W28XF9e", "itemType": "X2LXwaZwDM1CYDLm"}, {"count": 1, "duration": 35, "endDate": "1992-08-26T00:00:00Z", "itemId": "019aVHHRLK0fv936", "itemSku": "lSL3gAK6QqFlWlAR", "itemType": "1frDQIVwmefiYRyt"}, {"count": 98, "duration": 11, "endDate": "1995-06-05T00:00:00Z", "itemId": "01GcykfqRyXIVnis", "itemSku": "4SKjpYMZV5AVm0vO", "itemType": "Tpy2xyajHMUnKflm"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 80, "graceDays": 32}, "regionData": {"l1Bu8GE15JzEvFlz": [{"currencyCode": "pDnYuSqynNlJACpH", "currencyNamespace": "VndrAR7z9J0bNuep", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1989-05-30T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1986-02-25T00:00:00Z", "expireAt": "1990-03-20T00:00:00Z", "price": 51, "purchaseAt": "1980-04-26T00:00:00Z", "trialPrice": 36}, {"currencyCode": "w7MvJGnWbcVqeQS6", "currencyNamespace": "8NcKrOSqAvumNXdN", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1986-05-13T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1985-11-24T00:00:00Z", "expireAt": "1972-02-17T00:00:00Z", "price": 14, "purchaseAt": "1975-01-23T00:00:00Z", "trialPrice": 69}, {"currencyCode": "P5jLY1KxbFbyzOeP", "currencyNamespace": "aXR3ub0i4catfNOl", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1977-12-19T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-12-13T00:00:00Z", "expireAt": "1995-02-28T00:00:00Z", "price": 23, "purchaseAt": "1995-03-20T00:00:00Z", "trialPrice": 12}], "yfpfTo2MX3YvlKKT": [{"currencyCode": "kjhbq0eRvkBW48O7", "currencyNamespace": "7tNIBYTFfPUrNUOX", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1972-07-10T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1982-06-27T00:00:00Z", "expireAt": "1978-01-14T00:00:00Z", "price": 7, "purchaseAt": "1981-03-02T00:00:00Z", "trialPrice": 9}, {"currencyCode": "IZ4eMnCDQFCYcyYC", "currencyNamespace": "i2g6s9FQKCfcu923", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1980-01-11T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1974-03-23T00:00:00Z", "expireAt": "1981-06-12T00:00:00Z", "price": 98, "purchaseAt": "1981-12-25T00:00:00Z", "trialPrice": 0}, {"currencyCode": "UIv3uIM3CoS6Jahc", "currencyNamespace": "K1Pr6BT8bcW21yKV", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1994-02-08T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1974-04-02T00:00:00Z", "expireAt": "1972-02-07T00:00:00Z", "price": 60, "purchaseAt": "1971-10-12T00:00:00Z", "trialPrice": 10}], "pRn2HgPRevBMjemp": [{"currencyCode": "E90i47qjDQAAvYZZ", "currencyNamespace": "ABKOA0L11TgHUfOD", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1976-01-25T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1997-11-04T00:00:00Z", "expireAt": "1993-04-05T00:00:00Z", "price": 96, "purchaseAt": "1984-11-22T00:00:00Z", "trialPrice": 3}, {"currencyCode": "i4NDzBP7mmM4ZrXj", "currencyNamespace": "amc3OX9fjEzscuFP", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1998-06-02T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1991-02-16T00:00:00Z", "expireAt": "1996-01-09T00:00:00Z", "price": 4, "purchaseAt": "1989-04-19T00:00:00Z", "trialPrice": 100}, {"currencyCode": "1xyB1MxbBG0waudr", "currencyNamespace": "udTuIy3VLkd3YGg9", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1984-02-28T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1998-01-18T00:00:00Z", "expireAt": "1981-08-25T00:00:00Z", "price": 23, "purchaseAt": "1985-06-18T00:00:00Z", "trialPrice": 13}]}, "saleConfig": {"currencyCode": "QOBuTuYNR4hzPkGO", "price": 43}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "bL13OgHZysyny091", "stackable": false, "status": "ACTIVE", "tags": ["k3MBzfrSZGlXPukj", "7q5MjU2f4833bcUo", "BfWLjRXOqaoDBgsP"], "targetCurrencyCode": "HcNg0Bapd2WF3ACW", "targetNamespace": "SPCOIejZfSnIavou", "thumbnailUrl": "uFpqcq4Gd9fk7fhp", "useCount": 43}' \
    'GNMEX4Ps5vorNX6W' \
    '3h8ItD6AFXbQvGbK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdateItem' test.out

#- 143 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'VlE5VulHAZZ2SKo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteItem' test.out

#- 144 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '{"count": 59, "orderNo": "SCgGhhAxzoBKOqmw"}' \
    'gAOXAylHS3htDNYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AcquireItem' test.out

#- 145 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'Ra6jU8OLKdFhRNsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetApp' test.out

#- 146 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '{"carousel": [{"alt": "dEfL1i3SL7JlQ0Wm", "previewUrl": "wgELy9cxgDaEUFiM", "thumbnailUrl": "TIV4pb5hZyPikzEm", "type": "image", "url": "4YMs1JCrpnpPPUyy", "videoSource": "vimeo"}, {"alt": "ph4Z0KsCWhJPpmpj", "previewUrl": "ibu6WMYMScWAzVVd", "thumbnailUrl": "QZznMUlqj2djHHFF", "type": "video", "url": "xJPvHewpv9IeC6LA", "videoSource": "vimeo"}, {"alt": "QG5zPNH4eYMWbtvk", "previewUrl": "7OoIixOGXwFzXjpS", "thumbnailUrl": "LyjqaJnmx4p5ShR3", "type": "image", "url": "iSBuE8WdxjHSrIco", "videoSource": "youtube"}], "developer": "qK7yxoQHX7XexjvW", "forumUrl": "4rZ57Ra4Wlon8Zze", "genres": ["Simulation", "Adventure", "Simulation"], "localizations": {"abbmT81jfik6ShLj": {"announcement": "Jbf174MCR5ZpvlWX", "slogan": "RfEoUuNmQrq6p7Wr"}, "YOBpl77LsKN46XLN": {"announcement": "fQ0SXyMTygZRBzJU", "slogan": "pXr5ZkwYPLnvikBn"}, "p1ILBujZh8S62GO3": {"announcement": "2C73RnfIDxg4Dkmn", "slogan": "JtxZgIUMxGfQHmg4"}}, "platformRequirements": {"I1PJybUmpLmiuZGk": [{"additionals": "2Gg0Um3ITROznZA6", "directXVersion": "EVEXEqkFFyGp6Xhg", "diskSpace": "I2SuEyr4hactAHdK", "graphics": "0X7OZKu6MmVxEFpt", "label": "fSFU0F8qXSfSkxhr", "osVersion": "HhjWxkDQUTY21m19", "processor": "Eiqpyu9P7Yh6ERWy", "ram": "edt6rkPxW72ya2ru", "soundCard": "QcikSHwHPfyNRUhM"}, {"additionals": "XX7FiB3X634iuF8p", "directXVersion": "qhqsqRF4kqMbz4sx", "diskSpace": "PUl2WbQNFNB2IE43", "graphics": "MBCGNyjqnDuWD1qi", "label": "ZzXQxSDgH9L20T6f", "osVersion": "VxvK30nHMYxf8xOR", "processor": "1DEgYR3iOynLLtqS", "ram": "maHvUExz8o7TwcWL", "soundCard": "7fNlyGuj0EkM7M8G"}, {"additionals": "78KZj2jWyKAzXYP9", "directXVersion": "kO0rmonOpgtONmMv", "diskSpace": "rDH4IXc6tn8XayBI", "graphics": "734jCTSnRqHTWC4N", "label": "CbltixkXwXO0XemK", "osVersion": "HsUC5w7fmzF80bbG", "processor": "hU1pjVwMsLdJrt5F", "ram": "nAIz4y9yy462Mnwc", "soundCard": "hld3LWFhC1kBUvsU"}], "cnOXhewthszMsYOE": [{"additionals": "mQiF1OsXfJG3psjI", "directXVersion": "BzjaFmN0MInvVPAP", "diskSpace": "EovHVVguusvVUxkC", "graphics": "G4IGPYHaRvV3JGi5", "label": "l0G5NBtXVTXK1Jdo", "osVersion": "ClQQGLneKl3iXOvS", "processor": "GgZzuoTiOgT4AtBZ", "ram": "JsMBPDcUuWC1NgHa", "soundCard": "xQlxs2MPGkLeY5Ce"}, {"additionals": "dGPB0iJF96NG7vOD", "directXVersion": "PmfnV8dOr38jFYjF", "diskSpace": "RDj47EZTCCwz8yaw", "graphics": "NImZdPzt9koNSL3v", "label": "qGgJOWkI0sHphIU3", "osVersion": "KaP7nk9iEaqudy3a", "processor": "Yo02pzHannSLeEYv", "ram": "uciynwWb01HLrp6O", "soundCard": "W9Y7FIIEJMm4Kizs"}, {"additionals": "3NRbyYMyWPHp8Npr", "directXVersion": "eWtVtRQu0coThNxw", "diskSpace": "nnpoM2KSoHlpDFIm", "graphics": "JNovlZq1O6RDUgil", "label": "QHCts6SUNxUWIGSk", "osVersion": "xjKL3EiP6WeXWf3d", "processor": "BAVfIM2oLFaTIhv5", "ram": "XrQvTAdisxP0Dyxq", "soundCard": "SYeCl4gEZgIMDALa"}], "4nsITUeFKNh8kgmM": [{"additionals": "jBxD74LujtGQD9sT", "directXVersion": "5LHkWjFIo6VbU9gw", "diskSpace": "MgZPR9Q5Lstog0eh", "graphics": "jEmcjJzkf7rNu3ZA", "label": "RHXZ5yuJsfxI3zuY", "osVersion": "wCYQw4Rr3lmeyijw", "processor": "D3pYZEoKfBV4CX15", "ram": "snBgmflygDW6ab0R", "soundCard": "oZeMIFYmEraqGPOC"}, {"additionals": "MPGtRg0HGzSGs8nB", "directXVersion": "UQVBsF03D5vkAkZ8", "diskSpace": "CS09fFrbdregZfA6", "graphics": "pBIXqoaoYoHcrIwc", "label": "6qkDf3ciuVB7vM6w", "osVersion": "Sqwns2XJfUl3uiEO", "processor": "9E03Jk5kBnuo4jR1", "ram": "HYLJjnydxAGgqH3y", "soundCard": "tkroZ2tfFjNF99Vi"}, {"additionals": "xS5Es3u4km3iKiNL", "directXVersion": "RNa01SihgZby9mBd", "diskSpace": "GrJY5J0e9jWcVTCN", "graphics": "xjdv8GxhJoB4lAkb", "label": "m1Abh9QxLBfhpOp8", "osVersion": "UlDmFYNBSDEgsUMi", "processor": "kj8NQNDlhAhwAc8m", "ram": "PZRllengCdfKGCBZ", "soundCard": "MAbJnqDKuBGWmZti"}]}, "platforms": ["MacOS", "MacOS", "Windows"], "players": ["Multi", "LocalCoop", "Single"], "primaryGenre": "Indie", "publisher": "7dNzDBzVmGSholl8", "releaseDate": "1981-10-06T00:00:00Z", "websiteUrl": "D1hpBtpd4eLc1PpH"}' \
    'JmrL7AZ1MKcHBB1A' \
    'fySUMZOWhtQEriyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateApp' test.out

#- 147 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'LkuGKVQWNOUAh5VX' \
    'a79702d31zPHg6tX' \
    --body '{"featuresToCheck": ["DLC", "REWARD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DisableItem' test.out

#- 148 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'Gmv1XM6sr8tSaA0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetItemDynamicData' test.out

#- 149 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '0OCIEQYU4pHU7Kjr' \
    'z4HAGIJOSxoJdIIw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'EnableItem' test.out

#- 150 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '70J2JeqNTxshoZJn' \
    'sAkX5sxny0WLYMNb' \
    '0QsxPlx64IQUpSTo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'FeatureItem' test.out

#- 151 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'D0bb0SXZUy9H0C21' \
    '3rnYfZ8c8zURCckW' \
    'WVlTYAkogbV1bNoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DefeatureItem' test.out

#- 152 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'JUhL5p56dnYHk1iL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetLocaleItem' test.out

#- 153 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 59, "code": "AXL33WCBnIHoRNWT", "comparison": "isLessThan", "name": "vtorwrF6HtcJbqjC", "predicateType": "SeasonPassPredicate", "value": "kEvdWNk2SHYsva1j", "values": ["sCVLjw2QHwjLRnoG", "xE4QuZeQkRBv8hh8", "k545vt1Vu7dsmzSU"]}, {"anyOf": 37, "code": "CTYPYD0WHJ0JzaJp", "comparison": "isGreaterThanOrEqual", "name": "5Z6en6c5d620U9ad", "predicateType": "EntitlementPredicate", "value": "XsZoyeqN5ouEcXRh", "values": ["J96sJUnv5BwzKyxJ", "WbROnhOUSnN2KpfX", "qBCaof96NNQPxPe1"]}, {"anyOf": 69, "code": "9CFiRmbELIzawfXv", "comparison": "isLessThan", "name": "4kmPIGCrJozIio8n", "predicateType": "EntitlementPredicate", "value": "a64x5pJSHZCzyWKP", "values": ["zdKk8FlVcy0hcEMF", "30KusyvaitTsWtL2", "AAtjEKW31SlSm20D"]}]}, {"operator": "and", "predicates": [{"anyOf": 72, "code": "n8SAQhtiWA2DHIoc", "comparison": "excludes", "name": "R98KOabgb0l3UURl", "predicateType": "SeasonTierPredicate", "value": "RXrx8aUB1xXuK2Mw", "values": ["r0UUiy5jm1w2g65J", "rRJukMTkO00KLgdd", "kaoPuBsuSb0LePf5"]}, {"anyOf": 2, "code": "linTPbY1473RFPlw", "comparison": "isGreaterThanOrEqual", "name": "j8k5KSFtbEoEr5Lq", "predicateType": "EntitlementPredicate", "value": "RRnKy17sBYlx7rzE", "values": ["m3km2jjNrqEmuEf6", "JRpqZEUH2Rr5lkfH", "jqVCMpunzeSPkf8Y"]}, {"anyOf": 90, "code": "ksiqVvcGZxTP7pdu", "comparison": "isGreaterThanOrEqual", "name": "u5Qlf4KGo0N4g7UW", "predicateType": "SeasonTierPredicate", "value": "zPsMd90Jrkh4kaHS", "values": ["pxt9CW0WYKxAYERG", "9JzR7Bat3pdbjxfK", "PWWPobC0FiwNmp1e"]}]}, {"operator": "and", "predicates": [{"anyOf": 46, "code": "w21Z3nE04Cbkpn0y", "comparison": "isGreaterThanOrEqual", "name": "aL9f0QyO5YXVhTia", "predicateType": "StatisticCodePredicate", "value": "wLS7dIB0aGjtNbry", "values": ["AzKbyHphqwB5Iehz", "vCN2N47HbR5lY76l", "vmkemouOe0GhKNxa"]}, {"anyOf": 39, "code": "cYrXKMnNZIm0ooHC", "comparison": "isGreaterThan", "name": "m1xIvCywA95KVla3", "predicateType": "SeasonPassPredicate", "value": "CTgTkPtcVfRHox2l", "values": ["Jjo1I9gluGDrbO6C", "oGGaGBbMIhMZL5o3", "htHW6Gx9FaoDIwGJ"]}, {"anyOf": 39, "code": "pRyNwb9JgVZofu7l", "comparison": "isLessThan", "name": "H4cyuoR5YkRhK1PG", "predicateType": "EntitlementPredicate", "value": "s7GKf2LOlVbEWajK", "values": ["Ur3rx7Sdt80ugFtH", "dahOY2goEK35CZu7", "5gSuRJLGkijLEJPC"]}]}]}}' \
    'WE18eU5rtQUWRLvu' \
    '3WEfwBn40sJji4hV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateItemPurchaseCondition' test.out

#- 154 QueryItemReferences
$PYTHON -m $MODULE 'platform-query-item-references' \
    'E3lKNQy2rJxiPPjJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryItemReferences' test.out

#- 155 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '{"orderNo": "k44WHDDNDVgExcmm"}' \
    '4fkoNMVNk6z4A3FI' \
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
    '{"description": "60uUrVMjqwLfyh5U", "name": "UBSKyenhZ56H3l3j", "status": "ACTIVE", "tags": ["gPPfiJZCSkIQI1h6", "OjoUY4QXecerXxPo", "dPokDUivfNI3KdSI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateKeyGroup' test.out

#- 158 GetKeyGroupByBoothName
eval_tap 0 158 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 159 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'bTi8dxU11tPBlMCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetKeyGroup' test.out

#- 160 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '{"description": "6SSpxt0aZZr3SbJH", "name": "kTstBGTm2OFHVEoR", "status": "ACTIVE", "tags": ["wZgpPXxtcOPw0UBm", "7wccELVo9RYTquwI", "rGgk3eqgOf7WwNZW"]}' \
    'yYuM3y1TjdcOVw94' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateKeyGroup' test.out

#- 161 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'gqQYOWGw7LSW6Kb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetKeyGroupDynamic' test.out

#- 162 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'otdVBjacY5doQGhc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ListKeys' test.out

#- 163 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '8zSCeJ4Q8PHY6vGz' \
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
    'NfPWTQ1pJMwPVAUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetOrder' test.out

#- 167 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '{"description": "YFOg7TplEkOZy73b"}' \
    'RBtWCJCJuzB1jbh9' \
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
    '{"domains": ["5vj0V2ccQ60lub80", "7E0PGhia3QvaFIVf", "HyAiTeDDuvgKTfrZ"]}' \
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
    '{"currencyCode": "6TfrQrFIsYsZ1dTn", "currencyNamespace": "2pA64FJuEPymbIAw", "customParameters": {"DAyNBagGD33WMVj7": {}, "bfdfxyqKQ4YNnTTw": {}, "ZeuX7f9iY3skbk25": {}}, "description": "jLP6zS6a5C6awft8", "extOrderNo": "NPNJCopJg7IJTeOW", "extUserId": "oVtcblaKlhxMNx5h", "itemType": "CODE", "language": "OMG_DhUF", "metadata": {"e4YleMg5NGs1Pmz6": "Amebh0FbOWyhAnMP", "6BdBw6d4UOI7Tr9N": "HcXeEWIpyYx9wOuN", "quv2qkqRR9Nwd8Or": "gT5HMaelKs3hdNcC"}, "notifyUrl": "PnrmZDNctQe0IM58", "omitNotification": false, "platform": "qYdNvmRITEU7usHk", "price": 27, "recurringPaymentOrderNo": "sGfQVawbSlqUfFfZ", "region": "ytHO4xrQvXR88ArN", "returnUrl": "PkMbfhbrTb4ZPG4R", "sandbox": false, "sku": "dqhreKq9si5LTZGj", "subscriptionId": "fJI0GRPR9FWa3sAl", "targetNamespace": "KnzZ5Joq98jWszWZ", "targetUserId": "xmbhMr5aDNyd7VDh", "title": "ThmXAsBwC4MOmSF5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CreatePaymentOrderByDedicated' test.out

#- 175 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'ZPpYXTbgh3hVKyU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ListExtOrderNoByExtTxId' test.out

#- 176 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '7N87zJHVwE86VYnu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetPaymentOrder' test.out

#- 177 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '{"extTxId": "oHevgj9ralh2tjIE", "paymentMethod": "DpjLJD7E0dh077pX", "paymentProvider": "ADYEN"}' \
    'waIIRxeTkl27M6Ag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'ChargePaymentOrder' test.out

#- 178 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '{"description": "gzKZ3nqWutrpjBOn"}' \
    'BeqwBnFdy01mQjVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RefundPaymentOrderByDedicated' test.out

#- 179 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '{"amount": 24, "currencyCode": "bg0TSRxhI4XnmuQN", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 97, "vat": 74}' \
    'xNoFLwY2aYPpdsN5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'SimulatePaymentOrderNotification' test.out

#- 180 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '5f9R3a5ZvIk8F6ff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetPaymentOrderChargeStatus' test.out

#- 181 GetPsnEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "aPP2hJSGfW6ap0ws", "serviceLabel": 7}' \
    'Rkf5RxDdVVe0VvPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetPsnEntitlementOwnership' test.out

#- 182 GetXboxEntitlementOwnership
$PYTHON -m $MODULE 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "en8keuXuWuitb85N", "sandboxId": "s7DhXCIneqddStnB"}' \
    'NigsnBpu24ga0d3N' \
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
    '{"allowedPlatformOrigins": ["GooglePlay", "Steam", "Other"]}' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdatePlatformEntitlementConfig' test.out

#- 185 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPlatformWalletConfig' test.out

#- 186 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["GooglePlay", "Twitch", "Other"]}' \
    'Steam' \
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
    '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    '{"appConfig": {"appName": "iStlzCMldcic4UcT"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "X6gPHT29wkZwM8cv"}, "extendType": "APP"}' \
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
    '{"description": "BTADJQdJJb27jRm1", "eventTopic": "nyjO60S3gf5tl2wH", "maxAwarded": 75, "maxAwardedPerUser": 85, "namespaceExpression": "p1L42H1n3ZvUrBoq", "rewardCode": "K16btU6SoaoiAtMg", "rewardConditions": [{"condition": "NN8B4oo9jFmBqiyi", "conditionName": "cQHvr1zREqWwsQax", "eventName": "bdG9IxEoxcgOEmGQ", "rewardItems": [{"duration": 32, "endDate": "1978-07-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "N4HM3v5wAiimBQXC", "quantity": 47, "sku": "nMQUFaZF74RbeEi4"}, {"duration": 99, "endDate": "1994-08-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ntBdOLVnsl61rzqS", "quantity": 60, "sku": "8j3taWbShXMN0MRN"}, {"duration": 22, "endDate": "1977-11-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "X09nQEwFSce6VsIs", "quantity": 91, "sku": "FNiFC0HSIZAGhHJl"}]}, {"condition": "yMBkbUPi2FDgx1gJ", "conditionName": "ONPjy1ei7AZBrLdM", "eventName": "JG912CJx1H9kC6Lz", "rewardItems": [{"duration": 64, "endDate": "1971-05-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "IhCNJqtCtGvxKwuL", "quantity": 28, "sku": "MuhHXzy6WjNeNYuV"}, {"duration": 100, "endDate": "1996-05-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qxrNDhsaw4vbDPKG", "quantity": 95, "sku": "aUuCw1ys0BxLbuju"}, {"duration": 21, "endDate": "1982-04-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EJUvl8k6CNRAfp1s", "quantity": 39, "sku": "1wulz8cb64KjGDHo"}]}, {"condition": "lxRGH5sQmA6XL9p8", "conditionName": "3Led5r4J7MEwKxtP", "eventName": "0SkagDcL89Pjvtwa", "rewardItems": [{"duration": 96, "endDate": "1999-08-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "i2fDyXlYJu8bIkkF", "quantity": 14, "sku": "6WV5MHuvBu2QQOXQ"}, {"duration": 1, "endDate": "1979-06-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "c9di8JeefXJ2PdIo", "quantity": 69, "sku": "TCIEKHYwj85RIJjl"}, {"duration": 86, "endDate": "1977-08-10T00:00:00Z", "identityType": "ITEM_ID", "itemId": "k4T5By0AqALCR39R", "quantity": 68, "sku": "HL5PE9RVZONAcvKX"}]}], "userIdExpression": "L23ppvor8grcvFvY"}' \
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
    'OEFAR7ULC1He2xJm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetReward' test.out

#- 202 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '{"description": "IQ7lG3SSfJb7YC46", "eventTopic": "l63YRc0T3d9XaFEW", "maxAwarded": 54, "maxAwardedPerUser": 40, "namespaceExpression": "XB1SrgLn5lUQ3Mt9", "rewardCode": "iye7Sb3gSolD6u7w", "rewardConditions": [{"condition": "IciVVHoFtt4AP9G3", "conditionName": "HyBugfReiDLdSTRm", "eventName": "ElGhVQf227V7ADaQ", "rewardItems": [{"duration": 70, "endDate": "1971-06-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "78b3DT7qRYPx0W6c", "quantity": 20, "sku": "zOdGXLsEc8XzmjXX"}, {"duration": 39, "endDate": "1972-06-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MlaBkq9QHEb66Bo3", "quantity": 54, "sku": "TfEEm2g8JpfOhv1d"}, {"duration": 64, "endDate": "1972-04-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OxnwerZoIJ2JMtHA", "quantity": 61, "sku": "0DPn1CZrBaO9y4CH"}]}, {"condition": "HaydtaKJNujTvCDw", "conditionName": "yDu1QGAcJRAK1mgN", "eventName": "t0pudyASz9qbHEsb", "rewardItems": [{"duration": 14, "endDate": "1979-06-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Nb6qoNGzjQQDw2Sc", "quantity": 3, "sku": "DTbergyuPtRgn6fW"}, {"duration": 78, "endDate": "1971-09-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YcLQEocUfUPAI2O4", "quantity": 49, "sku": "5DUdBvhgsfcLURAH"}, {"duration": 33, "endDate": "1991-03-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6Rjkt9zWkx2SjE4M", "quantity": 79, "sku": "KYCuqx8xzh9bTsHG"}]}, {"condition": "m5hk6Ypn8KsMKfuA", "conditionName": "RcHovGUZSzWfq3hq", "eventName": "ssnqUPIJabCPMhqO", "rewardItems": [{"duration": 10, "endDate": "1988-08-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Xc5LH8xN38dVbdD5", "quantity": 77, "sku": "kmfVW93ZW1tXAOpK"}, {"duration": 17, "endDate": "1994-02-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qOSZxwOb5jkz9ihT", "quantity": 9, "sku": "GbEQA6nI1VhgTvfz"}, {"duration": 45, "endDate": "1981-02-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "gRZntMhunn3jSCD2", "quantity": 53, "sku": "aA57kR2ACNzI10tZ"}]}], "userIdExpression": "r3AjmwxrpjfgamOk"}' \
    'a0iwQFwqJrWlE1xE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UpdateReward' test.out

#- 203 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '0AgbtqawrlckTguo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DeleteReward' test.out

#- 204 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'tHZZnBkb1WomHQ23' \
    --body '{"payload": {"RrmGI0fa4tSghREo": {}, "TAvCltzrUTJgBjWw": {}, "ZMcxIcmhutMHEeUD": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CheckEventCondition' test.out

#- 205 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '{"conditionName": "IyZ6bUl6Q4DAwzeZ", "userId": "S20lWbIy7iWsAEY3"}' \
    'T2YDXuJSzkSZfZ5d' \
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
    '{"active": true, "displayOrder": 20, "endDate": "1975-12-02T00:00:00Z", "ext": {"jZETizaQixMgpWQ9": {}, "PgUcB3N69aWeqMy8": {}, "NAiT9jmCgwDPgvbh": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 79, "itemCount": 59, "rule": "LOOP"}, "items": [{"id": "pS3K4kKGKct8SZQK", "sku": "7TEK4sZzj7oPP3Oe"}, {"id": "ZVILEaXbHnhR8gT3", "sku": "if17nsndhy0Gtga4"}, {"id": "xRRNit3ApyAvkVtA", "sku": "8b9zvOaiSMHjVciA"}], "localizations": {"VrPuzKV1Wj7J3Qrg": {"description": "nhZMehNOncXNM18Z", "localExt": {"iBLaa5iN5b6ODd1k": {}, "j4Qj6RS5aO256cet": {}, "eBSz425Kp2PGW8gp": {}}, "longDescription": "Xu2mBdRvF84eD5m0", "title": "2245YlrGlfgrzLif"}, "ZvRPXjiYCPM52HK8": {"description": "ASyze4T9TmQupOzu", "localExt": {"aRV8Vw1OuyVC7JcK": {}, "5UdheuW7HOMooXzm": {}, "W321H7CGe7BlGbNT": {}}, "longDescription": "tvAEsQs0WkD6Y555", "title": "p9oqb5MeMGL8kITG"}, "mF087BWKC6wzHgwF": {"description": "qS6c2YCA1r312BKD", "localExt": {"vA3YyGsBgTJCc673": {}, "4MnrbjAM32RlQ3Wp": {}, "g0XNZCsESCHRPA5O": {}}, "longDescription": "QX8twQrDu49JFXjP", "title": "c1tJBaHYTZ2IdgUY"}}, "name": "mmt7HXJCUjwNMnmr", "rotationType": "CUSTOM", "startDate": "1985-12-22T00:00:00Z", "viewId": "5EiqQhvZmCSswSPG"}' \
    'cfasR2Nrrm0JBGkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'CreateSection' test.out

#- 208 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '1hNjHr2icYZYjakK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'PurgeExpiredSection' test.out

#- 209 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'tgPfJHbuwF3aZQrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetSection' test.out

#- 210 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '{"active": false, "displayOrder": 51, "endDate": "1985-02-27T00:00:00Z", "ext": {"pnVjbpotD8HTOOdv": {}, "A4UhdTY2DNsFuGcD": {}, "5vraJ3WftgZ43r4Z": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 3, "itemCount": 15, "rule": "LOOP"}, "items": [{"id": "dCMrHgpPD12BS4Q8", "sku": "u6QqK4CeZXmSBfgr"}, {"id": "JcwR3qktAdH94tzi", "sku": "EpGVXsUvez1lbena"}, {"id": "gh9kCPNSZTIlkM5I", "sku": "YJnbFprRWLjHPiPq"}], "localizations": {"vMMmYJeKvshwdE9X": {"description": "uQ8gykJm5GMKtZSn", "localExt": {"g8Oi6TDpSGwc7wXi": {}, "eEOkn4KNYWbvsmts": {}, "OVvpKYJyOQGUiqcJ": {}}, "longDescription": "2Jldy73ukTxjfHXQ", "title": "QVmxHmCVmuzoO2qe"}, "p49tDHFl18cQlJCg": {"description": "KFmN851YX8ylpv3h", "localExt": {"DDLL1n4On03mToMh": {}, "BjPD6aztTyMQghPW": {}, "OOAzTmCVFEHDMT1e": {}}, "longDescription": "DVbcvyxtTxuptcOY", "title": "STj2AWA5f61ztkSp"}, "Gmf8BXosNylCwcf2": {"description": "iVxv9QtivQqeRyPo", "localExt": {"rhTuFn3W0qApZ98a": {}, "9g9AjLDQL5jZbyjC": {}, "nTkYE0HYHfBc64zD": {}}, "longDescription": "QawQPbbbHLcaHmXR", "title": "dPvQLVuKpiiZ4Imo"}}, "name": "gp7RKEcLehyAowu7", "rotationType": "NONE", "startDate": "1978-08-19T00:00:00Z", "viewId": "qayJJtW8sqkuIBd1"}' \
    'NrGWPVvOhMTdfTjL' \
    'VxzjyQsgv5n6Vn7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'UpdateSection' test.out

#- 211 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'iakc1Rzb4MCHH4aA' \
    'THwPTM0LfcjvOko7' \
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
    '{"defaultLanguage": "332ZZa1YfuaQ7gPg", "defaultRegion": "iz2EBME5ikH5iUT9", "description": "GB4bGcYzy0T6Q891", "supportedLanguages": ["55mM6RsYxtVcgA1q", "0sR85DcnV5fUvb2O", "K8scK4MyIy9F8aBX"], "supportedRegions": ["zn8z72hf4D4NOpbU", "DnyVmYotZCA9LADb", "jj6viKPQxoVP77Ru"], "title": "EzCRLrZmVBFc2P68"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'CreateStore' test.out

#- 214 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'ITEM' \
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
    '{"catalogType": "VIEW", "fieldsToBeIncluded": ["6oIWMnk88GXMrS82", "vN0N2236tI7v0x9S", "t2EFfU2FbyIXierP"], "idsToBeExported": ["r2qLKBXRYt7v7Wfg", "2omS11YyIWGPc92P", "cmK9zTgGQs1FIKxC"], "storeId": "XUhNdJ4cK7rz2VPJ"}' \
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
    '8AZ9i1ml0sbgQ5zP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetStore' test.out

#- 223 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '{"defaultLanguage": "Zbllwvt3TjGezRRU", "defaultRegion": "jCNiQauO5Cfja0qW", "description": "oqWrZJAMVQaCd4Ug", "supportedLanguages": ["SRsFc8FKz1j1HfaN", "k1P4hC8wgvaTIntj", "0rekmCKMOHEhe6ap"], "supportedRegions": ["nthJsQpzHxEsiEsZ", "H3UVmVcOxU0GsP6o", "BsZy1nIeavdWM4Ui"], "title": "M8xE2iHgKDtYUBWq"}' \
    '18cbnbAjszS84wsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'UpdateStore' test.out

#- 224 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'H451BnJRGwBPZ82M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'DeleteStore' test.out

#- 225 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'L7i85xAiG2FleXiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'QueryChanges' test.out

#- 226 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'NPeymXgMK8gaxYcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublishAll' test.out

#- 227 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'DZjCrklUdoPRrSlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublishSelected' test.out

#- 228 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'OoEllCitDiZDBLqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'SelectAllRecords' test.out

#- 229 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'miE0hD2A6L9zZJpI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'SelectAllRecordsByCriteria' test.out

#- 230 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '7J4njh6wMyuNtA5m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetStatistic' test.out

#- 231 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'MerAvf2EK1rsQWD1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UnselectAllRecords' test.out

#- 232 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'svihoAZBd4hkykRL' \
    'wN2LHFkXjhDf4RPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'SelectRecord' test.out

#- 233 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'S1xmIM78uco5di3s' \
    'JNayfJakaJtAFsem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'UnselectRecord' test.out

#- 234 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'ukeOnQqvXAFVKLeO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'CloneStore' test.out

#- 235 ExportStore
eval_tap 0 235 'ExportStore # SKIP deprecated' test.out

#- 236 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'pEjPJDBPU8LPr0bj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryImportHistory' test.out

#- 237 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'y4nFkl8n6PSoXYb9' \
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
    'tc6rYyOiaUKC8t4G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RecurringChargeSubscription' test.out

#- 240 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'V0JiE7ZbWP80Zctu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetTicketDynamic' test.out

#- 241 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '{"orderNo": "nIw8zzjr1oeY1p4P"}' \
    '0xno1luSqciM4rfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DecreaseTicketSale' test.out

#- 242 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'soJ7AkLiYjJvlKhH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetTicketBoothID' test.out

#- 243 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '{"count": 9, "orderNo": "ccnrp3T2fKqq9CzJ"}' \
    'lj0UGtCqJnqpaur7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'IncreaseTicketSale' test.out

#- 244 Commit
$PYTHON -m $MODULE 'platform-commit' \
    '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 78, "currencyCode": "SsLSqGKfGJDmzFep", "expireAt": "1979-11-29T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "RjbuZi76GDzksM1I", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 71, "entitlementCollectionId": "DFSnh5IbdftTLRLU", "entitlementOrigin": "System", "itemIdentity": "TbQzxkHXSiDFpwgj", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "HkQyb5yoi3fhBKut"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 75, "currencyCode": "DCLFwNGzR7zvW33B", "expireAt": "1990-05-09T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "pSaqBWWsEePoWos4", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "o1WdXcuqjnyBh936", "entitlementOrigin": "System", "itemIdentity": "9q4asIfg6qpRvHGY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "nnFA4ieAeG0JcWHL"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 6, "currencyCode": "TbM9IHL2JcpnLuin", "expireAt": "1972-09-11T00:00:00Z"}, "debitPayload": {"count": 35, "currencyCode": "3Ucg05FtWiuP1xyP", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "ov5pJJdyu2TxbDTP", "entitlementOrigin": "IOS", "itemIdentity": "Wkg4HIrEmqfnhjjt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 16, "entitlementId": "L3FoA27eK2U3IHpg"}, "type": "DEBIT_WALLET"}], "userId": "MCnu8NHDPiOQzKhR"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 48, "currencyCode": "6b9t7DWTaUGBJRTc", "expireAt": "1980-01-03T00:00:00Z"}, "debitPayload": {"count": 26, "currencyCode": "FK6P6yxOlFhdtyrL", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 39, "entitlementCollectionId": "kz1Es8nQbk4SztMO", "entitlementOrigin": "Epic", "itemIdentity": "GyQYDnbzj7Xg2lcv", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 35, "entitlementId": "7TOu2FcuLwU5IJt4"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 54, "currencyCode": "rmzoPN3GJz77wPra", "expireAt": "1977-11-17T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "AL9IC4460Wck2oK2", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 19, "entitlementCollectionId": "LwkxgJXK2OjNzQ95", "entitlementOrigin": "IOS", "itemIdentity": "fLayvPNWmvzOaDto", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "fGPnF4i8PP7jdmy3"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 89, "currencyCode": "mUvrQPFxSaRrDsF1", "expireAt": "1985-11-04T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "Gd0zQqYmGkk8Pcq8", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 24, "entitlementCollectionId": "riKcfEberKsmttvF", "entitlementOrigin": "Other", "itemIdentity": "IWM9jL08jtCIr8ST", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "iyz2eOgny7d8WVlc"}, "type": "FULFILL_ITEM"}], "userId": "TKoZimYNHB2ph25o"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 52, "currencyCode": "sCRrlY6AX1ksmS6C", "expireAt": "1977-11-03T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "5yFZVt1HZPcFbl4X", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "KUphPevxFz1b7Q3N", "entitlementOrigin": "Other", "itemIdentity": "Cur3yS6PcP3N8ee3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "qH8MR9K5kA67H3XO"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 69, "currencyCode": "QfOCN2keFNIQusmc", "expireAt": "1984-07-15T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "XnevZsdD9Iip75t7", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 14, "entitlementCollectionId": "H8xifqavEfKK0Dei", "entitlementOrigin": "Nintendo", "itemIdentity": "ChLwkIGKtgDjDah0", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "ZgouTEi19doNSCRr"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 16, "currencyCode": "qY64bsfWMA6zIWiA", "expireAt": "1994-07-10T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "H3NpxEEE1xE1teY5", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 6, "entitlementCollectionId": "16Sr2B137kVZhkIS", "entitlementOrigin": "GooglePlay", "itemIdentity": "R4vMMPlJqY7ujDDL", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "oQJspLLZbnusI9Nt"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "mYALYAas29PBhKjK"}], "metadata": {"kXDnEXVzzBDNoUXO": {}, "IkGhmAMgJu6c1uzC": {}, "A657ulArgYuyjFEv": {}}, "needPreCheck": false, "transactionId": "pfQ5iJtNrVbjnyYE", "type": "Rw24T1DBdzzVbhZK"}' \
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
    'nh9FfHsuwhOtgOWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetTradeHistoryByTransactionId' test.out

#- 247 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{"id": "ZuhAp0yxLpfWB0in", "value": 68}, {"id": "cE5vUWRlOGzgjngh", "value": 63}, {"id": "VGPnqXXPustpaZz4", "value": 31}], "steamUserId": "mZuZptSindV4Kpif"}' \
    'mfS94ybYG4wLaPxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UnlockSteamUserAchievement' test.out

#- 248 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'pGODmwJCF4HCv6DG' \
    '2DfogFpQ6h4G1Jwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetXblUserAchievements' test.out

#- 249 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '{"achievements": [{"id": "wqyIOpmNMgpfDY1F", "percentComplete": 90}, {"id": "N6tWQqV1V78ZIjg1", "percentComplete": 63}, {"id": "331YipwCDOc9FNs0", "percentComplete": 35}], "serviceConfigId": "GwL1hP0ILR0Ela7Z", "titleId": "LwTA0wt5op6F6Z1a", "xboxUserId": "1sBmUaCx3pnw2UqO"}' \
    'cXFVD0pboKkDZJuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateXblUserAchievement' test.out

#- 250 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'SvoXGyr43yZ4vipg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AnonymizeCampaign' test.out

#- 251 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'YCZiVhuUlRF8bgS0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'AnonymizeEntitlement' test.out

#- 252 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'Z3T7DC5TO5zuEOtC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AnonymizeFulfillment' test.out

#- 253 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'w7S3b8oIW8rduVEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'AnonymizeIntegration' test.out

#- 254 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'RjbhlZ8rATgmfiV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AnonymizeOrder' test.out

#- 255 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'x6LtOu3SAtYQcZ2M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AnonymizePayment' test.out

#- 256 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '0m2eu4s6Vt77Z7VY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AnonymizeRevocation' test.out

#- 257 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'CzMbz1C3ZtjGu9Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AnonymizeSubscription' test.out

#- 258 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'aM7nweO9MSckJNZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AnonymizeWallet' test.out

#- 259 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'DhfW7AVHVE6Tamht' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetUserDLCByPlatform' test.out

#- 260 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'aAg8X3qrN4NJQHuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserDLC' test.out

#- 261 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'DPcorTkEhvJJBHTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryUserEntitlements' test.out

#- 262 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '[{"collectionId": "7gHQdNqoM8JpOKNA", "endDate": "1994-06-22T00:00:00Z", "grantedCode": "33hDeba57ZY9YNNr", "itemId": "TcdcnzDvUHgR2bX5", "itemNamespace": "lx9AjwbpWgnIzWRt", "language": "tiF-kLoO", "metadata": {"X0PYoF43qdlpBadz": {}, "nEopQjdlmCKky8f2": {}, "5OS6EXRpHjQ4hViJ": {}}, "origin": "Playstation", "quantity": 45, "region": "0GtE9ePlbHeBy2yY", "source": "GIFT", "startDate": "1980-10-21T00:00:00Z", "storeId": "EZNAnUcJCHbaM8I2"}, {"collectionId": "sFnR0i1EP6ekQzrm", "endDate": "1986-08-14T00:00:00Z", "grantedCode": "qC827Ayw8HdDdyII", "itemId": "R5cs3jEJm9cqIJO6", "itemNamespace": "etrgPcoqdV16bQzZ", "language": "wl", "metadata": {"MM4Cc3k5J2qbHYNe": {}, "kyXLtDH1ypF3hIsd": {}, "FXbbaFfchju2kAuo": {}}, "origin": "Oculus", "quantity": 28, "region": "tOSwo884abNDjMPi", "source": "REDEEM_CODE", "startDate": "1988-08-30T00:00:00Z", "storeId": "xhFeo51XVDI8f5EW"}, {"collectionId": "ndhcek3atmhTw5TD", "endDate": "1975-10-09T00:00:00Z", "grantedCode": "WYgm2yGvhR6HS643", "itemId": "vgPdN21mWwtuqNbt", "itemNamespace": "aAfDzs5MyxW90cMZ", "language": "prEZ", "metadata": {"n02q1qbbj3sLmfYz": {}, "DVAVhXts4CdsniSJ": {}, "KrJ4BrdfV658ZBVG": {}}, "origin": "GooglePlay", "quantity": 7, "region": "xlpGxhD9kKX2uBUI", "source": "GIFT", "startDate": "1992-08-27T00:00:00Z", "storeId": "pfP8bRBVoq807roC"}]' \
    'No3Qw4Z54sNMs82e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GrantUserEntitlement' test.out

#- 263 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '3yxhkTFfQHB8O5ke' \
    '34NGuMLQ7iPaGqel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetUserAppEntitlementByAppId' test.out

#- 264 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'c3lbrPkW2foKqIz9' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryUserEntitlementsByAppType' test.out

#- 265 GetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-get-user-entitlements-by-ids' \
    'En9Ut2qFCzvpinQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserEntitlementsByIds' test.out

#- 266 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Qg8fidwt7qJ1Y75w' \
    'S8MCmOepp9Tx45YP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetUserEntitlementByItemId' test.out

#- 267 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'BPqcYNEbLCaeCuMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserActiveEntitlementsByItemIds' test.out

#- 268 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'okWfuz2Zskdg2b5I' \
    'pRSAi9TY3ZiKfpU2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserEntitlementBySku' test.out

#- 269 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'gMmaHuaBzeu4NPuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ExistsAnyUserActiveEntitlement' test.out

#- 270 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '03UI8xXkOTRPX2Rb' \
    '["N68q9XjuvxGSBmDL", "91zfHvKnS4TBwlGi", "9OKYqmnMdDOYMCkc"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 271 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'E680jXshhArmrrsT' \
    'XqjhryZuWF0aXyAf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 272 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'nT9KMwZkUmivHbmY' \
    'wS4MpDJ1DYOnlVrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserEntitlementOwnershipByItemId' test.out

#- 273 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'flY3MzIef9mtXHbh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserEntitlementOwnershipByItemIds' test.out

#- 274 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '3agt9HQKHNhlzYRt' \
    'A24gRvv870jG3e6k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserEntitlementOwnershipBySku' test.out

#- 275 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'pEZmtrpzaLfufFoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RevokeAllEntitlements' test.out

#- 276 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '0vIAAZ3D07rENh4L' \
    'QyLj7QmX1ijJDLqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RevokeUserEntitlements' test.out

#- 277 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'yW5nSpi08dnnmoWG' \
    'bDOWBzflDPp8sE7b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetUserEntitlement' test.out

#- 278 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '{"collectionId": "cL6xy49IPWxqs6jA", "endDate": "1992-10-20T00:00:00Z", "nullFieldList": ["UUur5zNNHf53CHNL", "zMNElAaW04oQXa8w", "aozlr2ftyZklpNPl"], "origin": "System", "reason": "81jOSvCvj20fgU41", "startDate": "1988-12-11T00:00:00Z", "status": "SOLD", "useCount": 10}' \
    'ug3ApiXAivNHSVq7' \
    'Hy14PWQgyxy3AZ9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdateUserEntitlement' test.out

#- 279 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '{"metadata": {"29c3FLGnsacdakVu": {}, "Bk3eUIeGfzqhOBhM": {}, "J8BCR0Pr4lUceWJi": {}}, "options": ["dPUCDHoZPOFJliGQ", "wzPSicmKe5tLTY4T", "61Ztjv4HjtKUJ2g5"], "platform": "iKvkb6yaN0rJRTtA", "requestId": "oroj50ibuYM4wRG0", "useCount": 23}' \
    'seNuEx7YDEkdFOw3' \
    '4ZkvghT5B0olJY1q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ConsumeUserEntitlement' test.out

#- 280 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'ewjIDEZedb90DCSo' \
    'LAgeUljuQXNi35z7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DisableUserEntitlement' test.out

#- 281 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '5tQmcrR08dqYhgjN' \
    'EKxgigqjIaaftddf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'EnableUserEntitlement' test.out

#- 282 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'k3N3FUGt7hRJWz66' \
    'woOwujZiqrVmhfRR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetUserEntitlementHistories' test.out

#- 283 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'K7pehYZgLjFarF9k' \
    '0U2fuxYpTLF2CAqF' \
    --body '{"metadata": {"wYdrzmGzkvzgJn2p": {}, "WVs6zZRXBAexxsuL": {}, "kWktcAykay7LItVj": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RevokeUserEntitlement' test.out

#- 284 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "r1YSzeXfUiXANoRi", "useCount": 29}' \
    'X5w0CKM4KgSaTFkY' \
    'qyDBVeKhVWlgMI2a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'RevokeUserEntitlementByUseCount' test.out

#- 285 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    '4HuuQiMf3ZtSRaKT' \
    'vnYQcQK3OLU5xNea' \
    '76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 286 RevokeUseCount
eval_tap 0 286 'RevokeUseCount # SKIP deprecated' test.out

#- 287 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    '{"platform": "T8WWMNZ7MQ0xXiAU", "requestId": "p37WFZG1bPREFnLF", "useCount": 44}' \
    'GC9xYvHbX0ptwZqH' \
    'LOEqFcFlBmznrLzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'SellUserEntitlement' test.out

#- 288 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '{"duration": 45, "endDate": "1989-08-20T00:00:00Z", "entitlementCollectionId": "CetfPNaSebuaBm42", "entitlementOrigin": "Playstation", "itemId": "RTd7otFS5xUblp0G", "itemSku": "JFHhDBbjdusCtKYo", "language": "61c23RG7T7E4yKJU", "metadata": {"PzM18zammJN39lhB": {}, "PiRxSSC369UVGTnt": {}, "s7qK33YCsDe0la83": {}}, "order": {"currency": {"currencyCode": "cvnj5Ut4YTxIBMay", "currencySymbol": "1sHQoxlbhfnh1lar", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "Fd3SDQ0zyrZOMqd7"}, "ext": {"5oCp2u2A2ZLrkeWb": {}, "mcgfplQTNIZctTys": {}, "FM89BCAF2MVozVct": {}}, "free": true}, "orderNo": "iJtgpMAKpwx7WN70", "origin": "Epic", "overrideBundleItemQty": {"lquESAZpAC3MEgBr": 97, "Y8kIt120hKXcluep": 21, "jOBRYgnvYu1vzXsM": 37}, "quantity": 22, "region": "3ycE5A2fFKAWLe45", "source": "ORDER_REVOCATION", "startDate": "1984-04-25T00:00:00Z", "storeId": "XlqZ97UEX77J2ZaC"}' \
    'gl5zfvvm60VIJWtA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'FulfillItem' test.out

#- 289 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '{"code": "rjNf9ClzJiLrK8iw", "language": "mnWq", "region": "v7MbR3h7N9mLvImr"}' \
    'GFR73LVKd3lHIIZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'RedeemCode' test.out

#- 290 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    '{"itemId": "nztswBHIOUcpBs05", "itemSku": "S6VCRgcpqzF0Wdx4", "quantity": 40}' \
    '9rMiD8seoTU64hQT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PreCheckFulfillItem' test.out

#- 291 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "Xu9MixCLkCkF4GsB", "entitlementOrigin": "Playstation", "metadata": {"r2Sf2vnHOZhdmTd8": {}, "ENVRZH8lmeTjzHxg": {}, "wKaMjUptGDH129SP": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "aYcrI47DABOUyTgL", "namespace": "qcqWj25jcDQ7S4nZ"}, "item": {"itemId": "ymFu9HDayb3pUN53", "itemName": "xwUDjiBHCt3VKh9N", "itemSku": "aXK6yInDEdr3JfyF", "itemType": "O9PUA61ceL94UMGb"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "SU2i8wpPg4f6CytN", "namespace": "OpTcy8nFxnyUhq8Q"}, "item": {"itemId": "CACdn9QBrEBZ0FGc", "itemName": "SF09VMOBfFhgytL5", "itemSku": "jv2cyVSXxh4A5aA1", "itemType": "bEwNCWytxJKphKxk"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "Y2qNwo7fOIEm4CCH", "namespace": "TjiJTcJCNU9Jxdoz"}, "item": {"itemId": "Qjrd9h3KvseGTWQw", "itemName": "YHbgonXMWBgwAHBL", "itemSku": "ENBGh8mzbI7UUQoj", "itemType": "40AF05z6BC0fH4Bl"}, "quantity": 50, "type": "ITEM"}], "source": "SELL_BACK", "transactionId": "6OUYrf6N5BjG6bEL"}' \
    'ZwjEmKgZXlgbV3dB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'FulfillRewards' test.out

#- 292 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'wrK8hpKlmw63co2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'QueryUserIAPOrders' test.out

#- 293 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'rbchkQ7n0C9lJb5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryAllUserIAPOrders' test.out

#- 294 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'lmAWYUtevQ8XsaIO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'QueryUserIAPConsumeHistory' test.out

#- 295 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "bMw_253", "productId": "PIqi1GB1ZASgNbyI", "region": "gL74DNNIekar0ZUa", "transactionId": "hrGZV8WpFG2gRMkd", "type": "OCULUS"}' \
    'gCuxFa4ix8vdZvwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'MockFulfillIAPItem' test.out

#- 296 AdminSyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-admin-sync-oculus-subscriptions' \
    'MOmTtBEJjCyABy7D' \
    --body '{"skus": ["KD883wae7z4E6bRC", "4ufnScsyhWe6QJ1O", "v7wz26xkkYYxgGLN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminSyncOculusSubscriptions' test.out

#- 297 AdminGetIAPOrderLineItems
$PYTHON -m $MODULE 'platform-admin-get-iap-order-line-items' \
    '3OJhmFyZH05CCwf2' \
    '1Y2Taz2uFpz174Ok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetIAPOrderLineItems' test.out

#- 298 AdminSyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-abnormal-transaction' \
    'Rp3BkdVbqgNrZPyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminSyncSteamAbnormalTransaction' test.out

#- 299 AdminSyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "IR58rTLNpt4RpqpK"}' \
    'k9toELRS24cMw2Lh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminSyncSteamIAPByTransaction' test.out

#- 300 QueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription' \
    '6XTFr1d0v5MiCVrY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'QueryUserThirdPartySubscription' test.out

#- 301 GetThirdPartyPlatformSubscriptionOwnershipByGroupId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'APPLE' \
    'OMJmNbAv9VCU7hdD' \
    'bGzcJKa1wsM434xC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetThirdPartyPlatformSubscriptionOwnershipByGroupId' test.out

#- 302 GetThirdPartyPlatformSubscriptionOwnershipByProductId
$PYTHON -m $MODULE 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'XBOX' \
    'qQ18AhUON0V9Qm5G' \
    'iVkyg2ApoZozOLaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetThirdPartyPlatformSubscriptionOwnershipByProductId' test.out

#- 303 QueryUserThirdPartySubscriptionTransactions
$PYTHON -m $MODULE 'platform-query-user-third-party-subscription-transactions' \
    'rfo6qFXI3sUf1uYi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'QueryUserThirdPartySubscriptionTransactions' test.out

#- 304 GetThirdPartySubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-subscription-details' \
    '2GvXliGeEan1MCH7' \
    'tD6ENaY8enBjqk85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetThirdPartySubscriptionDetails' test.out

#- 305 GetSubscriptionHistory
$PYTHON -m $MODULE 'platform-get-subscription-history' \
    'CIocwu2hQOOqU4lx' \
    'wyKbYKZdZvXUVezI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetSubscriptionHistory' test.out

#- 306 SyncSubscriptionTransaction
$PYTHON -m $MODULE 'platform-sync-subscription-transaction' \
    't3HezhSE8IGOaRsi' \
    'evm4IDxtFXsff5uk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncSubscriptionTransaction' test.out

#- 307 GetThirdPartyUserSubscriptionDetails
$PYTHON -m $MODULE 'platform-get-third-party-user-subscription-details' \
    'sqDpH01I9KImkc3Y' \
    'wK5J3GyOQJLupcfc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetThirdPartyUserSubscriptionDetails' test.out

#- 308 SyncSubscription
$PYTHON -m $MODULE 'platform-sync-subscription' \
    'MQlt7ssE0BVP1MHJ' \
    'QhmZHHktlLrVbhm9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'SyncSubscription' test.out

#- 309 AdminSyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-admin-sync-twitch-drops-entitlement' \
    '{"gameId": "d4y2SbI0OO1ououc", "language": "ARU-394", "region": "97nqfMF4iGEw5Ehh"}' \
    'lxYtAWr3elzD6WKs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminSyncTwitchDropsEntitlement' test.out

#- 310 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'CrHf4vU4AqkG2jU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'QueryUserOrders' test.out

#- 311 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '{"currencyCode": "DouFSA3CLtlE5PpY", "currencyNamespace": "0ZXXFyG4988DpkyI", "discountCodes": ["TbfvPjkpdcTxG4LM", "zbpTe8wnvbAKMlJZ", "LOAiZC06KMQoJCvc"], "discountedPrice": 44, "entitlementPlatform": "Playstation", "ext": {"EA7MUcU28Tjo0XKr": {}, "5KBD3YwTJ4Hn5XqA": {}, "2kk1A3H3rxXt6ggK": {}}, "itemId": "wWIYIm0ypwg4VTJp", "language": "u64It1R6axg5VLrk", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 81, "quantity": 56, "region": "BApNgT5fUWdp4LE1", "returnUrl": "VnZFgkytfX1NqG3h", "sandbox": true, "sectionId": "imEWxUgMEW1S9JMb"}' \
    'rmE7zBsX3PYLNcay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserOrder' test.out

#- 312 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'R34iibMmlb6vlF1m' \
    'VrcAyqXXnKEtSQkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'CountOfPurchasedItem' test.out

#- 313 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'h10xq2zgtaigOB2X' \
    'WLXBkH6l2KW0sSf0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'GetUserOrder' test.out

#- 314 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '{"status": "FULFILLED", "statusReason": "dSw93IumFyH8gFez"}' \
    'b1WOjy0XInTSZSMK' \
    'JYcE585zPfpDiAo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'UpdateUserOrderStatus' test.out

#- 315 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'zAj1AgjctQkNA6tP' \
    'xcpOjecMqPJvYXVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'FulfillUserOrder' test.out

#- 316 GetUserOrderGrant
eval_tap 0 316 'GetUserOrderGrant # SKIP deprecated' test.out

#- 317 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '6273TGlaOPmEdjp6' \
    '3KfNpB5Un5ObPhEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetUserOrderHistories' test.out

#- 318 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '{"additionalData": {"cardSummary": "6MRN6zzKPZLWVB4Y"}, "authorisedTime": "1988-10-10T00:00:00Z", "chargebackReversedTime": "1999-12-16T00:00:00Z", "chargebackTime": "1980-06-01T00:00:00Z", "chargedTime": "1978-05-16T00:00:00Z", "createdTime": "1981-10-19T00:00:00Z", "currency": {"currencyCode": "pmMfATapsn4uvJaB", "currencySymbol": "hPA5LWJipgrvQaTd", "currencyType": "REAL", "decimals": 6, "namespace": "KmmlpHUD2h7I7UbU"}, "customParameters": {"Nrp02FBwxeZXuYnl": {}, "q95T6quy9PsI3dx7": {}, "5GAWm1WfXALgsjwf": {}}, "extOrderNo": "d3eYGpxI9DQs2vOJ", "extTxId": "H76fEQ8WC3iZ6amf", "extUserId": "E0NHQzAvmPZRWnKI", "issuedAt": "1973-06-16T00:00:00Z", "metadata": {"YW2kPDBgq17ElbCw": "KI3aXhSEFUvuqvkz", "ikf2tQ7LhwHqc9mw": "HFQ3JQtpRpQVAOex", "mqWb9l5yHbiXZ6Th": "rZy4bUEBAVPV9L4I"}, "namespace": "LPJqDbKXtFPmTQOO", "nonceStr": "3dJd2YP1XIUKL9g3", "paymentData": {"discountAmount": 54, "discountCode": "DEUKBKA2vpqA4MSD", "subtotalPrice": 48, "tax": 17, "totalPrice": 55}, "paymentMethod": "zLTURYUzEglKz4HU", "paymentMethodFee": 54, "paymentOrderNo": "3X04OxvZytaM4c4q", "paymentProvider": "XSOLLA", "paymentProviderFee": 72, "paymentStationUrl": "V7vRV6x146gCIrSk", "price": 62, "refundedTime": "1986-03-08T00:00:00Z", "salesTax": 80, "sandbox": false, "sku": "X9iHZkthOUUtPBx2", "status": "REFUNDED", "statusReason": "vK7NHpsIBYlUoEWZ", "subscriptionId": "PawFVpfXqbM5rNHQ", "subtotalPrice": 69, "targetNamespace": "ewQlUnkcE3UYV2aj", "targetUserId": "9PL4PQGJJokFeKLb", "tax": 56, "totalPrice": 32, "totalTax": 88, "txEndTime": "1996-09-18T00:00:00Z", "type": "wMac489Y6N0H6yn3", "userId": "PYiqbIBvNbRcU7z5", "vat": 92}' \
    'hvDaSIChGku6gm1t' \
    'uTKBNwhTZL6vJfgP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'ProcessUserOrderNotification' test.out

#- 319 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'EZmTs18vZnFstnJ5' \
    'mnLz7c4rYnurB4du' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'DownloadUserOrderReceipt' test.out

#- 320 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '{"currencyCode": "28xKiygvn2QBdHQt", "currencyNamespace": "8RwdG0MnCL6kKYCj", "customParameters": {"9livHcRCMFbd8VDJ": {}, "QUNNivS5r4NDhqj2": {}, "sHH7hGbYOjo5zLgQ": {}}, "description": "b3hA8P6XcQUNHo5Z", "extOrderNo": "FndtlgufbSdQgTPP", "extUserId": "O9giI7gI536KVAx0", "itemType": "BUNDLE", "language": "UjY-473", "metadata": {"bA1NZZ58G8Xryw8b": "fE6VA6HEvqN7kX4V", "VVBS89UUbLl2ciim": "YDeDceMEtPkjYd9P", "NBi79WHorOJPVoTC": "RV5enPlVeOc8uDGu"}, "notifyUrl": "A9ZVtPuyxsPGoUCg", "omitNotification": false, "platform": "CWF50CSEIj98y965", "price": 90, "recurringPaymentOrderNo": "jmJ81aRTbDoFbYLV", "region": "qxK4NVV4KPvi1IDd", "returnUrl": "9h3DkrqAqSqczq4V", "sandbox": true, "sku": "lZ95JmGny7g72f6S", "subscriptionId": "O7XayfUmZz42HE0t", "title": "7TAQm0TGMk4Dmrwx"}' \
    'C6EQr9lk8teEugVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'CreateUserPaymentOrder' test.out

#- 321 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '{"description": "3X7cq2K0e7A1xHVz"}' \
    'xmePZ06tOqoxMhyq' \
    'IyPdnz3ReXTrC2sN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'RefundUserPaymentOrder' test.out

#- 322 GetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'platform-get-user-platform-account-closure-histories' \
    'ANyInXnunWNxg0gQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetUserPlatformAccountClosureHistories' test.out

#- 323 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '{"code": "ztAjYiUb5SlpeaMD", "orderNo": "VE3ODebYRPEkmK5e"}' \
    'PPaacnQTuUibmiz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'ApplyUserRedemption' test.out

#- 324 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '{"meta": {"AhOGRIwwo9w06X6X": {}, "zJiljntx5TSAxNBc": {}, "htcaaoKZYk4Gliky": {}}, "reason": "I0LGO0eNNgl7jdIf", "requestId": "7ptoc5rPRsGFfGRR", "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "aJvnkbpELCCQEX7D", "namespace": "lAjoDECQ1ALpc5HR"}, "entitlement": {"entitlementId": "4Bp38TGeyfWQESVL"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "8NFIJFlyo9htDZjj", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 81, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "gOdzASMsVBiv6rL3", "namespace": "ZEZRH0Pkkc62P13I"}, "entitlement": {"entitlementId": "tOBeXpRUTmAHfO9F"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "8KLWODgQ2gkEKZZQ", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 66, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "MRx3xefM47AsxVCX", "namespace": "efUThoflsBWhnubn"}, "entitlement": {"entitlementId": "ROvA1CxkXWIlkrF4"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "LjygzdLTAC4I9fqj", "itemIdentityType": "ITEM_ID", "origin": "Nintendo"}, "quantity": 71, "type": "ENTITLEMENT"}], "source": "OTHER", "transactionId": "BDniJH2zFRgcuTMY"}' \
    'iBESlCYdNui4AfrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'DoRevocation' test.out

#- 325 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '{"gameSessionId": "uSaiOYxuj6n1UTUH", "payload": {"sgjv4O66qvH38lYK": {}, "eEiUS3GYxZHMK3yb": {}, "nM1cQEihWjWNwYN6": {}}, "scid": "xeNeZMtT7f2d2Nhl", "sessionTemplateName": "IgGSvbXe1Hyw3myl"}' \
    'k3Hwg4Wtj5wR9o07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'RegisterXblSessions' test.out

#- 326 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'ypJFcZroi0QeG6cD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'QueryUserSubscriptions' test.out

#- 327 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '8trKjrFSu4MOj7pB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetUserSubscriptionActivities' test.out

#- 328 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '{"grantDays": 54, "itemId": "tIuLW7T1d689kzJW", "language": "Uj0IhAuSR15xUgtP", "reason": "xWpU3njfM3MLLEwp", "region": "sdD0knPNT7MZM5TU", "source": "kTp46Y9LTNtGN9WU"}' \
    'qYyTxul6u3RuXCCJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PlatformSubscribeSubscription' test.out

#- 329 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'SaYmbf4tEBMWAIsb' \
    'PmXPNCh5Rfq2UC1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 330 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'CPCsq2BAEzRa56ra' \
    'dYciedOlGrfTUc5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'GetUserSubscription' test.out

#- 331 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'CZJjhP2aqyZJps39' \
    'vNgtqv552OktaS7I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'DeleteUserSubscription' test.out

#- 332 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "ksiAtxe6FuXv7wMn"}' \
    'ItLay1ITOwqgFDt8' \
    'J1sETgOrOLZUbQfz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'CancelSubscription' test.out

#- 333 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '{"grantDays": 4, "reason": "B7kt11ORM1E26jRo"}' \
    'x5zjnyjrUk4JAORZ' \
    'PikticJyIfLP3Q4S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GrantDaysToSubscription' test.out

#- 334 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'vSmMtkqbFFNrsD4c' \
    'YwTyG7sUevPhkYV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetUserSubscriptionBillingHistories' test.out

#- 335 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '{"additionalData": {"cardSummary": "2N58lwa3vXLwnFGn"}, "authorisedTime": "1977-06-30T00:00:00Z", "chargebackReversedTime": "1990-06-02T00:00:00Z", "chargebackTime": "1975-09-24T00:00:00Z", "chargedTime": "1979-12-04T00:00:00Z", "createdTime": "1980-12-26T00:00:00Z", "currency": {"currencyCode": "PVAZ2ZLrDa1xpqIz", "currencySymbol": "iihTn1qm3WYY19In", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "8tHIYiWBgIkW9QrR"}, "customParameters": {"9bMgSr1OTY7V3CTR": {}, "YI1Nyon9lvA8o43V": {}, "ZXjofWhPJjqdf6RB": {}}, "extOrderNo": "iYws6MPqsSKy9SsY", "extTxId": "w3NP5yL2qIrhx90T", "extUserId": "4EDNbgre3EwhoEBW", "issuedAt": "1997-07-12T00:00:00Z", "metadata": {"FNQL1GY5CSEzZsaa": "k9MNj0mKis5KQHhw", "B99zMKOwz2mKAvkS": "zld2vfGrbc2jP3wt", "M1fSokFngc559mMT": "oWdIIC6lFVoAXWUB"}, "namespace": "Y9BL1BmvNwKXwiUQ", "nonceStr": "1QS5fveJC1Tg5xtz", "paymentData": {"discountAmount": 94, "discountCode": "rmjmzkYQMLffgy1m", "subtotalPrice": 31, "tax": 63, "totalPrice": 6}, "paymentMethod": "LjymTcNfNb4CIiJp", "paymentMethodFee": 86, "paymentOrderNo": "8OLoHszOIdSWIpaL", "paymentProvider": "PAYPAL", "paymentProviderFee": 3, "paymentStationUrl": "ZwnDkDw7Zrilk8Q8", "price": 8, "refundedTime": "1993-09-07T00:00:00Z", "salesTax": 20, "sandbox": true, "sku": "C4wycgOIphhydYZ7", "status": "REFUNDING", "statusReason": "mgURbZe3BXyDfCse", "subscriptionId": "1Idjn7UTJHBJE3tO", "subtotalPrice": 23, "targetNamespace": "JUwrktKue5lw0m8E", "targetUserId": "vy70CBhCstkqyDQr", "tax": 36, "totalPrice": 29, "totalTax": 98, "txEndTime": "1980-01-27T00:00:00Z", "type": "rYAf28mqvM4LzAMy", "userId": "18Az6wAqGqaSmwDv", "vat": 30}' \
    'sM2D6XBEfj5FBqjq' \
    'haVBjVf2bpiMDOiS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'ProcessUserSubscriptionNotification' test.out

#- 336 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '{"count": 99, "orderNo": "yIgULctkrQt7UdVD"}' \
    'HgEyEMT17gAkJ9ZO' \
    'yUyKXZ4gnJD0btvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AcquireUserTicket' test.out

#- 337 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'iaLotp8rjTOGuuZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'QueryUserCurrencyWallets' test.out

#- 338 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 72, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"PR01QNJxA5bUgJyf": {}, "yqZXsJXmWaoddgjJ": {}, "2F009o01wDwPk87R": {}}, "reason": "GZxhbon95Kr4kABV"}' \
    'vvoyJHCJBXauQb7r' \
    'ZO3cLAcITU9eaHQK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'DebitUserWalletByCurrencyCode' test.out

#- 339 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '6btDxqspEHxJ7HIZ' \
    'Tmr9S9JzIoTTXKTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'ListUserCurrencyTransactions' test.out

#- 340 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 47, "debitBalanceSource": "TRADE", "metadata": {"qH9mC39RMuXDX1Rg": {}, "EkBolpVL29zMvjDn": {}, "iDn8AYrRRr985p7F": {}}, "reason": "8iN9R9kmB5pdeZ7P", "walletPlatform": "Oculus"}' \
    'hZq7LKZkGycl5oKG' \
    '2FV9jHnWg7dx8OSO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'CheckBalance' test.out

#- 341 CheckWallet
eval_tap 0 341 'CheckWallet # SKIP deprecated' test.out

#- 342 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '{"amount": 74, "expireAt": "1979-05-01T00:00:00Z", "metadata": {"EFaxeDD8oVvwa87Y": {}, "rbanFFARSHMaf8ay": {}, "qvkXvHfj2e4dQJLp": {}}, "origin": "Xbox", "reason": "KMIcg74z6KA7qyrd", "source": "PURCHASE"}' \
    'yb9zBS6MQ3orSyb3' \
    'fSoG1E1gohjzQBWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'CreditUserWallet' test.out

#- 343 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 99, "debitBalanceSource": "PAYMENT", "metadata": {"D8fgTZBggdAj0B01": {}, "7EuJVu3uC314IH9M": {}, "Rg40yRzHF2sUxlgc": {}}, "reason": "XZZg9Qz8cBJEfDTE", "walletPlatform": "Xbox"}' \
    'ndimKYOwqvWgcSMi' \
    'L3ADcBZC1b1ulnqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'DebitByWalletPlatform' test.out

#- 344 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '{"amount": 80, "metadata": {"bloZsrrwFc43BEFz": {}, "GxzXRz9ek9cTfklL": {}, "vhREHXR9ZyR0gYn2": {}}, "walletPlatform": "Nintendo"}' \
    'OpAmyjwPmzYZp1Ce' \
    'r18YeUzcRemWJu2b' \
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
    '{"displayOrder": 0, "localizations": {"4P5Auq8Vd4w6txSK": {"description": "D5jHXOt6NIhH6zSx", "localExt": {"o8OYohg3GlW72bmW": {}, "wgdGm7u6jzl05VUR": {}, "HB2aH1OBjSbRTbA5": {}}, "longDescription": "ngX8nMk5seGmbg5y", "title": "aV5LtdtmXxubnK90"}, "It1WEpBd8W8yL5eZ": {"description": "hTnha9eiJsMlXtyg", "localExt": {"rzG2QUljK667R7aO": {}, "0dO8De9iVlq9yqgu": {}, "KMz482n0E7GAZv2X": {}}, "longDescription": "PO8DiNcJaVwdWa2Z", "title": "Fc4YAfXGVqiimFcc"}, "a0MFCaLqc1H9pctB": {"description": "ogeWR41LE3hNpOlQ", "localExt": {"nLV2MdeaUWnsI5pK": {}, "AFAjEaVGZXA8TH04": {}, "5L53XwwLUeWVf3gL": {}}, "longDescription": "2yczZXxdsLxTWwVP", "title": "r4U5NXmKyOdqZZYE"}}, "name": "LSAPxBDIEPT2GAxO"}' \
    'HInufNkRydUBWF1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'CreateView' test.out

#- 352 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'h9i59vuR6CcSzvIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'GetView' test.out

#- 353 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '{"displayOrder": 47, "localizations": {"wQFFHJVtc0SoSjcB": {"description": "oYhfbT5F3zL27szS", "localExt": {"OYd9Y0NpVE2aa5kT": {}, "g04QRdr4bKBKfiq3": {}, "tQENj55DMrhcrF1L": {}}, "longDescription": "6pYsesFql7XfSkTh", "title": "fq5OwxwX51WDxmre"}, "wNJafvdNvKldM0re": {"description": "kJkWWoqwGQqu93mW", "localExt": {"qYwItRTQVKkxYEWA": {}, "JyifVsl4tsCWoX1l": {}, "SzPYNF01Lahplx2x": {}}, "longDescription": "ZlabLjqUbKYZvrSL", "title": "9MpXegzbRyBVxsaU"}, "ZTA9CH16ZXEFNNpD": {"description": "yHgAVhWg8tkRHubW", "localExt": {"YDMejv14bJ1yJTjZ": {}, "8h4Ac4ud51aru34X": {}, "xqVeNlhPSGr2GCSB": {}}, "longDescription": "lAc1QqeDAODDXDcB", "title": "p0Zm4J2X1YZBUriO"}}, "name": "MFSlzu34Wp4oAMBx"}' \
    '4SopAgGjVmLARmen' \
    '8aoqlm2gZZIIdtBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'UpdateView' test.out

#- 354 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'CiRje56hQO7iHYTW' \
    'fraJoGjzdE2Gt5Lh' \
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
    '{"enablePaidForVCExpiration": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'UpdateWalletConfig' test.out

#- 357 QueryWallets
eval_tap 0 357 'QueryWallets # SKIP deprecated' test.out

#- 358 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    '[{"creditRequest": {"amount": 86, "expireAt": "1978-09-23T00:00:00Z", "metadata": {"7eWoUz63g5ldLNvD": {}, "sFRxvIWPhDHlguiw": {}, "W43ftI0abvQQByah": {}}, "origin": "Twitch", "reason": "gfShTgH7QU5U5VKM", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "0HTDvNXyTxvPRnlF", "userIds": ["SQ6v7K73Xi2AB5OY", "1BWvZyqW6CStrsDU", "FvqKEDfQUOT5Zg2G"]}, {"creditRequest": {"amount": 81, "expireAt": "1978-02-27T00:00:00Z", "metadata": {"Oj7smPuH5BZrTsNJ": {}, "RR5uMT5lIHTRyEid": {}, "wdTqJoLD9kVnRYM4": {}}, "origin": "IOS", "reason": "qDqNegcfIRO7qY6M", "source": "REFERRAL_BONUS"}, "currencyCode": "tK0d0nuIBjVZjOjr", "userIds": ["LUYUJQk80tPmdgSg", "Zu9LEeOTaHP4Ltwj", "IUNPjErpmdsCqI9m"]}, {"creditRequest": {"amount": 43, "expireAt": "1989-09-27T00:00:00Z", "metadata": {"gWdNz0xp2PHIttdH": {}, "5OoXEL1xP0tQEooU": {}, "046EL2HqNuu1OPm9": {}}, "origin": "GooglePlay", "reason": "Vot9rEFUcFqi9IXE", "source": "GIFT"}, "currencyCode": "hwyWJ7EAB7kGxNwO", "userIds": ["9EqFrhz872allb2j", "0Z3aq4k3vORHgbQI", "aRoKBxDcndYM9mz3"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'BulkCredit' test.out

#- 359 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    '[{"currencyCode": "tE3VsEwkafcV7jvy", "request": {"allowOverdraft": false, "amount": 88, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"rMPGafhhKkgPI2HT": {}, "Pdp4vXIxOt6CxiND": {}, "ALftVYMBY66nz5wi": {}}, "reason": "I9UtojzAhVtlXb0W"}, "userIds": ["AJ6bSZOsVSW0yfhr", "w9cX9qD3up8zSqbS", "PlOVRke0Rw0rMOzA"]}, {"currencyCode": "oqZ9f1EMlA0TgPia", "request": {"allowOverdraft": false, "amount": 26, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"0NSbXYXl80IXa09q": {}, "vdnZbUJ9uSIJAuvb": {}, "RoyVKQWhRCa4Meqa": {}}, "reason": "WAGntKi5VcfdJHSQ"}, "userIds": ["lCMI8Jae96k6wPIb", "99MzsmCz9csPD3mA", "ixnTRCntYAOhAPz9"]}, {"currencyCode": "IRIjiYukur4iEhlc", "request": {"allowOverdraft": false, "amount": 23, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"3nMM88ZHroUTLxsZ": {}, "kcJy594BukgYrUkq": {}, "KLhOtCoMjjcsvkUg": {}}, "reason": "pfrF2pDBhsviMDzv"}, "userIds": ["DOpjchReV2Sgd0wM", "Kxm5AvwhDq9hlVwa", "vR2tWflzm98aj22s"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'BulkDebit' test.out

#- 360 GetWallet
eval_tap 0 360 'GetWallet # SKIP deprecated' test.out

#- 361 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'GZHEIFdrXoIkuJvj' \
    'MnmfWaKU8Ip9YwI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncOrders' test.out

#- 362 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["1rpGgzgibcIwh74W", "oYm2RpiaZTqwxkia", "Q25Cmx027mrMB0Er"], "apiKey": "GNqgTj0m5aXzvl2L", "authoriseAsCapture": true, "blockedPaymentMethods": ["s9Vq7fPpWrWijvCW", "VmkHmWlx3nmrIHxW", "eWaK00OKZeelU0xo"], "clientKey": "vCm2YCueyfFOVTaS", "dropInSettings": "J3nJLnkD8LYM65VL", "liveEndpointUrlPrefix": "ZiKm15hez2MgriZ6", "merchantAccount": "0A9qKACSJnrZAWDQ", "notificationHmacKey": "GJdqaQ6yjAOKmxsc", "notificationPassword": "QRCmbWTm1PRgpzXR", "notificationUsername": "HuGgWoSnSmEo0dL0", "returnUrl": "2zFIdAPaaghTcAcu", "settings": "TSz8tViSRVKzwWqY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'TestAdyenConfig' test.out

#- 363 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    '{"appId": "cgoQp44IwVEXXg77", "privateKey": "9DcEb5nBVeAEY89x", "publicKey": "EnoKKlyPtaGSVNlR", "returnUrl": "TRrauD2sfxOt0yIg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'TestAliPayConfig' test.out

#- 364 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    '{"publicKey": "L5CqZtwn2hSKKZvM", "secretKey": "4WSz7P7y5q6uDaCx"}' \
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
    '{"apiKey": "8hxTiqpntZvRypSc", "webhookSecretKey": "Q8aIsboqQidXJhhg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'TestNeonPayConfig' test.out

#- 367 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    '{"clientID": "BD6TwYNvWLRH2T1h", "clientSecret": "ELaFk76mJbRjfhXv", "returnUrl": "XWtnbIyFuv556ws3", "webHookId": "j4fKGtROyxuJkOFy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'TestPayPalConfig' test.out

#- 368 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["dDf9m3LSEjLNMoKj", "XyYTCslAonKsZdA9", "11KfPQTy8lx4YW9P"], "publishableKey": "4FFVdYJ2w3OGPS9C", "secretKey": "dMQW1gop8xEB5Wri", "webhookSecret": "70hzuPPRNn7bSYv9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TestStripeConfig' test.out

#- 369 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    '{"appId": "Fk7PATOx8N4N4Dg5", "key": "mDZyNmi9Nee8E16C", "mchid": "JURxlwSvm0n7bp88", "returnUrl": "FcFKPGv9PMYogmUV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'TestWxPayConfig' test.out

#- 370 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    '{"apiKey": "rSepOEo9ODEl88lS", "flowCompletionUrl": "j9W9Qui3Qm0WGaMw", "merchantId": 16, "projectId": 55, "projectSecretKey": "FTQ6M5yBhQNfv11k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'TestXsollaConfig' test.out

#- 371 GetPaymentMerchantConfig1
$PYTHON -m $MODULE 'platform-get-payment-merchant-config-1' \
    'hOgEX8q4XcyM1quC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'GetPaymentMerchantConfig1' test.out

#- 372 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["P7gHWdrdkbXfhVXJ", "7MAA1c3t56EpmqXt", "I1ea94zZAdFCTO6F"], "apiKey": "C2QUf0Whdcum4saj", "authoriseAsCapture": false, "blockedPaymentMethods": ["54qsjR0aEzhzFlD1", "uglEn1NwYqSpioGw", "h9SWxNzQ3DzIEear"], "clientKey": "FrFMIeo9PYRTxSpr", "dropInSettings": "B0BtuiJEqmbaRx6F", "liveEndpointUrlPrefix": "3iux9udWaDYHSt1E", "merchantAccount": "EifnuSTtCN8i2tS7", "notificationHmacKey": "rAMAxwXuiaHCNLmn", "notificationPassword": "lRPStXhqg4XeI32f", "notificationUsername": "ETDPQVe026c9WrAx", "returnUrl": "nE6M2ryxqcxkHbch", "settings": "APo9rtjQ5kvwn03v"}' \
    'GAW804TWUV2HAG9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'UpdateAdyenConfig' test.out

#- 373 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'Ya4uwQ0r4tGUp00r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'TestAdyenConfigById' test.out

#- 374 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '{"appId": "MLZ1eTfmUwkGYQeI", "privateKey": "nkHcPjNEn2se1yYq", "publicKey": "xystC5YdtXrM6vcn", "returnUrl": "dGdt9cB5Ef9piY1W"}' \
    'qrjKrPYRRVlqfGGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'UpdateAliPayConfig' test.out

#- 375 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'hPklPuT3em9Iz42Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'TestAliPayConfigById' test.out

#- 376 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '{"publicKey": "FoIyM4jQ307TKpWz", "secretKey": "4d2uiESs0ypsuzcb"}' \
    'l4Dtn32tNBisbkvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'UpdateCheckoutConfig' test.out

#- 377 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'fmhkAHdGDOTSucll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'TestCheckoutConfigById' test.out

#- 378 UpdateNeonPayConfig
$PYTHON -m $MODULE 'platform-update-neon-pay-config' \
    '{"apiKey": "EURtdq3O6BR25zA3", "webhookSecretKey": "GaAcY14lwQ2mYznY"}' \
    'kMiU0vVreF40rVDD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'UpdateNeonPayConfig' test.out

#- 379 TestNeonPayConfigById
$PYTHON -m $MODULE 'platform-test-neon-pay-config-by-id' \
    'wsRfL40POY5Hn3sk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'TestNeonPayConfigById' test.out

#- 380 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '{"clientID": "PtxMwqAHjAkfGd2B", "clientSecret": "O7RPYaACBMfO0Xbc", "returnUrl": "SowirO9ad7UJNTw4", "webHookId": "TVlSOA7hqkUzpJrf"}' \
    'vCl5rW530yMjnntV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'UpdatePayPalConfig' test.out

#- 381 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '6lxz46lnMr9kgHzp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'TestPayPalConfigById' test.out

#- 382 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["U1KgX7txYFVqqFEh", "ELz081Q4jTsZOfif", "LFOXzxoLgAvBNsJ2"], "publishableKey": "ndqYrqlR22SxGw0B", "secretKey": "BGpL3uAigOFar5Ve", "webhookSecret": "A5QE4kXQFZRL6YQz"}' \
    'BY5q2zpchS4nABQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'UpdateStripeConfig' test.out

#- 383 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'x7hXtj4En87TJ2E3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'TestStripeConfigById' test.out

#- 384 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '{"appId": "gIQhGe5QDctKW2dD", "key": "MadFf2HvnNcdQko2", "mchid": "4IrllBLgRbKXSWc1", "returnUrl": "FjcdL1VlSgxKddpV"}' \
    'jWORqaRaiKe3J6Mj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'UpdateWxPayConfig' test.out

#- 385 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'aTVKbc6MVnZY8ef4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'UpdateWxPayConfigCert' test.out

#- 386 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '30plDAbJOGJnISwk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'TestWxPayConfigById' test.out

#- 387 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '{"apiKey": "oUkEDT2ZbXq2jUhe", "flowCompletionUrl": "XRiR9ZCeUFWrh0jQ", "merchantId": 63, "projectId": 75, "projectSecretKey": "H6UuvOmu2ptkKPy0"}' \
    'GiWFWBkFOuRT7ull' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'UpdateXsollaConfig' test.out

#- 388 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'mbE3Pg5tjXYlq6UH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'TestXsollaConfigById' test.out

#- 389 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    'dvqlwMH6jkWzxyWS' \
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
    '{"aggregate": "ADYEN", "namespace": "8VEuKiETikSvZCHv", "region": "MYNoHqAWl82R5St1", "sandboxTaxJarApiToken": "JUUoBHxMWnM14FYc", "specials": ["WXPAY", "ADYEN", "CHECKOUT"], "taxJarApiToken": "IA2wJ5cEseHkDEsL", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
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
    '{"aggregate": "STRIPE", "namespace": "4jAc6zZYFC0mjfQG", "region": "tP1pKtlm5hUGLvZi", "sandboxTaxJarApiToken": "KzCHyQRSjODCVkXO", "specials": ["CHECKOUT", "WXPAY", "PAYPAL"], "taxJarApiToken": "knM82Js3MYpXMKKR", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    'nXfC8iy9QcGEKMT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'UpdatePaymentProviderConfig' test.out

#- 396 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'TWw1dhh6B7sXyB9Q' \
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
    '{"sandboxTaxJarApiToken": "dOnACUxcSQbRzuOG", "taxJarApiToken": "QIMxFKiXXSc289Q3", "taxJarEnabled": true, "taxJarProductCodesMapping": {"U7AARIZojppBuCbl": "NaT5zrESuLoU4WFf", "jqhTf020WVESn3Lq": "3vc3ONzvBgKDPEX7", "ZirJaKrszETGuWES": "PDCrsw8wGhpJWYgT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'UpdatePaymentTaxConfig' test.out

#- 399 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'BMAqnV7TlTDpCts9' \
    'eLzVbQmMiR5z2zAU' \
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
    'STeMo4h6vddaV7tl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetCategory' test.out

#- 403 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'GmSltmTF1Rc4FRD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetChildCategories' test.out

#- 404 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'FCFOkoXzSvPYqCnS' \
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
    'STEAM' \
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
    'WLkFEbz1aaXClnbK' \
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
    'hW1gHj8siRtfLBrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetItemBySku' test.out

#- 412 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'tMCUfRqPgqjqL5sO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetEstimatedPrice' test.out

#- 413 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'SWb72ObZi7fW369P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicBulkGetItems' test.out

#- 414 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["70k7NWSskBCzJpML", "gGkyOUdt4mzjhwLh", "UrgmZNHpDHS67dth"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicValidateItemPurchaseCondition' test.out

#- 415 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'QsFwNMAKYBTBZkul' \
    'sLmecCWLGmhIZeZa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicSearchItems' test.out

#- 416 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'nP0VcMDpu1IFvz6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetApp' test.out

#- 417 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'S0e11XX6rxljZ4aK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetItemDynamicData' test.out

#- 418 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'EWT3it8CuVPPqzB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetItem' test.out

#- 419 GetPaymentCustomization
eval_tap 0 419 'GetPaymentCustomization # SKIP deprecated' test.out

#- 420 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    '{"neonPayConfig": {"cancelUrl": "bxGCZTRsbLMecwQk", "successUrl": "E2St3jReFAEQ1wUc"}, "paymentOrderNo": "mmNn9QvtiE6T5Ro5", "paymentProvider": "PAYPAL", "returnUrl": "B4S56HA4d8Wj62EG", "ui": "WzEbs46rc22tQQij", "zipCode": "2Hme0GGfP6uytyYg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentUrl' test.out

#- 421 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'ZsusP2SPDjVIfftS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicGetPaymentMethods' test.out

#- 422 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'xnreb8TQnxnon3dB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetUnpaidPaymentOrder' test.out

#- 423 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '{"token": "05wGQYx86tv0QClm"}' \
    'xWgu3QfhTr7idEkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'Pay' test.out

#- 424 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'SnDGue6g9jqZCmyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicCheckPaymentOrderPaidStatus' test.out

#- 425 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'DQ83nAeUS40JxsNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'GetPaymentPublicConfig' test.out

#- 426 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'jSVGhlo6BJVxNK6m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetQRCode' test.out

#- 427 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '3dLvKKvOeLQJ1DfS' \
    'Jm9R8uKJWvSyKtpP' \
    'ADYEN' \
    '5Va0hLs3hBUqY3Yu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicNormalizePaymentReturnUrl' test.out

#- 428 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '7hr4BXCjFsJCGWDL' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'GetPaymentTaxValue' test.out

#- 429 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'XCmBpiOV9NIi9V27' \
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
    '0K70e3tmMl0aJwJF' \
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
    'aCvge5OzI8XNrSx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 435 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'JCxN4prJ1YNwelnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 436 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'OCI9YnUiShlx9Pk0' \
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
    '{"gameId": "8ti5dm4vsmWwxeV5", "language": "xU", "region": "2XD8kjryYdmc2Xym"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'SyncTwitchDropsEntitlement' test.out

#- 439 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'IObjRrxucZTOtfIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicGetMyWallet' test.out

#- 440 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'JrMOPwdUCtzH0oI7' \
    --body '{"epicGamesJwtToken": "IMo6jYsbXIs1j2kd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'SyncEpicGameDLC' test.out

#- 441 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'fY9jVoPTTfSopAH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'SyncOculusDLC' test.out

#- 442 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'k7WRbBnExLSlEBkI' \
    --body '{"serviceLabel": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicSyncPsnDlcInventory' test.out

#- 443 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '2rAgvMe8884Dt7OW' \
    --body '{"serviceLabels": [18, 27, 23]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 444 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '{"appId": "wxAYSodwJnbozMWX", "steamId": "k0IafEeZiiyd7fv9"}' \
    'BMDJjJPbrYcp304c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'SyncSteamDLC' test.out

#- 445 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Hsi4N013hrlkY0fX' \
    --body '{"xstsToken": "6m0y4oC4cK1B2rFx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'SyncXboxDLC' test.out

#- 446 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'EperuU9eQbEZT9w6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicQueryUserEntitlements' test.out

#- 447 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '03YcGu5NpJQGVsYA' \
    'cnwttayXhbtq3oxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicGetUserAppEntitlementByAppId' test.out

#- 448 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'WkWZM6QqbW0t691S' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 448 'PublicQueryUserEntitlementsByAppType' test.out

#- 449 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'Q1p0o3UycSZQVy88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 449 'PublicGetUserEntitlementsByIds' test.out

#- 450 PublicGetUserEntitlementByItemId
eval_tap 0 450 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 451 PublicGetUserEntitlementBySku
eval_tap 0 451 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 452 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'swSqo64vyAZWdK1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 452 'PublicUserEntitlementHistory' test.out

#- 453 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'qL00vgrlsz3iDMtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 453 'PublicExistsAnyUserActiveEntitlement' test.out

#- 454 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'Qb0e0hIOG3ck0l8m' \
    'OK0kpUyeNZKy2iBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 454 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 455 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'otCRSvH1Da6ph8fe' \
    'FAQdPnACAmtiWRzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 455 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 456 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'YJUsYMz1jDEdxhs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 456 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 457 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'Fxl7ZjEYGeuqo7IF' \
    'vww79F27fof6S1Re' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 457 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 458 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'hi3ZZ7d9vk8P3v6D' \
    'cFUnX1vw4uhVCqrs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 458 'PublicGetUserEntitlement' test.out

#- 459 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "options": ["1e0iPV2GPJGNNZWY", "wungysf4SyQNWypA", "rgnNk4jR91W8b8dx"], "requestId": "KhB5ONqCMxOPWwH1", "useCount": 5}' \
    'IfhGfCHQ5GTdjvw8' \
    'KQZ00gJM1CfnjdHJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 459 'PublicConsumeUserEntitlement' test.out

#- 460 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '{"requestId": "X3yCxhko4vfBfr53", "useCount": 92}' \
    '5lE0jBagsqbYaDkT' \
    'PschfQ2CAJpaYZ5X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 460 'PublicSellUserEntitlement' test.out

#- 461 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '{"metadata": {"operationSource": "INVENTORY"}, "useCount": 60}' \
    'kLfftq8TtIM2PLDN' \
    'r5OkNSeTuk5fLc0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 461 'PublicSplitUserEntitlement' test.out

#- 462 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "ovY832Umv7u1YlkQ", "metadata": {"operationSource": "INVENTORY"}, "useCount": 63}' \
    'at7hpJzqcjS6dJec' \
    'rL9CObVuorJ76tW1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 462 'PublicTransferUserEntitlement' test.out

#- 463 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '{"code": "Z81mWpRSn0leqHtC", "language": "pCPd", "region": "S3zEWcOfLKVkXlzM"}' \
    'BM5P7kt5p0cLeBVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 463 'PublicRedeemCode' test.out

#- 464 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": true, "language": "oIZ_voct", "productId": "A97ynMftNBV40Swj", "receiptData": "ryqo0RU6346MJE2Z", "region": "5gvfvhJoQ6KTnc70", "transactionId": "J3JNzhUB7BaWaCv0"}' \
    'yipDxA1dpehk0z89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 464 'PublicFulfillAppleIAPItem' test.out

#- 465 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'ChLggpl5I3N3i0ll' \
    --body '{"epicGamesJwtToken": "xVU5WZTOvW4MiVum"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 465 'SyncEpicGamesInventory' test.out

#- 466 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": true, "autoConsume": true, "language": "mgxK-tZnd", "orderId": "zwdLFexMsFUBv4AF", "packageName": "zMvefUJf082K6GVU", "productId": "NdcW7dNRHWkAYwtC", "purchaseTime": 25, "purchaseToken": "AC3TQnKBUx6yHTll", "region": "MN3QVCfIhWW0tEid", "subscriptionPurchase": false}' \
    'kx4iquJNnPR6izco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 466 'PublicFulfillGoogleIAPItem' test.out

#- 467 SyncOculusSubscriptions
$PYTHON -m $MODULE 'platform-sync-oculus-subscriptions' \
    't8gfvyFFGnP0iW9z' \
    --body '{"skus": ["zvYAiICmcuUGrDkQ", "9ODsNGS0vpz0yafO", "qaviwjyzt0XEbXHR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 467 'SyncOculusSubscriptions' test.out

#- 468 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'jjX4NiijpjEEO1Rc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 468 'SyncOculusConsumableEntitlements' test.out

#- 469 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'LcC8hsGfl7IuTJQE' \
    --body '{"currencyCode": "KrFlYRqsqgjU2fbW", "price": 0.23639440452428284, "productId": "dixRnSpY8HLcl4PC", "serviceLabel": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 469 'PublicReconcilePlayStationStore' test.out

#- 470 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "Whq4MfYlNV4JpSaj", "price": 0.27979219325972016, "productId": "b3kPqQwgme45avoS", "serviceLabels": [31, 55, 23]}' \
    'I7CQFMHMXlXqzLTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 470 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 471 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '{"appId": "9oE0P2GCMDAQtHC3", "currencyCode": "JC2VNhGT7fhjYQTM", "language": "CAe-WnBJ-bh", "price": 0.019302833580333245, "productId": "tYb7GaKj6QP6jhS3", "region": "RZ15D9RU0J0HlMUa", "steamId": "ZV3EkagoWRp32s9D"}' \
    'ziqKI1QAQ7pb7a65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 471 'SyncSteamInventory' test.out

#- 472 SyncSteamAbnormalTransaction
$PYTHON -m $MODULE 'platform-sync-steam-abnormal-transaction' \
    'HnETCgoe1sa8B0Wy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 472 'SyncSteamAbnormalTransaction' test.out

#- 473 SyncSteamIAPByTransaction
$PYTHON -m $MODULE 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "1wLXiwamQkC3DHWO"}' \
    'JXJFWjPFtofaaD5X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 473 'SyncSteamIAPByTransaction' test.out

#- 474 PublicQueryUserThirdPartySubscription
$PYTHON -m $MODULE 'platform-public-query-user-third-party-subscription' \
    'EPICGAMES' \
    'nbIpgGJCFSSaM4EA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 474 'PublicQueryUserThirdPartySubscription' test.out

#- 475 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "2hzRRHPb1WjOycy9", "language": "llj-TWdW", "region": "OTronWgtTV5xsbAF"}' \
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
    '{"currencyCode": "15aVXZDvfYUjbqSQ", "discountCodes": ["uHgrLNCsHpdK7Kga", "JrNfKBCmfOZfEEtp", "ESwKuxLG6SLbij0Z"], "discountedPrice": 3, "itemId": "3mQRlpuV8Pupz5nX", "price": 46, "quantity": 85}' \
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
