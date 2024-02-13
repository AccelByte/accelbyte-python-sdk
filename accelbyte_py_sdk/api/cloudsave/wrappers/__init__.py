# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Cloudsave Service."""

__version__ = "3.15.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._admin_concurrent_record import admin_put_admin_game_record_concurrent_handler_v1
from ._admin_concurrent_record import (
    admin_put_admin_game_record_concurrent_handler_v1_async,
)
from ._admin_concurrent_record import (
    admin_put_admin_player_record_concurrent_handler_v1,
)
from ._admin_concurrent_record import (
    admin_put_admin_player_record_concurrent_handler_v1_async,
)
from ._admin_concurrent_record import admin_put_game_record_concurrent_handler_v1
from ._admin_concurrent_record import admin_put_game_record_concurrent_handler_v1_async
from ._admin_concurrent_record import (
    admin_put_player_public_record_concurrent_handler_v1,
)
from ._admin_concurrent_record import (
    admin_put_player_public_record_concurrent_handler_v1_async,
)
from ._admin_concurrent_record import admin_put_player_record_concurrent_handler_v1
from ._admin_concurrent_record import (
    admin_put_player_record_concurrent_handler_v1_async,
)

from ._admin_game_binary_record import admin_delete_game_binary_record_v1
from ._admin_game_binary_record import admin_delete_game_binary_record_v1_async
from ._admin_game_binary_record import admin_get_game_binary_record_v1
from ._admin_game_binary_record import admin_get_game_binary_record_v1_async
from ._admin_game_binary_record import admin_list_game_binary_records_v1
from ._admin_game_binary_record import admin_list_game_binary_records_v1_async
from ._admin_game_binary_record import admin_post_game_binary_presigned_urlv1
from ._admin_game_binary_record import admin_post_game_binary_presigned_urlv1_async
from ._admin_game_binary_record import admin_post_game_binary_record_v1
from ._admin_game_binary_record import admin_post_game_binary_record_v1_async
from ._admin_game_binary_record import admin_put_game_binary_recor_metadata_v1
from ._admin_game_binary_record import admin_put_game_binary_recor_metadata_v1_async
from ._admin_game_binary_record import admin_put_game_binary_record_v1
from ._admin_game_binary_record import admin_put_game_binary_record_v1_async

from ._admin_game_record import admin_delete_game_record_handler_v1
from ._admin_game_record import admin_delete_game_record_handler_v1_async
from ._admin_game_record import admin_get_game_record_handler_v1
from ._admin_game_record import admin_get_game_record_handler_v1_async
from ._admin_game_record import admin_post_game_record_handler_v1
from ._admin_game_record import admin_post_game_record_handler_v1_async
from ._admin_game_record import admin_put_game_record_handler_v1
from ._admin_game_record import admin_put_game_record_handler_v1_async
from ._admin_game_record import list_game_records_handler_v1
from ._admin_game_record import list_game_records_handler_v1_async

from ._admin_player_binary_record import admin_delete_player_binary_record_v1
from ._admin_player_binary_record import admin_delete_player_binary_record_v1_async
from ._admin_player_binary_record import admin_get_player_binary_record_v1
from ._admin_player_binary_record import admin_get_player_binary_record_v1_async
from ._admin_player_binary_record import admin_list_player_binary_records_v1
from ._admin_player_binary_record import admin_list_player_binary_records_v1_async
from ._admin_player_binary_record import admin_post_player_binary_presigned_urlv1
from ._admin_player_binary_record import admin_post_player_binary_presigned_urlv1_async
from ._admin_player_binary_record import admin_post_player_binary_record_v1
from ._admin_player_binary_record import admin_post_player_binary_record_v1_async
from ._admin_player_binary_record import admin_put_player_binary_recor_metadata_v1
from ._admin_player_binary_record import admin_put_player_binary_recor_metadata_v1_async
from ._admin_player_binary_record import admin_put_player_binary_record_v1
from ._admin_player_binary_record import admin_put_player_binary_record_v1_async

