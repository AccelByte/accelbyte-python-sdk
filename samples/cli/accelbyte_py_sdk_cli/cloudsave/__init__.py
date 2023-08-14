# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-cloudsave-service (3.10.1)

from ._admin_list_admin_game_record_v1 import admin_list_admin_game_record_v1
from ._admin_bulk_get_admin_game_record_v1 import admin_bulk_get_admin_game_record_v1
from ._admin_get_admin_game_record_v1 import admin_get_admin_game_record_v1
from ._admin_put_admin_game_record_v1 import admin_put_admin_game_record_v1
from ._admin_post_admin_game_record_v1 import admin_post_admin_game_record_v1
from ._admin_delete_admin_game_record_v1 import admin_delete_admin_game_record_v1
from ._admin_list_game_binary_records_v1 import admin_list_game_binary_records_v1
from ._admin_post_game_binary_record_v1 import admin_post_game_binary_record_v1
from ._admin_get_game_binary_record_v1 import admin_get_game_binary_record_v1
from ._admin_put_game_binary_record_v1 import admin_put_game_binary_record_v1
from ._admin_delete_game_binary_record_v1 import admin_delete_game_binary_record_v1
from ._admin_put_game_binary_recor_metadata_v1 import (
    admin_put_game_binary_recor_metadata_v1,
)
from ._admin_post_game_binary_presigned_urlv1 import (
    admin_post_game_binary_presigned_urlv1,
)
from ._admin_put_admin_game_record_concurrent_handler_v1 import (
    admin_put_admin_game_record_concurrent_handler_v1,
)
from ._admin_put_game_record_concurrent_handler_v1 import (
    admin_put_game_record_concurrent_handler_v1,
)
from ._get_plugin_config import get_plugin_config
from ._create_plugin_config import create_plugin_config
from ._delete_plugin_config import delete_plugin_config
from ._update_plugin_config import update_plugin_config
from ._list_game_records_handler_v1 import list_game_records_handler_v1
from ._admin_get_game_record_handler_v1 import admin_get_game_record_handler_v1
from ._admin_put_game_record_handler_v1 import admin_put_game_record_handler_v1
from ._admin_post_game_record_handler_v1 import admin_post_game_record_handler_v1
from ._admin_delete_game_record_handler_v1 import admin_delete_game_record_handler_v1
from ._bulk_get_admin_player_record_by_user_ids_v1 import (
    bulk_get_admin_player_record_by_user_ids_v1,
)
from ._bulk_get_player_record_size_handler_v1 import (
    bulk_get_player_record_size_handler_v1,
)
from ._list_player_record_handler_v1 import list_player_record_handler_v1
from ._admin_list_admin_user_records_v1 import admin_list_admin_user_records_v1
from ._admin_bulk_get_admin_player_record_v1 import (
    admin_bulk_get_admin_player_record_v1,
)
from ._admin_get_admin_player_record_v1 import admin_get_admin_player_record_v1
from ._admin_put_admin_player_record_v1 import admin_put_admin_player_record_v1
from ._admin_post_player_admin_record_v1 import admin_post_player_admin_record_v1
from ._admin_delete_admin_player_record_v1 import admin_delete_admin_player_record_v1
from ._admin_list_player_binary_records_v1 import admin_list_player_binary_records_v1
from ._admin_post_player_binary_record_v1 import admin_post_player_binary_record_v1
from ._admin_get_player_binary_record_v1 import admin_get_player_binary_record_v1
from ._admin_put_player_binary_record_v1 import admin_put_player_binary_record_v1
from ._admin_delete_player_binary_record_v1 import admin_delete_player_binary_record_v1
from ._admin_put_player_binary_recor_metadata_v1 import (
    admin_put_player_binary_recor_metadata_v1,
)
from ._admin_post_player_binary_presigned_urlv1 import (
    admin_post_player_binary_presigned_urlv1,
)
from ._admin_put_admin_player_record_concurrent_handler_v1 import (
    admin_put_admin_player_record_concurrent_handler_v1,
)
from ._admin_put_player_record_concurrent_handler_v1 import (
    admin_put_player_record_concurrent_handler_v1,
)
from ._admin_put_player_public_record_concurrent_handler_v1 import (
    admin_put_player_public_record_concurrent_handler_v1,
)
from ._admin_retrieve_player_records import admin_retrieve_player_records
from ._admin_get_player_record_handler_v1 import admin_get_player_record_handler_v1
from ._admin_put_player_record_handler_v1 import admin_put_player_record_handler_v1
from ._admin_post_player_record_handler_v1 import admin_post_player_record_handler_v1
from ._admin_delete_player_record_handler_v1 import (
    admin_delete_player_record_handler_v1,
)
from ._admin_get_player_public_record_handler_v1 import (
    admin_get_player_public_record_handler_v1,
)
from ._admin_put_player_public_record_handler_v1 import (
    admin_put_player_public_record_handler_v1,
)
from ._admin_post_player_public_record_handler_v1 import (
    admin_post_player_public_record_handler_v1,
)
from ._admin_delete_player_public_record_handler_v1 import (
    admin_delete_player_public_record_handler_v1,
)
from ._admin_get_player_record_size_handler_v1 import (
    admin_get_player_record_size_handler_v1,
)
from ._list_game_binary_records_v1 import list_game_binary_records_v1
from ._post_game_binary_record_v1 import post_game_binary_record_v1
from ._bulk_get_game_binary_record_v1 import bulk_get_game_binary_record_v1
from ._get_game_binary_record_v1 import get_game_binary_record_v1
from ._put_game_binary_record_v1 import put_game_binary_record_v1
from ._delete_game_binary_record_v1 import delete_game_binary_record_v1
from ._post_game_binary_presigned_urlv1 import post_game_binary_presigned_urlv1
from ._put_game_record_concurrent_handler_v1 import (
    put_game_record_concurrent_handler_v1,
)
from ._get_game_records_bulk import get_game_records_bulk
from ._get_game_record_handler_v1 import get_game_record_handler_v1
from ._put_game_record_handler_v1 import put_game_record_handler_v1
from ._post_game_record_handler_v1 import post_game_record_handler_v1
from ._delete_game_record_handler_v1 import delete_game_record_handler_v1
from ._bulk_get_player_public_binary_records_v1 import (
    bulk_get_player_public_binary_records_v1,
)
from ._bulk_get_player_public_record_handler_v1 import (
    bulk_get_player_public_record_handler_v1,
)
from ._list_my_binary_records_v1 import list_my_binary_records_v1
from ._bulk_get_my_binary_record_v1 import bulk_get_my_binary_record_v1
from ._retrieve_player_records import retrieve_player_records
from ._get_player_records_bulk_handler_v1 import get_player_records_bulk_handler_v1
from ._public_delete_player_public_record_handler_v1 import (
    public_delete_player_public_record_handler_v1,
)
from ._post_player_binary_record_v1 import post_player_binary_record_v1
from ._list_other_player_public_binary_records_v1 import (
    list_other_player_public_binary_records_v1,
)
from ._bulk_get_other_player_public_binary_records_v1 import (
    bulk_get_other_player_public_binary_records_v1,
)
from ._get_player_binary_record_v1 import get_player_binary_record_v1
from ._put_player_binary_record_v1 import put_player_binary_record_v1
from ._delete_player_binary_record_v1 import delete_player_binary_record_v1
from ._put_player_binary_recor_metadata_v1 import put_player_binary_recor_metadata_v1
from ._post_player_binary_presigned_urlv1 import post_player_binary_presigned_urlv1
from ._get_player_public_binary_records_v1 import get_player_public_binary_records_v1
from ._put_player_record_concurrent_handler_v1 import (
    put_player_record_concurrent_handler_v1,
)
from ._put_player_public_record_concurrent_handler_v1 import (
    put_player_public_record_concurrent_handler_v1,
)
from ._get_other_player_public_record_key_handler_v1 import (
    get_other_player_public_record_key_handler_v1,
)
from ._get_other_player_public_record_handler_v1 import (
    get_other_player_public_record_handler_v1,
)
from ._get_player_record_handler_v1 import get_player_record_handler_v1
from ._put_player_record_handler_v1 import put_player_record_handler_v1
from ._post_player_record_handler_v1 import post_player_record_handler_v1
from ._delete_player_record_handler_v1 import delete_player_record_handler_v1
from ._get_player_public_record_handler_v1 import get_player_public_record_handler_v1
from ._put_player_public_record_handler_v1 import put_player_public_record_handler_v1
from ._post_player_public_record_handler_v1 import post_player_public_record_handler_v1


