# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Ugc Service."""

__version__ = "2.5.5"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# admin_channel
from .wrappers import admin_create_channel
from .wrappers import admin_create_channel_async
from .wrappers import admin_delete_channel
from .wrappers import admin_delete_channel_async
from .wrappers import admin_get_channel
from .wrappers import admin_get_channel_async
from .wrappers import admin_update_channel
from .wrappers import admin_update_channel_async
from .wrappers import single_admin_delete_channel
from .wrappers import single_admin_delete_channel_async
from .wrappers import single_admin_get_channel
from .wrappers import single_admin_get_channel_async
from .wrappers import single_admin_update_channel
from .wrappers import single_admin_update_channel_async

# admin_content
from .wrappers import admin_delete_content
from .wrappers import admin_delete_content_async
from .wrappers import admin_delete_content_screenshot
from .wrappers import admin_delete_content_screenshot_async
from .wrappers import admin_download_content_preview
from .wrappers import admin_download_content_preview_async
from .wrappers import admin_get_content
from .wrappers import admin_get_content_async
from .wrappers import admin_get_specific_content
from .wrappers import admin_get_specific_content_async
from .wrappers import admin_get_user_content_by_share_code
from .wrappers import admin_get_user_content_by_share_code_async
from .wrappers import admin_hide_user_content
from .wrappers import admin_hide_user_content_async
from .wrappers import admin_search_channel_specific_content
from .wrappers import admin_search_channel_specific_content_async
from .wrappers import admin_search_content
from .wrappers import admin_search_content_async
from .wrappers import admin_update_content_direct
from .wrappers import admin_update_content_direct_async
from .wrappers import admin_update_content_s3
from .wrappers import admin_update_content_s3_async
from .wrappers import admin_update_screenshots
from .wrappers import admin_update_screenshots_async
from .wrappers import admin_upload_content_direct
from .wrappers import admin_upload_content_direct_async
from .wrappers import admin_upload_content_s3
from .wrappers import admin_upload_content_s3_async
from .wrappers import admin_upload_content_screenshot
from .wrappers import admin_upload_content_screenshot_async
from .wrappers import single_admin_delete_content
from .wrappers import single_admin_delete_content_async
from .wrappers import single_admin_get_content
from .wrappers import single_admin_get_content_async
from .wrappers import single_admin_update_content_direct
from .wrappers import single_admin_update_content_direct_async
from .wrappers import single_admin_update_content_s3
from .wrappers import single_admin_update_content_s3_async

# admin_group
from .wrappers import admin_create_group
from .wrappers import admin_create_group_async
from .wrappers import admin_delete_group
from .wrappers import admin_delete_group_async
from .wrappers import admin_get_all_groups
from .wrappers import admin_get_all_groups_async
from .wrappers import admin_get_group
from .wrappers import admin_get_group_async
from .wrappers import admin_get_group_contents
from .wrappers import admin_get_group_contents_async
from .wrappers import admin_update_group
from .wrappers import admin_update_group_async
from .wrappers import single_admin_delete_group
from .wrappers import single_admin_delete_group_async
from .wrappers import single_admin_get_all_groups
from .wrappers import single_admin_get_all_groups_async
from .wrappers import single_admin_get_group
from .wrappers import single_admin_get_group_async
from .wrappers import single_admin_get_group_contents
from .wrappers import single_admin_get_group_contents_async
from .wrappers import single_admin_update_group
from .wrappers import single_admin_update_group_async

# admin_tag
from .wrappers import admin_create_tag
from .wrappers import admin_create_tag_async
from .wrappers import admin_delete_tag
from .wrappers import admin_delete_tag_async
from .wrappers import admin_get_tag
from .wrappers import admin_get_tag_async
from .wrappers import admin_update_tag
from .wrappers import admin_update_tag_async

