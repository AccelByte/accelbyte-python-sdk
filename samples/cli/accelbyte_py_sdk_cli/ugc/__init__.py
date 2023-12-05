# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-ugc-service (2.18.0)

from ._single_admin_get_channel import single_admin_get_channel
from ._admin_create_channel import admin_create_channel
from ._single_admin_update_channel import single_admin_update_channel
from ._single_admin_delete_channel import single_admin_delete_channel
from ._admin_upload_content_direct import admin_upload_content_direct
from ._admin_upload_content_s3 import admin_upload_content_s3
from ._single_admin_update_content_s3 import single_admin_update_content_s3
from ._admin_search_channel_specific_content import (
    admin_search_channel_specific_content,
)
from ._single_admin_update_content_direct import single_admin_update_content_direct
from ._single_admin_delete_content import single_admin_delete_content
from ._single_admin_get_content import single_admin_get_content
from ._admin_get_content_bulk import admin_get_content_bulk
from ._admin_search_content import admin_search_content
from ._admin_get_content_bulk_by_share_codes import (
    admin_get_content_bulk_by_share_codes,
)
from ._admin_get_user_content_by_share_code import admin_get_user_content_by_share_code
from ._admin_get_specific_content import admin_get_specific_content
from ._admin_download_content_preview import admin_download_content_preview
from ._rollback_content_version import rollback_content_version
from ._admin_update_screenshots import admin_update_screenshots
from ._admin_upload_content_screenshot import admin_upload_content_screenshot
from ._admin_delete_content_screenshot import admin_delete_content_screenshot
from ._list_content_versions import list_content_versions
from ._single_admin_get_all_groups import single_admin_get_all_groups
from ._admin_create_group import admin_create_group
from ._single_admin_get_group import single_admin_get_group
from ._single_admin_update_group import single_admin_update_group
from ._single_admin_delete_group import single_admin_delete_group
from ._single_admin_get_group_contents import single_admin_get_group_contents
from ._admin_get_tag import admin_get_tag
from ._admin_create_tag import admin_create_tag
from ._admin_update_tag import admin_update_tag
from ._admin_delete_tag import admin_delete_tag
from ._admin_get_type import admin_get_type
from ._admin_create_type import admin_create_type
from ._admin_update_type import admin_update_type
from ._admin_delete_type import admin_delete_type
from ._admin_get_channel import admin_get_channel
from ._admin_delete_all_user_channels import admin_delete_all_user_channels
from ._admin_update_channel import admin_update_channel
from ._admin_delete_channel import admin_delete_channel
from ._admin_update_content_s3_by_share_code import (
    admin_update_content_s3_by_share_code,
)
from ._admin_update_content_s3 import admin_update_content_s3
from ._delete_content_by_share_code import delete_content_by_share_code
from ._admin_update_content_direct import admin_update_content_direct
from ._admin_delete_content import admin_delete_content
from ._admin_get_content import admin_get_content
from ._admin_delete_all_user_contents import admin_delete_all_user_contents
from ._admin_hide_user_content import admin_hide_user_content
from ._admin_get_all_groups import admin_get_all_groups
from ._admin_delete_all_user_group import admin_delete_all_user_group
from ._admin_get_group import admin_get_group
from ._admin_update_group import admin_update_group
from ._admin_delete_group import admin_delete_group
from ._admin_get_group_contents import admin_get_group_contents
from ._admin_delete_all_user_states import admin_delete_all_user_states
from ._search_channel_specific_content import search_channel_specific_content
from ._public_search_content import public_search_content
from ._public_get_content_bulk import public_get_content_bulk
from ._get_followed_content import get_followed_content
from ._get_liked_content import get_liked_content
from ._public_get_content_bulk_by_share_codes import (
    public_get_content_bulk_by_share_codes,
)
from ._public_download_content_by_share_code import (
    public_download_content_by_share_code,
)
from ._public_download_content_by_content_id import (
    public_download_content_by_content_id,
)
from ._add_download_count import add_download_count
from ._update_content_like_status import update_content_like_status
from ._public_download_content_preview import public_download_content_preview
from ._get_tag import get_tag
from ._get_type import get_type
from ._public_search_creator import public_search_creator
from ._get_followed_users import get_followed_users
from ._public_get_creator import public_get_creator
from ._get_channels import get_channels
from ._public_create_channel import public_create_channel
from ._delete_all_user_channel import delete_all_user_channel
from ._update_channel import update_channel
from ._delete_channel import delete_channel
from ._create_content_direct import create_content_direct
from ._create_content_s3 import create_content_s3
from ._public_update_content_by_share_code import public_update_content_by_share_code
from ._update_content_s3 import update_content_s3
from ._public_delete_content_by_share_code import public_delete_content_by_share_code
from ._update_content_direct import update_content_direct
from ._delete_content import delete_content
from ._update_content_share_code import update_content_share_code
from ._public_get_user_content import public_get_user_content
from ._delete_all_user_contents import delete_all_user_contents
from ._update_screenshots import update_screenshots
from ._upload_content_screenshot import upload_content_screenshot
from ._delete_content_screenshot import delete_content_screenshot
from ._update_user_follow_status import update_user_follow_status
from ._get_public_followers import get_public_followers
from ._get_public_following import get_public_following
from ._get_groups import get_groups
from ._create_group import create_group
from ._delete_all_user_group import delete_all_user_group
from ._get_group import get_group
from ._update_group import update_group
from ._delete_group import delete_group
from ._get_group_content import get_group_content
from ._delete_all_user_states import delete_all_user_states
from ._admin_get_content_by_channel_idv2 import admin_get_content_by_channel_idv2
from ._admin_create_content_v2 import admin_create_content_v2
from ._admin_delete_official_content_v2 import admin_delete_official_content_v2
from ._admin_update_official_content_v2 import admin_update_official_content_v2
from ._admin_update_official_content_file_location import (
    admin_update_official_content_file_location,
)
from ._admin_generate_official_content_upload_urlv2 import (
    admin_generate_official_content_upload_urlv2,
)
from ._admin_get_configs import admin_get_configs
from ._admin_update_config import admin_update_config
from ._admin_list_content_v2 import admin_list_content_v2
from ._admin_bulk_get_content_by_i_ds_v2 import admin_bulk_get_content_by_i_ds_v2
from ._admin_get_content_bulk_by_share_codes_v2 import (
    admin_get_content_bulk_by_share_codes_v2,
)
from ._admin_get_content_by_share_code_v2 import admin_get_content_by_share_code_v2
from ._admin_get_content_by_content_idv2 import admin_get_content_by_content_idv2
from ._rollback_content_version_v2 import rollback_content_version_v2
from ._admin_update_screenshots_v2 import admin_update_screenshots_v2
from ._admin_upload_content_screenshot_v2 import admin_upload_content_screenshot_v2
from ._admin_delete_content_screenshot_v2 import admin_delete_content_screenshot_v2
from ._list_content_versions_v2 import list_content_versions_v2
from ._admin_get_official_group_contents_v2 import admin_get_official_group_contents_v2
from ._admin_update_content_by_share_code_v2 import (
    admin_update_content_by_share_code_v2,
)
from ._admin_delete_content_by_share_code_v2 import (
    admin_delete_content_by_share_code_v2,
)
from ._admin_delete_user_content_v2 import admin_delete_user_content_v2
from ._admin_update_user_content_v2 import admin_update_user_content_v2
from ._admin_update_user_content_file_location import (
    admin_update_user_content_file_location,
)
from ._admin_generate_user_content_upload_urlv2 import (
    admin_generate_user_content_upload_urlv2,
)
from ._admin_get_content_by_user_idv2 import admin_get_content_by_user_idv2
from ._admin_update_content_hide_status_v2 import admin_update_content_hide_status_v2
from ._admin_get_user_group_contents_v2 import admin_get_user_group_contents_v2
from ._public_get_content_by_channel_idv2 import public_get_content_by_channel_idv2
from ._public_list_content_v2 import public_list_content_v2
from ._public_bulk_get_content_by_idv2 import public_bulk_get_content_by_idv2
from ._public_get_content_bulk_by_share_codes_v2 import (
    public_get_content_bulk_by_share_codes_v2,
)
from ._public_get_content_by_share_code_v2 import public_get_content_by_share_code_v2
from ._public_get_content_by_idv2 import public_get_content_by_idv2
from ._public_add_download_count_v2 import public_add_download_count_v2
from ._public_list_content_downloader_v2 import public_list_content_downloader_v2
from ._public_list_content_like_v2 import public_list_content_like_v2
from ._update_content_like_status_v2 import update_content_like_status_v2
from ._public_create_content_v2 import public_create_content_v2
from ._public_update_content_by_share_code_v2 import (
    public_update_content_by_share_code_v2,
)
from ._public_delete_content_by_share_code_v2 import (
    public_delete_content_by_share_code_v2,
)
from ._public_delete_content_v2 import public_delete_content_v2
from ._public_update_content_v2 import public_update_content_v2
from ._public_update_content_file_location import public_update_content_file_location
from ._update_content_share_code_v2 import update_content_share_code_v2
from ._public_generate_content_upload_urlv2 import public_generate_content_upload_urlv2
from ._public_get_content_by_user_idv2 import public_get_content_by_user_idv2
from ._update_screenshots_v2 import update_screenshots_v2
from ._upload_content_screenshot_v2 import upload_content_screenshot_v2
from ._delete_content_screenshot_v2 import delete_content_screenshot_v2
from ._public_get_group_contents_v2 import public_get_group_contents_v2


