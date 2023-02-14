# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Basic Service."""

__version__ = "2.5.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._anonymization import anonymize_user_profile
from ._anonymization import anonymize_user_profile_async

from ._equ8_config import delete_config
from ._equ8_config import delete_config_async
from ._equ8_config import get_config
from ._equ8_config import get_config_async
from ._equ8_config import update_config
from ._equ8_config import update_config_async

from ._file_upload import generated_upload_url
from ._file_upload import generated_upload_url_async
from ._file_upload import generated_user_upload_content_url
from ._file_upload import generated_user_upload_content_url_async
from ._file_upload import public_generated_upload_url
from ._file_upload import public_generated_upload_url_async
from ._file_upload import public_generated_user_upload_content_url
from ._file_upload import public_generated_user_upload_content_url_async

from ._misc import add_country_group
from ._misc import add_country_group_async
from ._misc import delete_country_group
from ._misc import delete_country_group_async
from ._misc import get_countries
from ._misc import get_countries_async
from ._misc import get_country_groups
from ._misc import get_country_groups_async
from ._misc import get_languages
from ._misc import get_languages_async
from ._misc import get_time_zones
from ._misc import get_time_zones_async
from ._misc import public_get_countries
from ._misc import public_get_countries_async
from ._misc import public_get_languages
from ._misc import public_get_languages_async
from ._misc import public_get_time
from ._misc import public_get_time_async
from ._misc import public_get_time_zones
from ._misc import public_get_time_zones_async
from ._misc import update_country_group
from ._misc import update_country_group_async

from ._namespace import change_namespace_status
from ._namespace import change_namespace_status_async
from ._namespace import create_namespace
from ._namespace import create_namespace_async
from ._namespace import delete_namespace
from ._namespace import delete_namespace_async
from ._namespace import get_game_namespaces
from ._namespace import get_game_namespaces_async
from ._namespace import get_namespace
from ._namespace import get_namespace_async
from ._namespace import get_namespace_publisher
from ._namespace import get_namespace_publisher_async
from ._namespace import get_namespaces
from ._namespace import get_namespaces_async
from ._namespace import public_get_namespace_publisher
from ._namespace import public_get_namespace_publisher_async
from ._namespace import public_get_namespaces
from ._namespace import public_get_namespaces_async
from ._namespace import update_namespace
from ._namespace import update_namespace_async

from ._user_action import ban_users
from ._user_action import ban_users_async
from ._user_action import get_actions
from ._user_action import get_actions_async
from ._user_action import get_banned_users
from ._user_action import get_banned_users_async
from ._user_action import get_user_status
from ._user_action import get_user_status_async
from ._user_action import public_report_user
from ._user_action import public_report_user_async
from ._user_action import report_user
from ._user_action import report_user_async
from ._user_action import un_ban_users
from ._user_action import un_ban_users_async

from ._user_profile import admin_get_user_profile_public_info_by_ids
from ._user_profile import admin_get_user_profile_public_info_by_ids_async
from ._user_profile import create_my_profile
from ._user_profile import create_my_profile_async
from ._user_profile import delete_user_profile
from ._user_profile import delete_user_profile_async
from ._user_profile import get_custom_attributes_info
from ._user_profile import get_custom_attributes_info_async
from ._user_profile import get_my_private_custom_attributes_info
from ._user_profile import get_my_private_custom_attributes_info_async
from ._user_profile import get_my_profile_info
from ._user_profile import get_my_profile_info_async
from ._user_profile import get_my_zip_code
from ._user_profile import get_my_zip_code_async
from ._user_profile import get_private_custom_attributes_info
from ._user_profile import get_private_custom_attributes_info_async
from ._user_profile import get_user_profile_info
from ._user_profile import get_user_profile_info_async
from ._user_profile import get_user_profile_info_by_public_id
from ._user_profile import get_user_profile_info_by_public_id_async
from ._user_profile import public_create_user_profile
from ._user_profile import public_create_user_profile_async
from ._user_profile import public_get_custom_attributes_info
from ._user_profile import public_get_custom_attributes_info_async
from ._user_profile import public_get_user_profile_info
from ._user_profile import public_get_user_profile_info_async
from ._user_profile import public_get_user_profile_info_by_public_id
from ._user_profile import public_get_user_profile_info_by_public_id_async
from ._user_profile import public_get_user_profile_public_info
from ._user_profile import public_get_user_profile_public_info_async
from ._user_profile import public_get_user_profile_public_info_by_ids
from ._user_profile import public_get_user_profile_public_info_by_ids_async
from ._user_profile import public_update_custom_attributes_partially
from ._user_profile import public_update_custom_attributes_partially_async
from ._user_profile import public_update_user_profile
from ._user_profile import public_update_user_profile_async
from ._user_profile import public_update_user_profile_status
from ._user_profile import public_update_user_profile_status_async
from ._user_profile import update_custom_attributes_partially
from ._user_profile import update_custom_attributes_partially_async
from ._user_profile import update_my_private_custom_attributes_partially
from ._user_profile import update_my_private_custom_attributes_partially_async
from ._user_profile import update_my_profile
from ._user_profile import update_my_profile_async
from ._user_profile import update_my_zip_code
from ._user_profile import update_my_zip_code_async
from ._user_profile import update_private_custom_attributes_partially
from ._user_profile import update_private_custom_attributes_partially_async
from ._user_profile import update_user_profile
from ._user_profile import update_user_profile_async
from ._user_profile import update_user_profile_status
from ._user_profile import update_user_profile_status_async