# admin_type
from .wrappers import admin_create_type
from .wrappers import admin_create_type_async
from .wrappers import admin_delete_type
from .wrappers import admin_delete_type_async
from .wrappers import admin_get_type
from .wrappers import admin_get_type_async
from .wrappers import admin_update_type
from .wrappers import admin_update_type_async

# anonymization
from .wrappers import admin_delete_all_user_channels
from .wrappers import admin_delete_all_user_channels_async
from .wrappers import admin_delete_all_user_contents
from .wrappers import admin_delete_all_user_contents_async
from .wrappers import admin_delete_all_user_group
from .wrappers import admin_delete_all_user_group_async
from .wrappers import admin_delete_all_user_states
from .wrappers import admin_delete_all_user_states_async
from .wrappers import delete_all_user_channel
from .wrappers import delete_all_user_channel_async
from .wrappers import delete_all_user_contents
from .wrappers import delete_all_user_contents_async
from .wrappers import delete_all_user_group
from .wrappers import delete_all_user_group_async
from .wrappers import delete_all_user_states
from .wrappers import delete_all_user_states_async

# public_channel
from .wrappers import create_channel
from .wrappers import create_channel_async
from .wrappers import delete_channel
from .wrappers import delete_channel_async
from .wrappers import get_channels
from .wrappers import get_channels_async
from .wrappers import update_channel
from .wrappers import update_channel_async

# public_content
from .wrappers import create_content_direct
from .wrappers import create_content_direct_async
from .wrappers import create_content_s3
from .wrappers import create_content_s3_async
from .wrappers import delete_content
from .wrappers import delete_content_async
from .wrappers import delete_content_screenshot
from .wrappers import delete_content_screenshot_async
from .wrappers import public_download_content_by_content_id
from .wrappers import public_download_content_by_content_id_async
from .wrappers import public_download_content_by_share_code
from .wrappers import public_download_content_by_share_code_async
from .wrappers import public_download_content_preview
from .wrappers import public_download_content_preview_async
from .wrappers import public_get_content_bulk
from .wrappers import public_get_content_bulk_async
from .wrappers import public_get_user_content
from .wrappers import public_get_user_content_async
from .wrappers import public_search_content
from .wrappers import public_search_content_async
from .wrappers import search_channel_specific_content
from .wrappers import search_channel_specific_content_async
from .wrappers import update_content_direct
from .wrappers import update_content_direct_async
from .wrappers import update_content_s3
from .wrappers import update_content_s3_async
from .wrappers import update_screenshots
from .wrappers import update_screenshots_async
from .wrappers import upload_content_screenshot
from .wrappers import upload_content_screenshot_async

# public_creator
from .wrappers import public_get_creator
from .wrappers import public_get_creator_async
from .wrappers import public_search_creator
from .wrappers import public_search_creator_async

# public_download_count
from .wrappers import add_download_count
from .wrappers import add_download_count_async

# public_follow
from .wrappers import get_followed_content
from .wrappers import get_followed_content_async
from .wrappers import get_followed_users
from .wrappers import get_followed_users_async
from .wrappers import get_public_followers
from .wrappers import get_public_followers_async
from .wrappers import get_public_following
from .wrappers import get_public_following_async
from .wrappers import update_user_follow_status
from .wrappers import update_user_follow_status_async

# public_group
from .wrappers import create_group
from .wrappers import create_group_async
from .wrappers import delete_group
from .wrappers import delete_group_async
from .wrappers import get_group
from .wrappers import get_group_async
from .wrappers import get_group_content
from .wrappers import get_group_content_async
from .wrappers import get_groups
from .wrappers import get_groups_async
from .wrappers import update_group
from .wrappers import update_group_async

# public_like
from .wrappers import get_liked_content
from .wrappers import get_liked_content_async
from .wrappers import update_content_like_status
from .wrappers import update_content_like_status_async

# public_tag
from .wrappers import get_tag
from .wrappers import get_tag_async

# public_type
from .wrappers import get_type
from .wrappers import get_type_async