commands = [
    admin_list_admin_game_record_v1,
    admin_bulk_get_admin_game_record_v1,
    admin_get_admin_game_record_v1,
    admin_put_admin_game_record_v1,
    admin_post_admin_game_record_v1,
    admin_delete_admin_game_record_v1,
    admin_list_game_binary_records_v1,
    admin_post_game_binary_record_v1,
    admin_get_game_binary_record_v1,
    admin_put_game_binary_record_v1,
    admin_delete_game_binary_record_v1,
    admin_put_game_binary_recor_metadata_v1,
    admin_post_game_binary_presigned_urlv1,
    admin_put_admin_game_record_concurrent_handler_v1,
    admin_put_game_record_concurrent_handler_v1,
    get_plugin_config,
    create_plugin_config,
    delete_plugin_config,
    update_plugin_config,
    list_game_records_handler_v1,
    admin_get_game_record_handler_v1,
    admin_put_game_record_handler_v1,
    admin_post_game_record_handler_v1,
    admin_delete_game_record_handler_v1,
    bulk_get_admin_player_record_by_user_ids_v1,
    bulk_get_player_record_size_handler_v1,
    list_player_record_handler_v1,
    admin_list_admin_user_records_v1,
    admin_bulk_get_admin_player_record_v1,
    admin_get_admin_player_record_v1,
    admin_put_admin_player_record_v1,
    admin_post_player_admin_record_v1,
    admin_delete_admin_player_record_v1,
    admin_list_player_binary_records_v1,
    admin_post_player_binary_record_v1,
    admin_get_player_binary_record_v1,
    admin_put_player_binary_record_v1,
    admin_delete_player_binary_record_v1,
    admin_put_player_binary_recor_metadata_v1,
    admin_post_player_binary_presigned_urlv1,
    admin_put_admin_player_record_concurrent_handler_v1,
    admin_put_player_record_concurrent_handler_v1,
    admin_put_player_public_record_concurrent_handler_v1,
    admin_retrieve_player_records,
    admin_get_player_record_handler_v1,
    admin_put_player_record_handler_v1,
    admin_post_player_record_handler_v1,
    admin_delete_player_record_handler_v1,
    admin_get_player_public_record_handler_v1,
    admin_put_player_public_record_handler_v1,
    admin_post_player_public_record_handler_v1,
    admin_delete_player_public_record_handler_v1,
    admin_get_player_record_size_handler_v1,
    list_game_binary_records_v1,
    post_game_binary_record_v1,
    bulk_get_game_binary_record_v1,
    get_game_binary_record_v1,
    put_game_binary_record_v1,
    delete_game_binary_record_v1,
    post_game_binary_presigned_urlv1,
    put_game_record_concurrent_handler_v1,
    get_game_records_bulk,
    get_game_record_handler_v1,
    put_game_record_handler_v1,
    post_game_record_handler_v1,
    delete_game_record_handler_v1,
    bulk_get_player_public_binary_records_v1,
    bulk_get_player_public_record_handler_v1,
    list_my_binary_records_v1,
    bulk_get_my_binary_record_v1,
    retrieve_player_records,
    get_player_records_bulk_handler_v1,
    public_delete_player_public_record_handler_v1,
    post_player_binary_record_v1,
    list_other_player_public_binary_records_v1,
    bulk_get_other_player_public_binary_records_v1,
    get_player_binary_record_v1,
    put_player_binary_record_v1,
    delete_player_binary_record_v1,
    put_player_binary_recor_metadata_v1,
    post_player_binary_presigned_urlv1,
    get_player_public_binary_records_v1,
    put_player_record_concurrent_handler_v1,
    put_player_public_record_concurrent_handler_v1,
    get_other_player_public_record_key_handler_v1,
    get_other_player_public_record_handler_v1,
    get_player_record_handler_v1,
    put_player_record_handler_v1,
    post_player_record_handler_v1,
    delete_player_record_handler_v1,
    get_player_public_record_handler_v1,
    put_player_public_record_handler_v1,
    post_player_public_record_handler_v1,
]
