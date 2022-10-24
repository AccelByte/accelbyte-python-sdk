# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Basic Service."""

__version__ = "2.2.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# anonymization
from .wrappers import anonymize_user_profile
from .wrappers import anonymize_user_profile_async

# equ8_config
from .wrappers import delete_config
from .wrappers import delete_config_async
from .wrappers import get_config
from .wrappers import get_config_async
from .wrappers import update_config
from .wrappers import update_config_async

# file_upload
from .wrappers import generated_upload_url
from .wrappers import generated_upload_url_async
from .wrappers import generated_user_upload_content_url
from .wrappers import generated_user_upload_content_url_async
from .wrappers import public_generated_upload_url
from .wrappers import public_generated_upload_url_async
from .wrappers import public_generated_user_upload_content_url
from .wrappers import public_generated_user_upload_content_url_async

# misc
from .wrappers import add_country_group
from .wrappers import add_country_group_async
from .wrappers import delete_country_group
from .wrappers import delete_country_group_async
from .wrappers import get_countries
from .wrappers import get_countries_async
from .wrappers import get_country_groups
from .wrappers import get_country_groups_async
from .wrappers import get_languages
from .wrappers import get_languages_async
from .wrappers import get_time_zones
from .wrappers import get_time_zones_async
from .wrappers import public_get_countries
from .wrappers import public_get_countries_async
from .wrappers import public_get_languages
from .wrappers import public_get_languages_async
from .wrappers import public_get_time
from .wrappers import public_get_time_async
from .wrappers import public_get_time_zones
from .wrappers import public_get_time_zones_async
from .wrappers import update_country_group
from .wrappers import update_country_group_async

# namespace
from .wrappers import change_namespace_status
from .wrappers import change_namespace_status_async
from .wrappers import create_namespace
from .wrappers import create_namespace_async
from .wrappers import delete_namespace
from .wrappers import delete_namespace_async
from .wrappers import get_namespace
from .wrappers import get_namespace_async
from .wrappers import get_namespace_publisher
from .wrappers import get_namespace_publisher_async
from .wrappers import get_namespaces
from .wrappers import get_namespaces_async
from .wrappers import public_get_namespace_publisher
from .wrappers import public_get_namespace_publisher_async
from .wrappers import public_get_namespaces
from .wrappers import public_get_namespaces_async
from .wrappers import update_namespace
from .wrappers import update_namespace_async

# user_action
from .wrappers import ban_users
from .wrappers import ban_users_async
from .wrappers import get_actions
from .wrappers import get_actions_async
from .wrappers import get_banned_users
from .wrappers import get_banned_users_async
from .wrappers import get_user_status
from .wrappers import get_user_status_async
from .wrappers import public_report_user
from .wrappers import public_report_user_async
from .wrappers import report_user
from .wrappers import report_user_async
from .wrappers import un_ban_users
from .wrappers import un_ban_users_async

# user_profile
from .wrappers import admin_get_user_profile_public_info_by_ids
from .wrappers import admin_get_user_profile_public_info_by_ids_async
from .wrappers import create_my_profile
from .wrappers import create_my_profile_async
from .wrappers import delete_user_profile
from .wrappers import delete_user_profile_async
from .wrappers import get_custom_attributes_info
from .wrappers import get_custom_attributes_info_async
from .wrappers import get_my_private_custom_attributes_info
from .wrappers import get_my_private_custom_attributes_info_async
from .wrappers import get_my_profile_info
from .wrappers import get_my_profile_info_async
from .wrappers import get_my_zip_code
from .wrappers import get_my_zip_code_async
from .wrappers import get_private_custom_attributes_info
from .wrappers import get_private_custom_attributes_info_async
from .wrappers import get_user_profile_info
from .wrappers import get_user_profile_info_async
from .wrappers import get_user_profile_info_by_public_id
from .wrappers import get_user_profile_info_by_public_id_async
from .wrappers import public_create_user_profile
from .wrappers import public_create_user_profile_async
from .wrappers import public_get_custom_attributes_info
from .wrappers import public_get_custom_attributes_info_async
from .wrappers import public_get_user_profile_info
from .wrappers import public_get_user_profile_info_async
from .wrappers import public_get_user_profile_info_by_public_id
from .wrappers import public_get_user_profile_info_by_public_id_async
from .wrappers import public_get_user_profile_public_info
from .wrappers import public_get_user_profile_public_info_async
from .wrappers import public_get_user_profile_public_info_by_ids
from .wrappers import public_get_user_profile_public_info_by_ids_async
from .wrappers import public_update_custom_attributes_partially
from .wrappers import public_update_custom_attributes_partially_async
from .wrappers import public_update_user_profile
from .wrappers import public_update_user_profile_async
from .wrappers import public_update_user_profile_status
from .wrappers import public_update_user_profile_status_async
from .wrappers import update_custom_attributes_partially
from .wrappers import update_custom_attributes_partially_async
from .wrappers import update_my_private_custom_attributes_partially
from .wrappers import update_my_private_custom_attributes_partially_async
from .wrappers import update_my_profile
from .wrappers import update_my_profile_async
from .wrappers import update_my_zip_code
from .wrappers import update_my_zip_code_async
from .wrappers import update_private_custom_attributes_partially
from .wrappers import update_private_custom_attributes_partially_async
from .wrappers import update_user_profile
from .wrappers import update_user_profile_async
from .wrappers import update_user_profile_status
from .wrappers import update_user_profile_status_async