commands = [
    single_admin_get_channel,
    admin_create_channel,
    single_admin_update_channel,
    single_admin_delete_channel,
    admin_upload_content_direct,
    admin_upload_content_s3,
    single_admin_update_content_s3,
    admin_search_channel_specific_content,
    single_admin_update_content_direct,
    single_admin_delete_content,
    single_admin_get_content,
    admin_get_content_bulk,
    admin_search_content,
    admin_get_content_bulk_by_share_codes,
    admin_get_user_content_by_share_code,
    admin_get_specific_content,
    admin_download_content_preview,
    rollback_content_version,
    admin_update_screenshots,
    admin_upload_content_screenshot,
    admin_delete_content_screenshot,
    list_content_versions,
    single_admin_get_all_groups,
    admin_create_group,
    single_admin_get_group,
    single_admin_update_group,
    single_admin_delete_group,
    single_admin_get_group_contents,
    admin_get_tag,
    admin_create_tag,
    admin_update_tag,
    admin_delete_tag,
    admin_get_type,
    admin_create_type,
    admin_update_type,
    admin_delete_type,
    admin_get_channel,
    admin_delete_all_user_channels,
    admin_update_channel,
    admin_delete_channel,
    admin_update_content_s3_by_share_code,
    admin_update_content_s3,
    delete_content_by_share_code,
    admin_update_content_direct,
    admin_delete_content,
    admin_get_content,
    admin_delete_all_user_contents,
    admin_hide_user_content,
    admin_get_all_groups,
    admin_delete_all_user_group,
    admin_get_group,
    admin_update_group,
    admin_delete_group,
    admin_get_group_contents,
    admin_delete_all_user_states,
    search_channel_specific_content,
    public_search_content,
    public_get_content_bulk,
    get_followed_content,
    get_liked_content,
    public_get_content_bulk_by_share_codes,
    public_download_content_by_share_code,
    public_download_content_by_content_id,
    add_download_count,
    update_content_like_status,
    public_download_content_preview,
    get_tag,
    get_type,
    public_search_creator,
    get_followed_users,
    public_get_creator,
    get_channels,
    public_create_channel,
    delete_all_user_channel,
    update_channel,
    delete_channel,
    create_content_direct,
    create_content_s3,
    public_update_content_by_share_code,
    update_content_s3,
    public_delete_content_by_share_code,
    update_content_direct,
    delete_content,
    update_content_share_code,
    public_get_user_content,
    delete_all_user_contents,
    update_screenshots,
    upload_content_screenshot,
    delete_content_screenshot,
    update_user_follow_status,
    get_public_followers,
    get_public_following,
    get_groups,
    create_group,
    delete_all_user_group,
    get_group,
    update_group,
    delete_group,
    get_group_content,
    delete_all_user_states,
    admin_get_content_by_channel_idv2,
    admin_create_content_v2,
    admin_delete_official_content_v2,
    admin_update_official_content_v2,
    admin_update_official_content_file_location,
    admin_generate_official_content_upload_urlv2,
    admin_get_configs,
    admin_update_config,
    admin_list_content_v2,
    admin_bulk_get_content_by_i_ds_v2,
    admin_get_content_bulk_by_share_codes_v2,
    admin_get_content_by_share_code_v2,
    admin_get_content_by_content_idv2,
    rollback_content_version_v2,
    admin_update_screenshots_v2,
    admin_upload_content_screenshot_v2,
    admin_delete_content_screenshot_v2,
    list_content_versions_v2,
    admin_get_official_group_contents_v2,
    admin_update_content_by_share_code_v2,
    admin_delete_content_by_share_code_v2,
    admin_delete_user_content_v2,
    admin_update_user_content_v2,
    admin_update_user_content_file_location,
    admin_generate_user_content_upload_urlv2,
    admin_get_content_by_user_idv2,
    admin_update_content_hide_status_v2,
    admin_get_user_group_contents_v2,
    public_get_content_by_channel_idv2,
    public_list_content_v2,
    public_bulk_get_content_by_idv2,
    public_get_content_bulk_by_share_codes_v2,
    public_get_content_by_share_code_v2,
    public_get_content_by_idv2,
    public_add_download_count_v2,
    public_list_content_downloader_v2,
    public_list_content_like_v2,
    update_content_like_status_v2,
    public_create_content_v2,
    public_update_content_by_share_code_v2,
    public_delete_content_by_share_code_v2,
    public_delete_content_v2,
    public_update_content_v2,
    public_update_content_file_location,
    update_content_share_code_v2,
    public_generate_content_upload_urlv2,
    public_get_content_by_user_idv2,
    update_screenshots_v2,
    upload_content_screenshot_v2,
    delete_content_screenshot_v2,
    public_get_group_contents_v2,
]
