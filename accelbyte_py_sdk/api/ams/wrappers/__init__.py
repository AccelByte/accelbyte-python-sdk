# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the Fleet Commander."""

__version__ = "1.34.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._account import account_get
from ._account import account_get_async
from ._account import admin_account_create
from ._account import admin_account_create_async
from ._account import admin_account_get
from ._account import admin_account_get_async
from ._account import admin_account_link
from ._account import admin_account_link_async
from ._account import admin_account_link_token_get
from ._account import admin_account_link_token_get_async

from ._ams_info import info_regions
from ._ams_info import info_regions_async
from ._ams_info import info_supported_instances
from ._ams_info import info_supported_instances_async
from ._ams_info import upload_url_get
from ._ams_info import upload_url_get_async

from ._ams_qo_s import qo_s_regions_get
from ._ams_qo_s import qo_s_regions_get_async
from ._ams_qo_s import qo_s_regions_update
from ._ams_qo_s import qo_s_regions_update_async

from ._artifacts import artifact_bulk_delete
from ._artifacts import artifact_bulk_delete_async
from ._artifacts import artifact_delete
from ._artifacts import artifact_delete_async
from ._artifacts import artifact_get
from ._artifacts import artifact_get_async
from ._artifacts import artifact_get_url
from ._artifacts import artifact_get_url_async
from ._artifacts import artifact_usage_get
from ._artifacts import artifact_usage_get_async
from ._artifacts import fleet_artifact_sampling_rules_get
from ._artifacts import fleet_artifact_sampling_rules_get_async
from ._artifacts import fleet_artifact_sampling_rules_set
from ._artifacts import fleet_artifact_sampling_rules_set_async

from ._auth import auth_check
from ._auth import auth_check_async

from ._development import development_server_configuration_create
from ._development import development_server_configuration_create_async
from ._development import development_server_configuration_delete
from ._development import development_server_configuration_delete_async
from ._development import development_server_configuration_get
from ._development import development_server_configuration_get_async
from ._development import development_server_configuration_list
from ._development import development_server_configuration_list_async

from ._fleet_commander import basic_health_check
from ._fleet_commander import basic_health_check_async
from ._fleet_commander import func1
from ._fleet_commander import func1_async
from ._fleet_commander import portal_health_check
from ._fleet_commander import portal_health_check_async

from ._fleets import fleet_claim_by_id
from ._fleets import fleet_claim_by_id_async
from ._fleets import fleet_claim_by_keys
from ._fleets import fleet_claim_by_keys_async
from ._fleets import fleet_create
from ._fleets import fleet_create_async
from ._fleets import fleet_delete
from ._fleets import fleet_delete_async
from ._fleets import fleet_get
from ._fleets import fleet_get_async
from ._fleets import fleet_list
from ._fleets import fleet_list_async
from ._fleets import fleet_servers
from ._fleets import fleet_servers_async
from ._fleets import fleet_update
from ._fleets import fleet_update_async

from ._images import image_get
from ._images import image_get_async
from ._images import image_list
from ._images import image_list_async
from ._images import image_mark_for_deletion
from ._images import image_mark_for_deletion_async
from ._images import image_patch
from ._images import image_patch_async
from ._images import image_unmark_for_deletion
from ._images import image_unmark_for_deletion_async
from ._images import images_storage
from ._images import images_storage_async

from ._servers import fleet_server_connection_info
from ._servers import fleet_server_connection_info_async
from ._servers import fleet_server_history
from ._servers import fleet_server_history_async
from ._servers import fleet_server_info
from ._servers import fleet_server_info_async
from ._servers import server_history
from ._servers import server_history_async

from ._watchdogs import local_watchdog_connect
from ._watchdogs import local_watchdog_connect_async
from ._watchdogs import watchdog_connect
from ._watchdogs import watchdog_connect_async
