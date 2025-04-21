## Python Extend SDK CLI Sample App Operation Index for Ugc service.

### Operation `single_admin_get_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-get-channel' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-create-channel' \
    '{"id": "string", "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `single_admin_update_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-update-channel' \
    '{"name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_delete_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-delete-channel' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_upload_content_s3`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-upload-content-s3' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_update_content_s3`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-update-content-s3' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_search_channel_specific_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-search-channel-specific-content' \
    'string' \
    'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `single_admin_delete_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-delete-content' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_get_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-get-content' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_content_bulk`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-bulk' \
    '{"contentIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_search_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-search-content' \
    'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_content_bulk_by_share_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-bulk-by-share-codes' \
    '{"shareCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_content_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-user-content-by-share-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_specific_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-specific-content' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_download_content_preview`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-download-content-preview' \
    'string' \
    'string' \
    > result.txt
```

### Operation `rollback_content_version`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-rollback-content-version' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_screenshots`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-screenshots' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_upload_content_screenshot`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_content_screenshot`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-content-screenshot' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_content_versions`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-list-content-versions' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_get_all_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-get-all-groups' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-create-group' \
    '{"contents": ["string"], "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `single_admin_get_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-get-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_update_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-update-group' \
    '{"contents": ["string"], "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_delete_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-delete-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `single_admin_get_group_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-single-admin-get-group-contents' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-tag' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-create-tag' \
    '{"tag": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_update_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-tag' \
    '{"tag": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-tag' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_type`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-type' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_type`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-create-type' \
    '{"subtype": ["string"], "type": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_update_type`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-type' \
    '{"subtype": ["string"], "type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_type`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-type' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-channel' \
    'string' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_channels`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-all-user-channels' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-channel' \
    '{"name": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-channel' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_content_s3_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-content-s3-by-share-code' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_content_s3`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-content-s3' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_content_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-content-by-share-code' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-content' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-all-user-contents' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_hide_user_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-hide-user-content' \
    '{"isHidden": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_all_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-all-groups' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-all-user-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-group' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-group' \
    '{"contents": ["string"], "name": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-group' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_group_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-group-contents' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_states`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-all-user-states' \
    'string' \
    'string' \
    > result.txt
```

### Operation `search_channel_specific_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-search-channel-specific-content' \
    'string' \
    'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `public_search_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-search-content' \
    'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `public_get_content_bulk`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-bulk' \
    '{"contentIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_followed_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-followed-content' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_liked_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-liked-content' \
    'string' \
    --isofficial false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `public_get_content_bulk_by_share_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-bulk-by-share-codes' \
    '{"shareCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_download_content_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-download-content-by-share-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_download_content_by_content_id`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-download-content-by-content-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `add_download_count`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-add-download-count' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_content_like_status`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_download_content_preview`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-download-content-preview' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-tag' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_type`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-type' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_search_creator`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-search-creator' \
    'string' \
    --limit 1 \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    > result.txt
```

### Operation `get_followed_users`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-followed-users' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_creator`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-creator' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_channels`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-channels' \
    'string' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `public_create_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-create-channel' \
    '{"name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_all_user_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-all-user-channel' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-channel' \
    '{"name": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_channel`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-channel' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_content_s3`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-create-content-s3' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_content_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-update-content-by-share-code' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_content_s3`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-content-s3' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_delete_content_by_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-delete-content-by-share-code' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-content' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_content_share_code`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-content-share-code' \
    '{"shareCode": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-user-content' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `delete_all_user_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-all-user-contents' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_screenshots`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-screenshots' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `upload_content_screenshot`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-upload-content-screenshot' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_content_screenshot`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-content-screenshot' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_user_follow_status`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_public_followers`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-public-followers' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_public_following`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-public-following' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-groups' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-create-group' \
    '{"contents": ["string"], "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_all_user_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-all-user-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-group' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-group' \
    '{"contents": ["string"], "name": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-group' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-group-content' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `delete_all_user_states`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-all-user-states' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_content_by_channel_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-by-channel-idv2' \
    'string' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `admin_create_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-create-content-v2' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_official_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-official-content-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_official_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-official-content-v2' \
    '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_copy_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-copy-content' \
    '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "targetChannelId": "string", "type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_official_content_file_location`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-official-content-file-location' \
    '{"fileExtension": "string", "fileLocation": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_generate_official_content_upload_urlv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-generate-official-content-upload-urlv2' \
    '{"contentType": "string", "fileExtension": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_configs`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-configs' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_update_config`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-config' \
    '{"value": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-list-content-v2' \
    'string' \
    --is_official false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    --sub_type 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `admin_bulk_get_content_by_i_ds_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-bulk-get-content-by-i-ds-v2' \
    '{"contentIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_content_bulk_by_share_codes_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-by-share-code-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_content_by_content_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-by-content-idv2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `rollback_content_version_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-rollback-content-version-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_screenshots_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-screenshots-v2' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_upload_content_screenshot_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-upload-content-screenshot-v2' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_content_screenshot_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-content-screenshot-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_content_versions_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-list-content-versions-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_official_group_contents_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-official-group-contents-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_staging_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-list-staging-contents' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --status 'string' \
    > result.txt
```

### Operation `admin_get_staging_content_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-staging-content-by-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_approve_staging_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-approve-staging-content' \
    '{"approved": false, "note": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-content-by-share-code-v2' \
    '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-content-by-share-code-v2' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-delete-user-content-v2' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-user-content-v2' \
    '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_content_file_location`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-user-content-file-location' \
    '{"fileExtension": "string", "fileLocation": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_generate_user_content_upload_urlv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-generate-user-content-upload-urlv2' \
    '{"contentType": "string", "fileExtension": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_content_by_user_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-content-by-user-idv2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `admin_update_content_hide_status_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-update-content-hide-status-v2' \
    '{"isHidden": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_group_contents_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-get-user-group-contents-v2' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_user_staging_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-admin-list-user-staging-contents' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --status 'string' \
    > result.txt
```

### Operation `public_get_content_by_channel_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-by-channel-idv2' \
    'string' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `public_list_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-list-content-v2' \
    'string' \
    --is_official false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    --sub_type 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `public_bulk_get_content_by_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-bulk-get-content-by-idv2' \
    '{"contentIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_get_content_bulk_by_share_codes_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-bulk-by-share-codes-v2' \
    '{"shareCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_get_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-by-share-code-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_content_by_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-by-idv2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_add_download_count_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-add-download-count-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_content_downloader_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-list-content-downloader-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `public_list_content_like_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-list-content-like-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `update_content_like_status_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-content-like-status-v2' \
    '{"likeStatus": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_create_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-create-content-v2' \
    '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-update-content-by-share-code-v2' \
    '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_delete_content_by_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-delete-content-by-share-code-v2' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_delete_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-delete-content-v2' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_content_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-update-content-v2' \
    '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_content_file_location`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-update-content-file-location' \
    '{"fileExtension": "string", "fileLocation": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_content_share_code_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-content-share-code-v2' \
    '{"shareCode": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_generate_content_upload_urlv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-generate-content-upload-urlv2' \
    '{"contentType": "string", "fileExtension": "string"}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_content_by_user_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-content-by-user-idv2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `update_screenshots_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-screenshots-v2' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `upload_content_screenshot_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-upload-content-screenshot-v2' \
    '{"screenshots": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_content_screenshot_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-content-screenshot-v2' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_group_contents_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-public-get-group-contents-v2' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `list_user_staging_contents`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-list-user-staging-contents' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --status 'string' \
    > result.txt
```

### Operation `get_user_staging_content_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-get-user-staging-content-by-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_staging_content`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-update-staging-content' \
    '{"fileExtension": "string", "fileLocation": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_staging_content_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'ugc-delete-user-staging-content-by-id' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