from ._admin_player_record import admin_delete_player_public_record_handler_v1
from ._admin_player_record import admin_delete_player_public_record_handler_v1_async
from ._admin_player_record import admin_delete_player_record_handler_v1
from ._admin_player_record import admin_delete_player_record_handler_v1_async
from ._admin_player_record import admin_get_player_public_record_handler_v1
from ._admin_player_record import admin_get_player_public_record_handler_v1_async
from ._admin_player_record import admin_get_player_record_handler_v1
from ._admin_player_record import admin_get_player_record_handler_v1_async
from ._admin_player_record import admin_get_player_record_size_handler_v1
from ._admin_player_record import admin_get_player_record_size_handler_v1_async
from ._admin_player_record import admin_get_player_records_handler_v1
from ._admin_player_record import admin_get_player_records_handler_v1_async
from ._admin_player_record import admin_post_player_public_record_handler_v1
from ._admin_player_record import admin_post_player_public_record_handler_v1_async
from ._admin_player_record import admin_post_player_record_handler_v1
from ._admin_player_record import admin_post_player_record_handler_v1_async
from ._admin_player_record import admin_put_player_public_record_handler_v1
from ._admin_player_record import admin_put_player_public_record_handler_v1_async
from ._admin_player_record import admin_put_player_record_handler_v1
from ._admin_player_record import admin_put_player_record_handler_v1_async
from ._admin_player_record import admin_put_player_records_handler_v1
from ._admin_player_record import admin_put_player_records_handler_v1_async
from ._admin_player_record import admin_retrieve_player_records
from ._admin_player_record import admin_retrieve_player_records_async
from ._admin_player_record import bulk_get_player_record_size_handler_v1
from ._admin_player_record import bulk_get_player_record_size_handler_v1_async
from ._admin_player_record import list_player_record_handler_v1
from ._admin_player_record import list_player_record_handler_v1_async

from ._admin_record import admin_bulk_get_admin_game_record_v1
from ._admin_record import admin_bulk_get_admin_game_record_v1_async
from ._admin_record import admin_bulk_get_admin_player_record_v1
from ._admin_record import admin_bulk_get_admin_player_record_v1_async
from ._admin_record import admin_delete_admin_game_record_v1
from ._admin_record import admin_delete_admin_game_record_v1_async
from ._admin_record import admin_delete_admin_player_record_v1
from ._admin_record import admin_delete_admin_player_record_v1_async
from ._admin_record import admin_get_admin_game_record_v1
from ._admin_record import admin_get_admin_game_record_v1_async
from ._admin_record import admin_get_admin_player_record_v1
from ._admin_record import admin_get_admin_player_record_v1_async
from ._admin_record import admin_list_admin_game_record_v1
from ._admin_record import admin_list_admin_game_record_v1_async
from ._admin_record import admin_list_admin_user_records_v1
from ._admin_record import admin_list_admin_user_records_v1_async
from ._admin_record import admin_post_admin_game_record_v1
from ._admin_record import admin_post_admin_game_record_v1_async
from ._admin_record import admin_post_player_admin_record_v1
from ._admin_record import admin_post_player_admin_record_v1_async
from ._admin_record import admin_put_admin_game_record_v1
from ._admin_record import admin_put_admin_game_record_v1_async
from ._admin_record import admin_put_admin_player_record_v1
from ._admin_record import admin_put_admin_player_record_v1_async
from ._admin_record import bulk_get_admin_player_record_by_user_ids_v1
from ._admin_record import bulk_get_admin_player_record_by_user_ids_v1_async

from ._concurrent_record import put_game_record_concurrent_handler_v1
from ._concurrent_record import put_game_record_concurrent_handler_v1_async
from ._concurrent_record import put_player_public_record_concurrent_handler_v1
from ._concurrent_record import put_player_public_record_concurrent_handler_v1_async
from ._concurrent_record import put_player_record_concurrent_handler_v1
from ._concurrent_record import put_player_record_concurrent_handler_v1_async

from ._plugin_config import create_plugin_config
from ._plugin_config import create_plugin_config_async
from ._plugin_config import delete_plugin_config
from ._plugin_config import delete_plugin_config_async
from ._plugin_config import get_plugin_config
from ._plugin_config import get_plugin_config_async
from ._plugin_config import update_plugin_config
from ._plugin_config import update_plugin_config_async

from ._public_game_binary_record import bulk_get_game_binary_record_v1
from ._public_game_binary_record import bulk_get_game_binary_record_v1_async
from ._public_game_binary_record import delete_game_binary_record_v1
from ._public_game_binary_record import delete_game_binary_record_v1_async
from ._public_game_binary_record import get_game_binary_record_v1
from ._public_game_binary_record import get_game_binary_record_v1_async
from ._public_game_binary_record import list_game_binary_records_v1
from ._public_game_binary_record import list_game_binary_records_v1_async
from ._public_game_binary_record import post_game_binary_presigned_urlv1
from ._public_game_binary_record import post_game_binary_presigned_urlv1_async
from ._public_game_binary_record import post_game_binary_record_v1
from ._public_game_binary_record import post_game_binary_record_v1_async
from ._public_game_binary_record import put_game_binary_record_v1
from ._public_game_binary_record import put_game_binary_record_v1_async

