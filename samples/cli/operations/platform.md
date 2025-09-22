## Python Extend SDK CLI Sample App Operation Index for Platform service.

### Operation `list_fulfillment_scripts`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-fulfillment-scripts' \
    > result.txt
```

### Operation `get_fulfillment_script`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-fulfillment-script' \
    'string' \
    > result.txt
```

### Operation `create_fulfillment_script`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-fulfillment-script' \
    'string' \
    --body '{"grantDays": "string"}' \
    > result.txt
```

### Operation `delete_fulfillment_script`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-fulfillment-script' \
    'string' \
    > result.txt
```

### Operation `update_fulfillment_script`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-fulfillment-script' \
    'string' \
    --body '{"grantDays": "string"}' \
    > result.txt
```

### Operation `list_item_type_configs`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-item-type-configs' \
    > result.txt
```

### Operation `create_item_type_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-item-type-config' \
    '{"clazz": "string", "dryRun": false, "fulfillmentUrl": "string", "itemType": "APP", "purchaseConditionUrl": "string"}' \
    > result.txt
```

### Operation `search_item_type_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-search-item-type-config' \
    'APP' \
    --clazz 'string' \
    > result.txt
```

### Operation `get_item_type_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item-type-config' \
    'string' \
    > result.txt
```

### Operation `update_item_type_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-item-type-config' \
    '{"clazz": "string", "dryRun": false, "fulfillmentUrl": "string", "purchaseConditionUrl": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_item_type_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-item-type-config' \
    'string' \
    > result.txt
```

### Operation `query_campaigns`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-campaigns' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --tag 'string' \
    > result.txt
```

### Operation `create_campaign`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-campaign' \
    '{"description": "string", "discountConfig": {}, "items": [{}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 1, "name": "string", "redeemEnd": "2000-01-01T12:34:56Z", "redeemStart": "2000-01-01T12:34:56Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["string"], "type": "REDEMPTION"}' \
    'string' \
    > result.txt
```

### Operation `get_campaign`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-campaign' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_campaign`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-campaign' \
    '{"description": "string", "discountConfig": {}, "items": [{}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 1, "name": "string", "redeemEnd": "2000-01-01T12:34:56Z", "redeemStart": "2000-01-01T12:34:56Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `rename_batch`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-rename-batch' \
    '{"newName": "string", "oldName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_campaign_batch_names`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-campaign-batch-names' \
    'string' \
    'string' \
    --batch_name 'string' \
    --limit 1 \
    > result.txt
```

### Operation `get_campaign_dynamic`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-campaign-dynamic' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_catalog_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-catalog-config' \
    'string' \
    > result.txt
```

### Operation `update_catalog_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-catalog-config' \
    '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CAMPAIGN"]}' \
    'string' \
    > result.txt
```

### Operation `get_loot_box_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-loot-box-plugin-config' \
    'string' \
    > result.txt
```

### Operation `update_loot_box_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-loot-box-plugin-config' \
    '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    'string' \
    > result.txt
```

### Operation `delete_loot_box_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-loot-box-plugin-config' \
    'string' \
    > result.txt
```

### Operation `uplod_loot_box_plugin_config_cert`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-uplod-loot-box-plugin-config-cert' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_loot_box_grpc_info`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-loot-box-grpc-info' \
    'string' \
    --force false \
    > result.txt
```

### Operation `get_section_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-section-plugin-config' \
    'string' \
    > result.txt
```

### Operation `update_section_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-section-plugin-config' \
    '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    'string' \
    > result.txt
```

### Operation `delete_section_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-section-plugin-config' \
    'string' \
    > result.txt
```

### Operation `upload_section_plugin_config_cert`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-upload-section-plugin-config-cert' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_root_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-root-categories' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `create_category`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-category' \
    '{"categoryPath": "string", "localizationDisplayNames": {"string": "string"}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_categories_basic`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-categories-basic' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_category`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-category' \
    'string' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `update_category`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-category' \
    '{"localizationDisplayNames": {"string": "string"}}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_category`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-category' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_child_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-child-categories' \
    'string' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_descendant_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-descendant-categories' \
    'string' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `query_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-codes' \
    'string' \
    'string' \
    --active_only false \
    --batch_name 'string' \
    --batch_no '[1]' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --with_batch_name false \
    > result.txt
```

### Operation `create_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-codes' \
    '{"batchName": "string", "codeValue": "string", "quantity": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `download`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-download' \
    'string' \
    'string' \
    --batch_name 'string' \
    --batch_no '[1]' \
    --with_batch_name false \
    > result.txt
```

### Operation `bulk_disable_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-disable-codes' \
    'string' \
    'string' \
    --batch_name 'string' \
    --batch_no '[1]' \
    > result.txt
```

### Operation `bulk_enable_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-enable-codes' \
    'string' \
    'string' \
    --batch_name 'string' \
    --batch_no '[1]' \
    > result.txt
```

### Operation `query_redeem_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-redeem-history' \
    'string' \
    'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --user_id 'string' \
    > result.txt
```

### Operation `get_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-code' \
    'string' \
    'string' \
    --redeemable false \
    --with_batch_name false \
    > result.txt
```

### Operation `disable_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-disable-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `enable_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-enable-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_currencies`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-currencies' \
    'string' \
    --currency_type 'REAL' \
    > result.txt
```

### Operation `create_currency`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-currency' \
    '{"currencyCode": "string", "currencySymbol": "string", "currencyType": "REAL", "decimals": 1, "localizationDescriptions": {"string": "string"}}' \
    'string' \
    > result.txt
```

### Operation `update_currency`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-currency' \
    '{"localizationDescriptions": {"string": "string"}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_currency`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-currency' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_currency_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-currency-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_currency_summary`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-currency-summary' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_dlc_item_config_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-dlc-item-config-history' \
    'string' \
    'string' \
    > result.txt
```

### Operation `restore_dlc_item_config_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-restore-dlc-item-config-history' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_dlc_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-dlc-item-config' \
    'string' \
    > result.txt
```

### Operation `update_dlc_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-dlc-item-config' \
    '{"data": [{}]}' \
    'string' \
    > result.txt
```

### Operation `delete_dlc_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-dlc-item-config' \
    'string' \
    > result.txt
```

### Operation `get_platform_dlc_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-platform-dlc-config' \
    'string' \
    > result.txt
```

### Operation `update_platform_dlc_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-platform-dlc-config' \
    '{"data": [{}]}' \
    'string' \
    > result.txt
```

### Operation `delete_platform_dlc_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-platform-dlc-config' \
    'string' \
    > result.txt
```

### Operation `query_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-entitlements' \
    'string' \
    --active_only false \
    --app_type 'DEMO' \
    --entitlement_clazz 'APP' \
    --entitlement_name 'string' \
    --item_id '["string"]' \
    --limit 1 \
    --offset 1 \
    --origin 'Epic' \
    --user_id 'string' \
    > result.txt
```

### Operation `query_entitlements_by_item_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-entitlements-by-item-ids' \
    'string' \
    --active_only false \
    --item_ids '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `enable_entitlement_origin_feature`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-enable-entitlement-origin-feature' \
    'string' \
    > result.txt
```

### Operation `get_entitlement_config_info`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-entitlement-config-info' \
    'string' \
    --without_cache false \
    > result.txt
```

### Operation `grant_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-grant-entitlements' \
    '{"entitlementGrantList": [{}], "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `revoke_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-entitlements' \
    'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `get_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-entitlement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_fulfillment_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-fulfillment-histories' \
    'string' \
    --limit 1 \
    --offset 1 \
    --status 'FAIL' \
    --user_id 'string' \
    > result.txt
```

### Operation `query_iap_clawback_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-iap-clawback-history' \
    'string' \
    --end_time 'string' \
    --event_type 'CHARGEBACK' \
    --external_order_id 'string' \
    --limit 1 \
    --offset 1 \
    --start_time 'string' \
    --status 'FAIL' \
    --user_id 'string' \
    > result.txt
```

### Operation `mock_play_station_stream_event`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-mock-play-station-stream-event' \
    'string' \
    --body '{"body": {}, "eventDomain": "string", "eventSource": "string", "eventType": "string", "eventVersion": 1, "id": "string", "timestamp": "string"}' \
    > result.txt
```

### Operation `mock_xbl_clawback_event`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-mock-xbl-clawback-event' \
    'string' \
    --body '{"data": {}, "datacontenttype": "string", "id": "string", "source": "string", "specVersion": "string", "subject": "string", "time": "string", "traceparent": "string", "type": "string"}' \
    > result.txt
```

### Operation `get_apple_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-apple-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_apple_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-apple-iap-config' \
    '{"appAppleId": 1, "bundleId": "string", "issuerId": "string", "keyId": "string", "password": "string", "version": "V1"}' \
    'string' \
    > result.txt
```

### Operation `delete_apple_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-apple-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_apple_p8_file`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-apple-p8-file' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_epic_games_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-epic-games-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_epic_games_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-epic-games-iap-config' \
    '{"sandboxId": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_epic_games_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-epic-games-iap-config' \
    'string' \
    > result.txt
```

### Operation `get_google_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-google-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_google_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-google-iap-config' \
    '{"applicationName": "string", "notificationTokenAudience": "string", "notificationTokenEmail": "string", "packageName": "string", "serviceAccountId": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_google_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-google-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_google_p12_file`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-google-p12-file' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_iap_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-iap-item-config' \
    'string' \
    > result.txt
```

### Operation `update_iap_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-iap-item-config' \
    '{"data": [{}]}' \
    'string' \
    > result.txt
```

### Operation `delete_iap_item_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-iap-item-config' \
    'string' \
    > result.txt
```

### Operation `get_oculus_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-oculus-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_oculus_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-oculus-iap-config' \
    '{"appId": "string", "appSecret": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_oculus_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-oculus-iap-config' \
    'string' \
    > result.txt
```

### Operation `get_play_station_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-play-station-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_playstation_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-playstation-iap-config' \
    '{"backOfficeServerClientId": "string", "backOfficeServerClientSecret": "string", "enableStreamJob": false, "environment": "string", "streamName": "string", "streamPartnerName": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_playstation_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-playstation-iap-config' \
    'string' \
    > result.txt
```

### Operation `validate_existed_playstation_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-validate-existed-playstation-iap-config' \
    'string' \
    > result.txt
```

### Operation `validate_playstation_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-validate-playstation-iap-config' \
    '{"backOfficeServerClientId": "string", "backOfficeServerClientSecret": "string", "enableStreamJob": false, "environment": "string", "streamName": "string", "streamPartnerName": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_steam_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-steam-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_steam_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-steam-iap-config' \
    '{"appId": "string", "env": "LIVE", "publisherAuthenticationKey": "string", "syncMode": "INVENTORY"}' \
    'string' \
    > result.txt
```

### Operation `delete_steam_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-steam-iap-config' \
    'string' \
    > result.txt
```

### Operation `get_twitch_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-twitch-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_twitch_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-twitch-iap-config' \
    '{"clientId": "string", "clientSecret": "string", "organizationId": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_twitch_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-twitch-iap-config' \
    'string' \
    > result.txt
```

### Operation `get_xbl_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-xbl-iap-config' \
    'string' \
    > result.txt
```

### Operation `update_xbl_iap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-xbl-iap-config' \
    '{"enableClawback": false, "entraAppClientId": "string", "entraAppClientSecret": "string", "entraTenantId": "string", "relyingPartyCert": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_xbl_ap_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-xbl-ap-config' \
    'string' \
    > result.txt
```

### Operation `update_xbl_bp_cert_file`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-xbl-bp-cert-file' \
    'string' \
    --file 'tmp.dat' \
    --password 'string' \
    > result.txt
```

### Operation `query_third_party_notifications`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-third-party-notifications' \
    'string' \
    --end_date 'string' \
    --external_id 'string' \
    --limit 1 \
    --offset 1 \
    --source 'APPLE' \
    --start_date 'string' \
    --status 'ERROR' \
    --type 'string' \
    > result.txt
```

### Operation `query_abnormal_transactions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-abnormal-transactions' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order_id 'string' \
    --steam_id 'string' \
    > result.txt
```

### Operation `admin_get_steam_job_info`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-get-steam-job-info' \
    'string' \
    > result.txt
```

### Operation `admin_reset_steam_job_time`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-reset-steam-job-time' \
    '{"env": "LIVE", "lastTime": "2000-01-01T12:34:56Z"}' \
    'string' \
    > result.txt
```

### Operation `admin_refund_iap_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-refund-iap-order' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_steam_report_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-steam-report-histories' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order_id 'string' \
    --process_status 'ERROR' \
    --steam_id 'string' \
    > result.txt
```

### Operation `query_third_party_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-third-party-subscription' \
    'string' \
    --active_only false \
    --group_id 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --product_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_iap_order_consume_details`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-iap-order-consume-details' \
    'string' \
    'string' \
    > result.txt
```

### Operation `download_invoice_details`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-download-invoice-details' \
    'string' \
    'string' \
    'string' \
    'string' \
    'APP' \
    'string' \
    > result.txt
```

### Operation `generate_invoice_summary`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-generate-invoice-summary' \
    'string' \
    'string' \
    'string' \
    'string' \
    'APP' \
    'string' \
    > result.txt
```

### Operation `sync_in_game_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-in-game-item' \
    '{"categoryPath": "string", "targetItemId": "string", "targetNamespace": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-item' \
    '{"appId": "string", "appType": "DEMO", "baseAppId": "string", "boothName": "string", "categoryPath": "string", "clazz": "string", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"string": {}}, "features": ["string"], "flexible": false, "images": [{}], "inventoryConfig": {}, "itemIds": ["string"], "itemQty": {"string": 1}, "itemType": "APP", "listable": false, "localizations": {"string": {}}, "lootBoxConfig": {}, "maxCount": 1, "maxCountPerUser": 1, "name": "string", "optionBoxConfig": {}, "purchasable": false, "recurring": {}, "regionData": {"string": []}, "saleConfig": {}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "string", "stackable": false, "status": "ACTIVE", "tags": ["string"], "targetCurrencyCode": "string", "targetNamespace": "string", "thumbnailUrl": "string", "useCount": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_item_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item-by-app-id' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `query_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-items' \
    'string' \
    --active_only false \
    --app_type 'DEMO' \
    --available_date 'string' \
    --base_app_id 'string' \
    --category_path 'string' \
    --features 'string' \
    --include_sub_category_item false \
    --item_type 'APP' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --sort_by '["name"]' \
    --store_id 'string' \
    --tags 'string' \
    --target_namespace 'string' \
    > result.txt
```

### Operation `list_basic_items_by_features`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-basic-items-by-features' \
    'string' \
    --active_only false \
    --features '["string"]' \
    > result.txt
```

### Operation `get_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-items' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `get_item_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item-by-sku' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `get_locale_item_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-locale-item-by-sku' \
    'string' \
    'string' \
    --active_only false \
    --language 'string' \
    --populate_bundle false \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_estimated_price`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-estimated-price' \
    'string' \
    'string' \
    'string' \
    --platform 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_item_id_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item-id-by-sku' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `get_bulk_item_id_by_skus`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-bulk-item-id-by-skus' \
    'string' \
    --sku '["string"]' \
    --store_id 'string' \
    > result.txt
```

### Operation `bulk_get_locale_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-get-locale-items' \
    'string' \
    'string' \
    --active_only false \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_available_predicate_types`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-available-predicate-types' \
    'string' \
    > result.txt
```

### Operation `validate_item_purchase_condition`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-validate-item-purchase-condition' \
    '{"itemIds": ["string"]}' \
    'string' \
    'string' \
    --platform 'string' \
    > result.txt
```

### Operation `bulk_update_region_data`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-update-region-data' \
    'string' \
    'string' \
    --body '{"changes": [{}]}' \
    > result.txt
```

### Operation `search_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-search-items' \
    'string' \
    'string' \
    'string' \
    --active_only false \
    --item_type 'APP' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `query_uncategorized_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-uncategorized-items' \
    'string' \
    --active_only false \
    --limit 1 \
    --offset 1 \
    --sort_by '["name"]' \
    --store_id 'string' \
    > result.txt
```

### Operation `get_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `update_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-item' \
    '{"appId": "string", "appType": "DEMO", "baseAppId": "string", "boothName": "string", "categoryPath": "string", "clazz": "string", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"string": {}}, "features": ["string"], "flexible": false, "images": [{}], "inventoryConfig": {}, "itemIds": ["string"], "itemQty": {"string": 1}, "itemType": "APP", "listable": false, "localizations": {"string": {}}, "lootBoxConfig": {}, "maxCount": 1, "maxCountPerUser": 1, "name": "string", "optionBoxConfig": {}, "purchasable": false, "recurring": {}, "regionData": {"string": []}, "saleConfig": {}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "string", "stackable": false, "status": "ACTIVE", "tags": ["string"], "targetCurrencyCode": "string", "targetNamespace": "string", "thumbnailUrl": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-item' \
    'string' \
    'string' \
    --features_to_check '["CAMPAIGN"]' \
    --force false \
    --store_id 'string' \
    > result.txt
```

### Operation `acquire_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-acquire-item' \
    '{"count": 1, "orderNo": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_app`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-app' \
    'string' \
    'string' \
    --active_only false \
    --store_id 'string' \
    > result.txt
```

### Operation `update_app`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-app' \
    '{"carousel": [{}], "developer": "string", "forumUrl": "string", "genres": ["Action"], "localizations": {"string": {}}, "platformRequirements": {"string": []}, "platforms": ["Android"], "players": ["Coop"], "primaryGenre": "Action", "publisher": "string", "releaseDate": "2000-01-01T12:34:56Z", "websiteUrl": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `disable_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-disable-item' \
    'string' \
    'string' \
    'string' \
    --body '{"featuresToCheck": ["CAMPAIGN"]}' \
    > result.txt
```

### Operation `get_item_dynamic_data`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-item-dynamic-data' \
    'string' \
    'string' \
    > result.txt
```

### Operation `enable_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-enable-item' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `feature_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-feature-item' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `defeature_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-defeature-item' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_locale_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-locale-item' \
    'string' \
    'string' \
    --active_only false \
    --language 'string' \
    --populate_bundle false \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `update_item_purchase_condition`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-item-purchase-condition' \
    '{"purchaseCondition": {}}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_item_references`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-item-references' \
    'string' \
    'string' \
    --features_to_check '["CAMPAIGN"]' \
    --store_id 'string' \
    > result.txt
```

### Operation `return_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-return-item' \
    '{"orderNo": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_key_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-key-groups' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --tag 'string' \
    > result.txt
```

### Operation `create_key_group`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-key-group' \
    '{"description": "string", "name": "string", "status": "ACTIVE", "tags": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_key_group`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-key-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_key_group`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-key-group' \
    '{"description": "string", "name": "string", "status": "ACTIVE", "tags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_key_group_dynamic`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-key-group-dynamic' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_keys`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-keys' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --status 'ACQUIRED' \
    > result.txt
```

### Operation `upload_keys`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-upload-keys' \
    'string' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `query_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-orders' \
    'string' \
    --end_time 'string' \
    --limit 1 \
    --offset 1 \
    --order_nos '["string"]' \
    --sort_by 'string' \
    --start_time 'string' \
    --status 'CHARGEBACK' \
    --with_total false \
    > result.txt
```

### Operation `get_order_statistics`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-order-statistics' \
    'string' \
    > result.txt
```

### Operation `get_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-order' \
    'string' \
    'string' \
    > result.txt
```

### Operation `refund_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-refund-order' \
    '{"description": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_payment_merchant_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-merchant-config' \
    'string' \
    > result.txt
```

### Operation `update_payment_domain_whitelist_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-payment-domain-whitelist-config' \
    '{"domains": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `query_payment_notifications`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-payment-notifications' \
    'string' \
    --end_date 'string' \
    --external_id 'string' \
    --limit 1 \
    --notification_source 'ADYEN' \
    --notification_type 'string' \
    --offset 1 \
    --payment_order_no 'string' \
    --start_date 'string' \
    --status 'ERROR' \
    > result.txt
```

### Operation `query_payment_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-payment-orders' \
    'string' \
    --channel 'EXTERNAL' \
    --ext_tx_id 'string' \
    --limit 1 \
    --offset 1 \
    --status 'AUTHORISED' \
    > result.txt
```

### Operation `create_payment_order_by_dedicated`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-payment-order-by-dedicated' \
    '{"currencyCode": "string", "currencyNamespace": "string", "customParameters": {"string": {}}, "description": "string", "extOrderNo": "string", "extUserId": "string", "itemType": "APP", "language": "string", "metadata": {"string": "string"}, "notifyUrl": "string", "omitNotification": false, "platform": "string", "price": 1, "recurringPaymentOrderNo": "string", "region": "string", "returnUrl": "string", "sandbox": false, "sku": "string", "subscriptionId": "string", "targetNamespace": "string", "targetUserId": "string", "title": "string"}' \
    'string' \
    > result.txt
```

### Operation `list_ext_order_no_by_ext_tx_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-ext-order-no-by-ext-tx-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_payment_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-order' \
    'string' \
    'string' \
    > result.txt
```

### Operation `charge_payment_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-charge-payment-order' \
    '{"extTxId": "string", "paymentMethod": "string", "paymentProvider": "ADYEN"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `refund_payment_order_by_dedicated`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-refund-payment-order-by-dedicated' \
    '{"description": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `simulate_payment_order_notification`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-simulate-payment-order-notification' \
    '{"amount": 1, "currencyCode": "string", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 1, "vat": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_payment_order_charge_status`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-order-charge-status' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_psn_entitlement_ownership`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-psn-entitlement-ownership' \
    '{"accessToken": "string", "serviceLabel": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_xbox_entitlement_ownership`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-xbox-entitlement-ownership' \
    '{"delegationToken": "string", "sandboxId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_platform_entitlement_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-platform-entitlement-config' \
    'string' \
    'Epic' \
    > result.txt
```

### Operation `update_platform_entitlement_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-platform-entitlement-config' \
    '{"allowedPlatformOrigins": ["Epic"]}' \
    'string' \
    'Epic' \
    > result.txt
```

### Operation `get_platform_wallet_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-platform-wallet-config' \
    'string' \
    'Epic' \
    > result.txt
```

### Operation `update_platform_wallet_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-platform-wallet-config' \
    '{"allowedBalanceOrigins": ["Epic"]}' \
    'string' \
    'Epic' \
    > result.txt
```

### Operation `reset_platform_wallet_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-reset-platform-wallet-config' \
    'string' \
    'Epic' \
    > result.txt
```

### Operation `get_revocation_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-revocation-config' \
    'string' \
    > result.txt
```

### Operation `update_revocation_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-revocation-config' \
    '{"entitlement": {}, "wallet": {}}' \
    'string' \
    > result.txt
```

### Operation `delete_revocation_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-revocation-config' \
    'string' \
    > result.txt
```

### Operation `query_revocation_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-revocation-histories' \
    'string' \
    --end_time 'string' \
    --limit 1 \
    --offset 1 \
    --source 'DLC' \
    --start_time 'string' \
    --status 'FAIL' \
    --transaction_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_revocation_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-revocation-plugin-config' \
    'string' \
    > result.txt
```

### Operation `update_revocation_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-revocation-plugin-config' \
    '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    'string' \
    > result.txt
```

### Operation `delete_revocation_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-revocation-plugin-config' \
    'string' \
    > result.txt
```

### Operation `upload_revocation_plugin_config_cert`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-upload-revocation-plugin-config-cert' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `create_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-reward' \
    '{"description": "string", "eventTopic": "string", "maxAwarded": 1, "maxAwardedPerUser": 1, "namespaceExpression": "string", "rewardCode": "string", "rewardConditions": [{}], "userIdExpression": "string"}' \
    'string' \
    > result.txt
```

### Operation `query_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-rewards' \
    'string' \
    --event_topic 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by '["namespace"]' \
    > result.txt
```

### Operation `export_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-export-rewards' \
    'string' \
    > result.txt
```

### Operation `import_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-import-rewards' \
    'string' \
    false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-reward' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-reward' \
    '{"description": "string", "eventTopic": "string", "maxAwarded": 1, "maxAwardedPerUser": 1, "namespaceExpression": "string", "rewardCode": "string", "rewardConditions": [{}], "userIdExpression": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-reward' \
    'string' \
    'string' \
    > result.txt
```

### Operation `check_event_condition`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-check-event-condition' \
    'string' \
    'string' \
    --body '{"payload": {"string": {}}}' \
    > result.txt
```

### Operation `delete_reward_condition_record`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-reward-condition-record' \
    '{"conditionName": "string", "userId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_sections`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-sections' \
    'string' \
    --end 'string' \
    --limit 1 \
    --offset 1 \
    --start 'string' \
    --store_id 'string' \
    --view_id 'string' \
    > result.txt
```

### Operation `create_section`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-section' \
    '{"active": false, "displayOrder": 1, "endDate": "2000-01-01T12:34:56Z", "ext": {"string": {}}, "fixedPeriodRotationConfig": {}, "items": [{}], "localizations": {"string": {}}, "name": "string", "rotationType": "CUSTOM", "startDate": "2000-01-01T12:34:56Z", "viewId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `purge_expired_section`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-purge-expired-section' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_section`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-section' \
    'string' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `update_section`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-section' \
    '{"active": false, "displayOrder": 1, "endDate": "2000-01-01T12:34:56Z", "ext": {"string": {}}, "fixedPeriodRotationConfig": {}, "items": [{}], "localizations": {"string": {}}, "name": "string", "rotationType": "CUSTOM", "startDate": "2000-01-01T12:34:56Z", "viewId": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_section`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-section' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_stores`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-stores' \
    'string' \
    > result.txt
```

### Operation `create_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-store' \
    '{"defaultLanguage": "string", "defaultRegion": "string", "description": "string", "supportedLanguages": ["string"], "supportedRegions": ["string"], "title": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_catalog_definition`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-catalog-definition' \
    'string' \
    'APP' \
    > result.txt
```

### Operation `download_csv_templates`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-download-csv-templates' \
    'string' \
    > result.txt
```

### Operation `export_store_by_csv`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-export-store-by-csv' \
    '{"catalogType": "APP", "fieldsToBeIncluded": ["string"], "idsToBeExported": ["string"], "storeId": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_published_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-published-store' \
    'string' \
    > result.txt
```

### Operation `delete_published_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-published-store' \
    'string' \
    > result.txt
```

### Operation `get_published_store_backup`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-published-store-backup' \
    'string' \
    > result.txt
```

### Operation `rollback_published_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-rollback-published-store' \
    'string' \
    > result.txt
```

### Operation `get_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-store' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-store' \
    '{"defaultLanguage": "string", "defaultRegion": "string", "description": "string", "supportedLanguages": ["string"], "supportedRegions": ["string"], "title": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-store' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_changes`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-changes' \
    'string' \
    'string' \
    --action 'CREATE' \
    --item_sku 'string' \
    --item_type 'APP' \
    --limit 1 \
    --offset 1 \
    --selected false \
    --sort_by '["createdAt"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updated_at_end 'string' \
    --updated_at_start 'string' \
    --with_total false \
    > result.txt
```

### Operation `publish_all`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-publish-all' \
    'string' \
    'string' \
    > result.txt
```

### Operation `publish_selected`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-publish-selected' \
    'string' \
    'string' \
    > result.txt
```

### Operation `select_all_records`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-select-all-records' \
    'string' \
    'string' \
    > result.txt
```

### Operation `select_all_records_by_criteria`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-select-all-records-by-criteria' \
    'string' \
    'string' \
    --action 'CREATE' \
    --item_sku 'string' \
    --item_type 'APP' \
    --selected false \
    --type 'CATEGORY' \
    --updated_at_end 'string' \
    --updated_at_start 'string' \
    > result.txt
```

### Operation `get_statistic`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-statistic' \
    'string' \
    'string' \
    --action 'CREATE' \
    --item_sku 'string' \
    --item_type 'APP' \
    --type 'CATEGORY' \
    --updated_at_end 'string' \
    --updated_at_start 'string' \
    > result.txt
```

### Operation `unselect_all_records`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-unselect-all-records' \
    'string' \
    'string' \
    > result.txt
```

### Operation `select_record`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-select-record' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `unselect_record`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-unselect-record' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `clone_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-clone-store' \
    'string' \
    'string' \
    --target_store_id 'string' \
    > result.txt
```

### Operation `query_import_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-import-history' \
    'string' \
    'string' \
    --end 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --start 'string' \
    --success false \
    > result.txt
```

### Operation `import_store_by_csv`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-import-store-by-csv' \
    'string' \
    'string' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'string' \
    --section 'tmp.dat' \
    > result.txt
```

### Operation `query_subscriptions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-subscriptions' \
    'string' \
    --charge_status 'CHARGED' \
    --item_id 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribed_by 'PLATFORM' \
    --user_id 'string' \
    > result.txt
```

### Operation `recurring_charge_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-recurring-charge-subscription' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_ticket_dynamic`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-ticket-dynamic' \
    'string' \
    'string' \
    > result.txt
```

### Operation `decrease_ticket_sale`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-decrease-ticket-sale' \
    '{"orderNo": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_ticket_booth_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-ticket-booth-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `increase_ticket_sale`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-increase-ticket-sale' \
    '{"count": 1, "orderNo": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `commit`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-commit' \
    '{"actions": [{}], "metadata": {"string": {}}, "needPreCheck": false, "transactionId": "string", "type": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_trade_history_by_criteria`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-trade-history-by-criteria' \
    'string' \
    --limit 1 \
    --offset 1 \
    --status 'FAILED' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_trade_history_by_transaction_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-trade-history-by-transaction-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `unlock_steam_user_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-unlock-steam-user-achievement' \
    '{"achievements": [{}], "steamUserId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_xbl_user_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-xbl-user-achievements' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_xbl_user_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-xbl-user-achievement' \
    '{"achievements": [{}], "serviceConfigId": "string", "titleId": "string", "xboxUserId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_campaign`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-campaign' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-entitlement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_fulfillment`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-fulfillment' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_integration`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-integration' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-order' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_payment`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-payment' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_revocation`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-revocation' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-subscription' \
    'string' \
    'string' \
    > result.txt
```

### Operation `anonymize_wallet`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-anonymize-wallet' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_dlc_by_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-dlc-by-platform' \
    'string' \
    'string' \
    'EPICGAMES' \
    > result.txt
```

### Operation `get_user_dlc`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-dlc' \
    'string' \
    'string' \
    --include_all_namespaces false \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > result.txt
```

### Operation `query_user_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-entitlements' \
    'string' \
    'string' \
    --active_only false \
    --app_type 'DEMO' \
    --collection_id 'string' \
    --entitlement_clazz 'APP' \
    --entitlement_name 'string' \
    --features '["string"]' \
    --fuzzy_match_name false \
    --ignore_active_date false \
    --item_id '["string"]' \
    --limit 1 \
    --offset 1 \
    --origin 'Epic' \
    > result.txt
```

### Operation `grant_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-grant-user-entitlement' \
    '[{"collectionId": "string", "endDate": "2000-01-01T12:34:56Z", "grantedCode": "string", "itemId": "string", "itemNamespace": "string", "language": "string", "metadata": {"string": {}}, "origin": "Epic", "quantity": 1, "region": "string", "source": "ACHIEVEMENT", "startDate": "2000-01-01T12:34:56Z", "storeId": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_app_entitlement_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-app-entitlement-by-app-id' \
    'string' \
    'string' \
    'string' \
    --active_only false \
    > result.txt
```

### Operation `query_user_entitlements_by_app_type`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-entitlements-by-app-type' \
    'string' \
    'string' \
    'DEMO' \
    --active_only false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_entitlements_by_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlements-by-ids' \
    'string' \
    'string' \
    --ids '["string"]' \
    > result.txt
```

### Operation `get_user_entitlement_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-by-item-id' \
    'string' \
    'string' \
    'string' \
    --active_only false \
    --entitlement_clazz 'APP' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_active_entitlements_by_item_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-active-entitlements-by-item-ids' \
    'string' \
    'string' \
    --ids '["string"]' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_entitlement_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-by-sku' \
    'string' \
    'string' \
    'string' \
    --active_only false \
    --entitlement_clazz 'APP' \
    --platform 'string' \
    > result.txt
```

### Operation `exists_any_user_active_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-exists-any-user-active-entitlement' \
    'string' \
    'string' \
    --app_ids '["string"]' \
    --item_ids '["string"]' \
    --platform 'string' \
    --skus '["string"]' \
    > result.txt
```

### Operation `exists_any_user_active_entitlement_by_item_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'string' \
    'string' \
    '["string"]' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_app_entitlement_ownership_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-ownership-by-item-id' \
    'string' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_item_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-ownership-by-item-ids' \
    'string' \
    'string' \
    --ids '["string"]' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-ownership-by-sku' \
    'string' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    --platform 'string' \
    > result.txt
```

### Operation `revoke_all_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-all-entitlements' \
    'string' \
    'string' \
    > result.txt
```

### Operation `revoke_user_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-user-entitlements' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-user-entitlement' \
    '{"collectionId": "string", "endDate": "2000-01-01T12:34:56Z", "nullFieldList": ["string"], "origin": "Epic", "reason": "string", "startDate": "2000-01-01T12:34:56Z", "status": "ACTIVE", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `consume_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-consume-user-entitlement' \
    '{"metadata": {"string": {}}, "options": ["string"], "platform": "string", "requestId": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `disable_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-disable-user-entitlement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `enable_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-enable-user-entitlement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_entitlement_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-entitlement-histories' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `revoke_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-user-entitlement' \
    'string' \
    'string' \
    'string' \
    --body '{"metadata": {"string": {}}}' \
    > result.txt
```

### Operation `revoke_user_entitlement_by_use_count`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-user-entitlement-by-use-count' \
    '{"reason": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `pre_check_revoke_user_entitlement_by_use_count`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'string' \
    'string' \
    'string' \
    1 \
    > result.txt
```

### Operation `sell_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sell-user-entitlement' \
    '{"platform": "string", "requestId": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fulfill_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-fulfill-item' \
    '{"duration": 1, "endDate": "2000-01-01T12:34:56Z", "entitlementCollectionId": "string", "entitlementOrigin": "Epic", "itemId": "string", "itemSku": "string", "language": "string", "metadata": {"string": {}}, "order": {}, "orderNo": "string", "origin": "Epic", "overrideBundleItemQty": {"string": 1}, "quantity": 1, "region": "string", "source": "ACHIEVEMENT", "startDate": "2000-01-01T12:34:56Z", "storeId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `redeem_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-redeem-code' \
    '{"code": "string", "language": "string", "region": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `pre_check_fulfill_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-pre-check-fulfill-item' \
    '{"itemId": "string", "itemSku": "string", "quantity": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fulfill_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-fulfill-rewards' \
    '{"entitlementCollectionId": "string", "entitlementOrigin": "Epic", "metadata": {"string": {}}, "origin": "Epic", "rewards": [{}], "source": "ACHIEVEMENT", "transactionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_iap_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-iap-orders' \
    'string' \
    'string' \
    --end_time 'string' \
    --limit 1 \
    --offset 1 \
    --product_id 'string' \
    --start_time 'string' \
    --status 'FAILED' \
    --type 'APPLE' \
    > result.txt
```

### Operation `query_all_user_iap_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-all-user-iap-orders' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_iap_consume_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-iap-consume-history' \
    'string' \
    'string' \
    --end_time 'string' \
    --limit 1 \
    --offset 1 \
    --start_time 'string' \
    --status 'FAIL' \
    --type 'APPLE' \
    > result.txt
```

### Operation `mock_fulfill_iap_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-mock-fulfill-iap-item' \
    '{"itemIdentityType": "ITEM_ID", "language": "string", "productId": "string", "region": "string", "transactionId": "string", "type": "APPLE"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_iap_order_line_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-get-iap-order-line-items' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_sync_steam_abnormal_transaction`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-sync-steam-abnormal-transaction' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_sync_steam_iap_by_transaction`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-sync-steam-iap-by-transaction' \
    '{"orderId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_third_party_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-third-party-subscription' \
    'string' \
    'string' \
    --active_only false \
    --group_id 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --product_id 'string' \
    > result.txt
```

### Operation `get_third_party_platform_subscription_ownership_by_group_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-third-party-platform-subscription-ownership-by-group-id' \
    'string' \
    'APPLE' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_third_party_platform_subscription_ownership_by_product_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-third-party-platform-subscription-ownership-by-product-id' \
    'string' \
    'APPLE' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_third_party_subscription_transactions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-third-party-subscription-transactions' \
    'string' \
    'string' \
    --active_only false \
    --group_id 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --product_id 'string' \
    > result.txt
```

### Operation `get_third_party_subscription_details`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-third-party-subscription-details' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_subscription_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-subscription-history' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `sync_subscription_transaction`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-subscription-transaction' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_third_party_user_subscription_details`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-third-party-user-subscription-details' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-subscription' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-orders' \
    'string' \
    'string' \
    --discounted false \
    --item_id 'string' \
    --limit 1 \
    --offset 1 \
    --status 'CHARGEBACK' \
    > result.txt
```

### Operation `admin_create_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-admin-create-user-order' \
    '{"currencyCode": "string", "currencyNamespace": "string", "discountCodes": ["string"], "discountedPrice": 1, "entitlementPlatform": "Epic", "ext": {"string": {}}, "itemId": "string", "language": "string", "options": {}, "platform": "Epic", "price": 1, "quantity": 1, "region": "string", "returnUrl": "string", "sandbox": false, "sectionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `count_of_purchased_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-count-of-purchased-item' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-order' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_user_order_status`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-user-order-status' \
    '{"status": "CHARGEBACK", "statusReason": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fulfill_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-fulfill-user-order' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_order_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-order-histories' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `process_user_order_notification`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-process-user-order-notification' \
    '{"additionalData": {}, "authorisedTime": "2000-01-01T12:34:56Z", "chargebackReversedTime": "2000-01-01T12:34:56Z", "chargebackTime": "2000-01-01T12:34:56Z", "chargedTime": "2000-01-01T12:34:56Z", "createdTime": "2000-01-01T12:34:56Z", "currency": {}, "customParameters": {"string": {}}, "extOrderNo": "string", "extTxId": "string", "extUserId": "string", "issuedAt": "2000-01-01T12:34:56Z", "metadata": {"string": "string"}, "namespace": "string", "nonceStr": "string", "paymentData": {}, "paymentMethod": "string", "paymentMethodFee": 1, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "paymentProviderFee": 1, "paymentStationUrl": "string", "price": 1, "refundedTime": "2000-01-01T12:34:56Z", "salesTax": 1, "sandbox": false, "sku": "string", "status": "AUTHORISED", "statusReason": "string", "subscriptionId": "string", "subtotalPrice": 1, "targetNamespace": "string", "targetUserId": "string", "tax": 1, "totalPrice": 1, "totalTax": 1, "txEndTime": "2000-01-01T12:34:56Z", "type": "string", "userId": "string", "vat": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `download_user_order_receipt`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-download-user-order-receipt' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_user_payment_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-user-payment-order' \
    '{"currencyCode": "string", "currencyNamespace": "string", "customParameters": {"string": {}}, "description": "string", "extOrderNo": "string", "extUserId": "string", "itemType": "APP", "language": "string", "metadata": {"string": "string"}, "notifyUrl": "string", "omitNotification": false, "platform": "string", "price": 1, "recurringPaymentOrderNo": "string", "region": "string", "returnUrl": "string", "sandbox": false, "sku": "string", "subscriptionId": "string", "title": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `refund_user_payment_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-refund-user-payment-order' \
    '{"description": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_platform_account_closure_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-platform-account-closure-histories' \
    'string' \
    'string' \
    > result.txt
```

### Operation `apply_user_redemption`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-apply-user-redemption' \
    '{"code": "string", "orderNo": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `do_revocation`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-do-revocation' \
    '{"meta": {"string": {}}, "reason": "string", "requestId": "string", "revokeEntries": [{}], "source": "DLC", "transactionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `register_xbl_sessions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-register-xbl-sessions' \
    '{"gameSessionId": "string", "payload": {"string": {}}, "scid": "string", "sessionTemplateName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_subscriptions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-subscriptions' \
    'string' \
    'string' \
    --charge_status 'CHARGED' \
    --item_id 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribed_by 'PLATFORM' \
    > result.txt
```

### Operation `get_user_subscription_activities`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-subscription-activities' \
    'string' \
    'string' \
    --exclude_system false \
    --limit 1 \
    --offset 1 \
    --subscription_id 'string' \
    > result.txt
```

### Operation `platform_subscribe_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-platform-subscribe-subscription' \
    '{"grantDays": 1, "itemId": "string", "language": "string", "reason": "string", "region": "string", "source": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `check_user_subscription_subscribable_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-check-user-subscription-subscribable-by-item-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-subscription' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-user-subscription' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `cancel_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-cancel-subscription' \
    '{"immediate": false, "reason": "string"}' \
    'string' \
    'string' \
    'string' \
    --force false \
    > result.txt
```

### Operation `grant_days_to_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-grant-days-to-subscription' \
    '{"grantDays": 1, "reason": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_subscription_billing_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-user-subscription-billing-histories' \
    'string' \
    'string' \
    'string' \
    --exclude_free false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `process_user_subscription_notification`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-process-user-subscription-notification' \
    '{"additionalData": {}, "authorisedTime": "2000-01-01T12:34:56Z", "chargebackReversedTime": "2000-01-01T12:34:56Z", "chargebackTime": "2000-01-01T12:34:56Z", "chargedTime": "2000-01-01T12:34:56Z", "createdTime": "2000-01-01T12:34:56Z", "currency": {}, "customParameters": {"string": {}}, "extOrderNo": "string", "extTxId": "string", "extUserId": "string", "issuedAt": "2000-01-01T12:34:56Z", "metadata": {"string": "string"}, "namespace": "string", "nonceStr": "string", "paymentData": {}, "paymentMethod": "string", "paymentMethodFee": 1, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "paymentProviderFee": 1, "paymentStationUrl": "string", "price": 1, "refundedTime": "2000-01-01T12:34:56Z", "salesTax": 1, "sandbox": false, "sku": "string", "status": "AUTHORISED", "statusReason": "string", "subscriptionId": "string", "subtotalPrice": 1, "targetNamespace": "string", "targetUserId": "string", "tax": 1, "totalPrice": 1, "totalTax": 1, "txEndTime": "2000-01-01T12:34:56Z", "type": "string", "userId": "string", "vat": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `acquire_user_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-acquire-user-ticket' \
    '{"count": 1, "orderNo": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_user_currency_wallets`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-user-currency-wallets' \
    'string' \
    'string' \
    > result.txt
```

### Operation `debit_user_wallet_by_currency_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-debit-user-wallet-by-currency-code' \
    '{"allowOverdraft": false, "amount": 1, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_user_currency_transactions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-user-currency-transactions' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `check_balance`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-check-balance' \
    '{"amount": 1, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string", "walletPlatform": "Epic"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `credit_user_wallet`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-credit-user-wallet' \
    '{"amount": 1, "expireAt": "2000-01-01T12:34:56Z", "metadata": {"string": {}}, "origin": "Epic", "reason": "string", "source": "ACHIEVEMENT"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `debit_by_wallet_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-debit-by-wallet-platform' \
    '{"amount": 1, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string", "walletPlatform": "Epic"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `pay_with_user_wallet`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-pay-with-user-wallet' \
    '{"amount": 1, "metadata": {"string": {}}, "walletPlatform": "Epic"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_views`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-list-views' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `create_view`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-view' \
    '{"displayOrder": 1, "localizations": {"string": {}}, "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_view`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-view' \
    'string' \
    'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `update_view`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-view' \
    '{"displayOrder": 1, "localizations": {"string": {}}, "name": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_view`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-view' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_wallet_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-wallet-config' \
    'string' \
    > result.txt
```

### Operation `update_wallet_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-wallet-config' \
    '{"enablePaidForVCExpiration": false}' \
    'string' \
    > result.txt
```

### Operation `bulk_credit`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-credit' \
    '[{"creditRequest": {}, "currencyCode": "string", "userIds": ["string"]}]' \
    'string' \
    > result.txt
```

### Operation `bulk_debit`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-bulk-debit' \
    '[{"currencyCode": "string", "request": {}, "userIds": ["string"]}]' \
    'string' \
    > result.txt
```

### Operation `sync_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-orders' \
    'string' \
    'string' \
    --next_evaluated_key 'string' \
    > result.txt
```

### Operation `test_adyen_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-adyen-config' \
    '{"allowedPaymentMethods": ["string"], "apiKey": "string", "authoriseAsCapture": false, "blockedPaymentMethods": ["string"], "clientKey": "string", "dropInSettings": "string", "liveEndpointUrlPrefix": "string", "merchantAccount": "string", "notificationHmacKey": "string", "notificationPassword": "string", "notificationUsername": "string", "returnUrl": "string", "settings": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `test_ali_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-ali-pay-config' \
    '{"appId": "string", "privateKey": "string", "publicKey": "string", "returnUrl": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `test_checkout_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-checkout-config' \
    '{"publicKey": "string", "secretKey": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `debug_matched_payment_merchant_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-debug-matched-payment-merchant-config' \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `test_neon_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-neon-pay-config' \
    '{"apiKey": "string", "webhookSecretKey": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `test_pay_pal_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-pay-pal-config' \
    '{"clientID": "string", "clientSecret": "string", "returnUrl": "string", "webHookId": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `test_stripe_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-stripe-config' \
    '{"allowedPaymentMethodTypes": ["string"], "publishableKey": "string", "secretKey": "string", "webhookSecret": "string"}' \
    --sandbox false \
    > result.txt
```

### Operation `test_wx_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-wx-pay-config' \
    '{"appId": "string", "key": "string", "mchid": "string", "returnUrl": "string"}' \
    > result.txt
```

### Operation `test_xsolla_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-xsolla-config' \
    '{"apiKey": "string", "flowCompletionUrl": "string", "merchantId": 1, "projectId": 1, "projectSecretKey": "string"}' \
    > result.txt
```

### Operation `get_payment_merchant_config_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-merchant-config-1' \
    'string' \
    > result.txt
```

### Operation `update_adyen_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-adyen-config' \
    '{"allowedPaymentMethods": ["string"], "apiKey": "string", "authoriseAsCapture": false, "blockedPaymentMethods": ["string"], "clientKey": "string", "dropInSettings": "string", "liveEndpointUrlPrefix": "string", "merchantAccount": "string", "notificationHmacKey": "string", "notificationPassword": "string", "notificationUsername": "string", "returnUrl": "string", "settings": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_adyen_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-adyen-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_ali_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-ali-pay-config' \
    '{"appId": "string", "privateKey": "string", "publicKey": "string", "returnUrl": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_ali_pay_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-ali-pay-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_checkout_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-checkout-config' \
    '{"publicKey": "string", "secretKey": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_checkout_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-checkout-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_neon_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-neon-pay-config' \
    '{"apiKey": "string", "webhookSecretKey": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_neon_pay_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-neon-pay-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_pay_pal_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-pay-pal-config' \
    '{"clientID": "string", "clientSecret": "string", "returnUrl": "string", "webHookId": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_pay_pal_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-pay-pal-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_stripe_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-stripe-config' \
    '{"allowedPaymentMethodTypes": ["string"], "publishableKey": "string", "secretKey": "string", "webhookSecret": "string"}' \
    'string' \
    --sandbox false \
    --validate false \
    > result.txt
```

### Operation `test_stripe_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-stripe-config-by-id' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_wx_pay_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-wx-pay-config' \
    '{"appId": "string", "key": "string", "mchid": "string", "returnUrl": "string"}' \
    'string' \
    --validate false \
    > result.txt
```

### Operation `update_wx_pay_config_cert`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-wx-pay-config-cert' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `test_wx_pay_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-wx-pay-config-by-id' \
    'string' \
    > result.txt
```

### Operation `update_xsolla_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-xsolla-config' \
    '{"apiKey": "string", "flowCompletionUrl": "string", "merchantId": 1, "projectId": 1, "projectSecretKey": "string"}' \
    'string' \
    --validate false \
    > result.txt
```

### Operation `test_xsolla_config_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-test-xsolla-config-by-id' \
    'string' \
    > result.txt
```

### Operation `update_xsolla_ui_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-xsolla-ui-config' \
    '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    'string' \
    > result.txt
```

### Operation `query_payment_provider_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-payment-provider-config' \
    --limit 1 \
    --namespace 'string' \
    --offset 1 \
    --region 'string' \
    > result.txt
```

### Operation `create_payment_provider_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-create-payment-provider-config' \
    '{"aggregate": "ADYEN", "namespace": "string", "region": "string", "sandboxTaxJarApiToken": "string", "specials": ["ADYEN"], "taxJarApiToken": "string", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > result.txt
```

### Operation `get_aggregate_payment_providers`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-aggregate-payment-providers' \
    > result.txt
```

### Operation `debug_matched_payment_provider_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-debug-matched-payment-provider-config' \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `get_special_payment_providers`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-special-payment-providers' \
    > result.txt
```

### Operation `update_payment_provider_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-payment-provider-config' \
    '{"aggregate": "ADYEN", "namespace": "string", "region": "string", "sandboxTaxJarApiToken": "string", "specials": ["ADYEN"], "taxJarApiToken": "string", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    'string' \
    > result.txt
```

### Operation `delete_payment_provider_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-delete-payment-provider-config' \
    'string' \
    > result.txt
```

### Operation `get_payment_tax_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-tax-config' \
    > result.txt
```

### Operation `update_payment_tax_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-update-payment-tax-config' \
    '{"sandboxTaxJarApiToken": "string", "taxJarApiToken": "string", "taxJarEnabled": false, "taxJarProductCodesMapping": {"string": "string"}}' \
    > result.txt
```

### Operation `sync_payment_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-payment-orders' \
    'string' \
    'string' \
    --next_evaluated_key 'string' \
    > result.txt
```

### Operation `public_get_root_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-root-categories' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `download_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-download-categories' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_category`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-category' \
    'string' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_child_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-child-categories' \
    'string' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_descendant_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-descendant-categories' \
    'string' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_list_currencies`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-list-currencies' \
    'string' \
    --currency_type 'REAL' \
    > result.txt
```

### Operation `ge_dlc_durable_reward_short_map`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-ge-dlc-durable-reward-short-map' \
    'string' \
    'EPICGAMES' \
    > result.txt
```

### Operation `get_apple_config_version`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-apple-config-version' \
    'string' \
    > result.txt
```

### Operation `get_iap_item_mapping`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-iap-item-mapping' \
    'string' \
    --platform 'APPLE' \
    > result.txt
```

### Operation `public_get_item_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-item-by-app-id' \
    'string' \
    'string' \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_query_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-items' \
    'string' \
    --app_type 'DEMO' \
    --auto_calc_estimated_price false \
    --base_app_id 'string' \
    --category_path 'string' \
    --features 'string' \
    --include_sub_category_item false \
    --item_type 'APP' \
    --language 'string' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --sort_by '["name"]' \
    --store_id 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_get_item_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-item-by-sku' \
    'string' \
    'string' \
    --auto_calc_estimated_price false \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_estimated_price`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-estimated-price' \
    'string' \
    'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_bulk_get_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-bulk-get-items' \
    'string' \
    'string' \
    --auto_calc_estimated_price false \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_validate_item_purchase_condition`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-validate-item-purchase-condition' \
    '{"itemIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_search_items`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-search-items' \
    'string' \
    'string' \
    'string' \
    --auto_calc_estimated_price false \
    --item_type 'APP' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_app`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-app' \
    'string' \
    'string' \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_item_dynamic_data`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-item-dynamic-data' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-item' \
    'string' \
    'string' \
    --auto_calc_estimated_price false \
    --language 'string' \
    --populate_bundle false \
    --region 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_payment_url`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-payment-url' \
    '{"neonPayConfig": {}, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "returnUrl": "string", "ui": "string", "zipCode": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_payment_methods`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-payment-methods' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_unpaid_payment_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-unpaid-payment-order' \
    'string' \
    'string' \
    > result.txt
```

### Operation `pay`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-pay' \
    '{"token": "string"}' \
    'string' \
    'string' \
    --payment_provider 'ADYEN' \
    --zip_code 'string' \
    > result.txt
```

### Operation `public_check_payment_order_paid_status`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-check-payment-order-paid-status' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_payment_public_config`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-public-config' \
    'string' \
    'ADYEN' \
    'string' \
    --sandbox false \
    > result.txt
```

### Operation `public_get_qr_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-qr-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_normalize_payment_return_url`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-normalize-payment-return-url' \
    'string' \
    'string' \
    'string' \
    'ADYEN' \
    'string' \
    --payer_id 'string' \
    --foreinginvoice 'string' \
    --invoice_id 'string' \
    --payload 'string' \
    --redirect_result 'string' \
    --result_code 'string' \
    --session_id 'string' \
    --status 'string' \
    --token 'string' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_payment_tax_value`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-payment-tax-value' \
    'string' \
    'string' \
    'ADYEN' \
    --zip_code 'string' \
    > result.txt
```

### Operation `get_reward_by_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-reward-by-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_rewards_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-rewards-1' \
    'string' \
    --event_topic 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by '["namespace"]' \
    > result.txt
```

### Operation `get_reward_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-get-reward-1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_stores`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-list-stores' \
    'string' \
    > result.txt
```

### Operation `public_exists_any_my_active_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-exists-any-my-active-entitlement' \
    'string' \
    --app_ids '["string"]' \
    --item_ids '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `public_get_my_app_entitlement_ownership_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_my_entitlement_ownership_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    > result.txt
```

### Operation `public_get_my_entitlement_ownership_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-my-entitlement-ownership-by-sku' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    > result.txt
```

### Operation `public_get_entitlement_ownership_token`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-entitlement-ownership-token' \
    'string' \
    --app_ids '["string"]' \
    --item_ids '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `sync_twitch_drops_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-twitch-drops-entitlement' \
    '{"gameId": "string", "language": "string", "region": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_my_wallet`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-my-wallet' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_epic_game_dlc`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-epic-game-dlc' \
    'string' \
    'string' \
    --body '{"epicGamesJwtToken": "string"}' \
    > result.txt
```

### Operation `sync_oculus_dlc`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-oculus-dlc' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_sync_psn_dlc_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-sync-psn-dlc-inventory' \
    'string' \
    'string' \
    --body '{"serviceLabel": 1}' \
    > result.txt
```

### Operation `public_sync_psn_dlc_inventory_with_multiple_service_labels`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'string' \
    'string' \
    --body '{"serviceLabels": [1]}' \
    > result.txt
```

### Operation `sync_steam_dlc`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-steam-dlc' \
    '{"appId": "string", "steamId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_xbox_dlc`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-xbox-dlc' \
    'string' \
    'string' \
    --body '{"xstsToken": "string"}' \
    > result.txt
```

### Operation `public_query_user_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-user-entitlements' \
    'string' \
    'string' \
    --app_type 'DEMO' \
    --entitlement_clazz 'APP' \
    --entitlement_name 'string' \
    --features '["string"]' \
    --item_id '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_user_app_entitlement_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-app-entitlement-by-app-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_query_user_entitlements_by_app_type`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-user-entitlements-by-app-type' \
    'string' \
    'string' \
    'DEMO' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_user_entitlements_by_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-entitlements-by-ids' \
    'string' \
    'string' \
    --available_platform_only false \
    --ids '["string"]' \
    > result.txt
```

### Operation `public_user_entitlement_history`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-user-entitlement-history' \
    'string' \
    'string' \
    --end_date 'string' \
    --entitlement_clazz 'APP' \
    --limit 1 \
    --offset 1 \
    --start_date 'string' \
    > result.txt
```

### Operation `public_exists_any_user_active_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-exists-any-user-active-entitlement' \
    'string' \
    'string' \
    --app_ids '["string"]' \
    --item_ids '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `public_get_user_app_entitlement_ownership_by_app_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'string' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_item_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'string' \
    'string' \
    --ids '["string"]' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_sku`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-entitlement-ownership-by-sku' \
    'string' \
    'string' \
    'string' \
    --entitlement_clazz 'APP' \
    > result.txt
```

### Operation `public_get_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-entitlement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_consume_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-consume-user-entitlement' \
    '{"metadata": {}, "options": ["string"], "requestId": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_sell_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-sell-user-entitlement' \
    '{"requestId": "string", "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_split_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-split-user-entitlement' \
    '{"metadata": {}, "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_transfer_user_entitlement`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-transfer-user-entitlement' \
    '{"entitlementId": "string", "metadata": {}, "useCount": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_redeem_code`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-redeem-code' \
    '{"code": "string", "language": "string", "region": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_fulfill_apple_iap_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-fulfill-apple-iap-item' \
    '{"excludeOldTransactions": false, "language": "string", "productId": "string", "receiptData": "string", "region": "string", "transactionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_epic_games_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-epic-games-inventory' \
    'string' \
    'string' \
    --body '{"epicGamesJwtToken": "string"}' \
    > result.txt
```

### Operation `public_fulfill_google_iap_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-fulfill-google-iap-item' \
    '{"autoAck": false, "autoConsume": false, "language": "string", "orderId": "string", "packageName": "string", "productId": "string", "purchaseTime": 1, "purchaseToken": "string", "region": "string", "subscriptionPurchase": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_oculus_consumable_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-oculus-consumable-entitlements' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_reconcile_play_station_store`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-reconcile-play-station-store' \
    'string' \
    'string' \
    --body '{"currencyCode": "string", "price": 3.14, "productId": "string", "serviceLabel": 1}' \
    > result.txt
```

### Operation `public_reconcile_play_station_store_with_multiple_service_labels`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '{"currencyCode": "string", "price": 3.14, "productId": "string", "serviceLabels": [1]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_steam_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-steam-inventory' \
    '{"appId": "string", "currencyCode": "string", "language": "string", "price": 3.14, "productId": "string", "region": "string", "steamId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_steam_abnormal_transaction`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-steam-abnormal-transaction' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_steam_iap_by_transaction`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-steam-iap-by-transaction' \
    '{"orderId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_query_user_third_party_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-user-third-party-subscription' \
    'string' \
    'APPLE' \
    'string' \
    --active_only false \
    --group_id 'string' \
    --limit 1 \
    --offset 1 \
    --product_id 'string' \
    > result.txt
```

### Operation `sync_twitch_drops_entitlement_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-twitch-drops-entitlement-1' \
    '{"gameId": "string", "language": "string", "region": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_xbox_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-sync-xbox-inventory' \
    'string' \
    'string' \
    --body '{"currencyCode": "string", "price": 3.14, "productId": "string", "xstsToken": "string"}' \
    > result.txt
```

### Operation `public_query_user_orders`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-user-orders' \
    'string' \
    'string' \
    --discounted false \
    --item_id 'string' \
    --limit 1 \
    --offset 1 \
    --status 'CHARGEBACK' \
    > result.txt
```

### Operation `public_create_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-create-user-order' \
    '{"currencyCode": "string", "discountCodes": ["string"], "discountedPrice": 1, "ext": {"string": {}}, "itemId": "string", "language": "string", "price": 1, "quantity": 1, "region": "string", "returnUrl": "string", "sectionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_preview_order_price`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-preview-order-price' \
    '{"currencyCode": "string", "discountCodes": ["string"], "discountedPrice": 1, "itemId": "string", "price": 1, "quantity": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-order' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_cancel_user_order`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-cancel-user-order' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_order_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-order-histories' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_download_user_order_receipt`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-download-user-order-receipt' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_payment_accounts`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-payment-accounts' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_delete_payment_account`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-delete-payment-account' \
    'string' \
    'string' \
    'card' \
    'string' \
    > result.txt
```

### Operation `public_list_active_sections`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-list-active-sections' \
    'string' \
    'string' \
    --auto_calc_estimated_price false \
    --language 'string' \
    --region 'string' \
    --store_id 'string' \
    --view_id 'string' \
    > result.txt
```

### Operation `public_query_user_subscriptions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-query-user-subscriptions' \
    'string' \
    'string' \
    --charge_status 'CHARGED' \
    --item_id 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribed_by 'PLATFORM' \
    > result.txt
```

### Operation `public_subscribe_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-subscribe-subscription' \
    '{"currencyCode": "string", "itemId": "string", "language": "string", "region": "string", "returnUrl": "string", "source": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_check_user_subscription_subscribable_by_item_id`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-subscription' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_change_subscription_billing_account`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-change-subscription-billing-account' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_cancel_subscription`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-cancel-subscription' \
    '{"immediate": false, "reason": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_subscription_billing_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-user-subscription-billing-histories' \
    'string' \
    'string' \
    'string' \
    --exclude_free false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_list_views`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-list-views' \
    'string' \
    'string' \
    --language 'string' \
    --store_id 'string' \
    > result.txt
```

### Operation `public_get_wallet`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-wallet' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_user_wallet_transactions`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-list-user-wallet-transactions' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_my_dlc_content`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-public-get-my-dlc-content' \
    'EPICGAMES' \
    --include_all_namespaces false \
    > result.txt
```

### Operation `query_fulfillments`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-fulfillments' \
    'string' \
    --end_time 'string' \
    --limit 1 \
    --offset 1 \
    --start_time 'string' \
    --state 'FULFILLED' \
    --transaction_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `query_items_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-query-items-v2' \
    'string' \
    --app_type 'DEMO' \
    --available_date 'string' \
    --base_app_id 'string' \
    --category_path 'string' \
    --features 'string' \
    --include_sub_category_item false \
    --item_name 'string' \
    --item_status 'ACTIVE' \
    --item_type '["APP"]' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --section_exclusive false \
    --sort_by '["name"]' \
    --store_id 'string' \
    --tags 'string' \
    --target_namespace 'string' \
    --with_total false \
    > result.txt
```

### Operation `import_store_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-import-store-1' \
    'string' \
    --file 'tmp.dat' \
    --store_id 'string' \
    --strict_mode false \
    > result.txt
```

### Operation `export_store_1`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-export-store-1' \
    'string' \
    'string' \
    --body '{"itemIds": ["string"]}' \
    > result.txt
```

### Operation `fulfill_rewards_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-fulfill-rewards-v2' \
    '{"entitlementCollectionId": "string", "entitlementOrigin": "Epic", "metadata": {"string": {}}, "origin": "Epic", "rewards": [{}], "source": "ACHIEVEMENT", "transactionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `v2_public_fulfill_apple_iap_item`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-v2-public-fulfill-apple-iap-item' \
    'string' \
    'string' \
    --body '{"transactionId": "string"}' \
    > result.txt
```

### Operation `fulfill_items_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-fulfill-items-v3' \
    '{"items": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retry_fulfill_items_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-retry-fulfill-items-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `revoke_items_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'platform-revoke-items-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