from ._public_game_record import delete_game_record_handler_v1
from ._public_game_record import delete_game_record_handler_v1_async
from ._public_game_record import get_game_record_handler_v1
from ._public_game_record import get_game_record_handler_v1_async
from ._public_game_record import get_game_records_bulk
from ._public_game_record import get_game_records_bulk_async
from ._public_game_record import post_game_record_handler_v1
from ._public_game_record import post_game_record_handler_v1_async
from ._public_game_record import put_game_record_handler_v1
from ._public_game_record import put_game_record_handler_v1_async

from ._public_player_binary_record import bulk_get_my_binary_record_v1
from ._public_player_binary_record import bulk_get_my_binary_record_v1_async
from ._public_player_binary_record import bulk_get_other_player_public_binary_records_v1
from ._public_player_binary_record import (
    bulk_get_other_player_public_binary_records_v1_async,
)
from ._public_player_binary_record import bulk_get_player_public_binary_records_v1
from ._public_player_binary_record import bulk_get_player_public_binary_records_v1_async
from ._public_player_binary_record import delete_player_binary_record_v1
from ._public_player_binary_record import delete_player_binary_record_v1_async
from ._public_player_binary_record import get_player_binary_record_v1
from ._public_player_binary_record import get_player_binary_record_v1_async
from ._public_player_binary_record import get_player_public_binary_records_v1
from ._public_player_binary_record import get_player_public_binary_records_v1_async
from ._public_player_binary_record import list_my_binary_records_v1
from ._public_player_binary_record import list_my_binary_records_v1_async
from ._public_player_binary_record import list_other_player_public_binary_records_v1
from ._public_player_binary_record import (
    list_other_player_public_binary_records_v1_async,
)
from ._public_player_binary_record import post_player_binary_presigned_urlv1
from ._public_player_binary_record import post_player_binary_presigned_urlv1_async
from ._public_player_binary_record import post_player_binary_record_v1
from ._public_player_binary_record import post_player_binary_record_v1_async
from ._public_player_binary_record import put_player_binary_recor_metadata_v1
from ._public_player_binary_record import put_player_binary_recor_metadata_v1_async
from ._public_player_binary_record import put_player_binary_record_v1
from ._public_player_binary_record import put_player_binary_record_v1_async

from ._public_player_record import bulk_get_player_public_record_handler_v1
from ._public_player_record import bulk_get_player_public_record_handler_v1_async
from ._public_player_record import delete_player_record_handler_v1
from ._public_player_record import delete_player_record_handler_v1_async
from ._public_player_record import get_other_player_public_record_handler_v1
from ._public_player_record import get_other_player_public_record_handler_v1_async
from ._public_player_record import get_other_player_public_record_key_handler_v1
from ._public_player_record import get_other_player_public_record_key_handler_v1_async
from ._public_player_record import get_player_public_record_handler_v1
from ._public_player_record import get_player_public_record_handler_v1_async
from ._public_player_record import get_player_record_handler_v1
from ._public_player_record import get_player_record_handler_v1_async
from ._public_player_record import get_player_records_bulk_handler_v1
from ._public_player_record import get_player_records_bulk_handler_v1_async
from ._public_player_record import post_player_public_record_handler_v1
from ._public_player_record import post_player_public_record_handler_v1_async
from ._public_player_record import post_player_record_handler_v1
from ._public_player_record import post_player_record_handler_v1_async
from ._public_player_record import public_delete_player_public_record_handler_v1
from ._public_player_record import public_delete_player_public_record_handler_v1_async
from ._public_player_record import put_player_public_record_handler_v1
from ._public_player_record import put_player_public_record_handler_v1_async
from ._public_player_record import put_player_record_handler_v1
from ._public_player_record import put_player_record_handler_v1_async
from ._public_player_record import retrieve_player_records
from ._public_player_record import retrieve_player_records_async

from ._tags import admin_delete_tag_handler_v1
from ._tags import admin_delete_tag_handler_v1_async
from ._tags import admin_list_tags_handler_v1
from ._tags import admin_list_tags_handler_v1_async
from ._tags import admin_post_tag_handler_v1
from ._tags import admin_post_tag_handler_v1_async
from ._tags import public_list_tags_handler_v1
from ._tags import public_list_tags_handler_v1_async

from ._ttl_config import delete_game_binary_record_ttl_config
from ._ttl_config import delete_game_binary_record_ttl_config_async
from ._ttl_config import delete_game_record_ttl_config
from ._ttl_config import delete_game_record_ttl_config_async
