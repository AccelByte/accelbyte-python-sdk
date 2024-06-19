# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# fleet-commander

from ._auth_check import auth_check
from ._portal_health_check import portal_health_check
from ._admin_account_get import admin_account_get
from ._admin_account_create import admin_account_create
from ._admin_account_link_token_get import admin_account_link_token_get
from ._admin_account_link_token_post import admin_account_link_token_post
from ._artifact_get import artifact_get
from ._artifact_bulk_delete import artifact_bulk_delete
from ._artifact_usage_get import artifact_usage_get
from ._artifact_delete import artifact_delete
from ._artifact_get_url import artifact_get_url
from ._development_server_configuration_list import (
    development_server_configuration_list,
)
from ._development_server_configuration_create import (
    development_server_configuration_create,
)
from ._development_server_configuration_get import development_server_configuration_get
from ._development_server_configuration_delete import (
    development_server_configuration_delete,
)
from ._fleet_list import fleet_list
from ._fleet_create import fleet_create
from ._fleet_get import fleet_get
from ._fleet_update import fleet_update
from ._fleet_delete import fleet_delete
from ._fleet_artifact_sampling_rules_get import fleet_artifact_sampling_rules_get
from ._fleet_artifact_sampling_rules_set import fleet_artifact_sampling_rules_set
from ._fleet_servers import fleet_servers
from ._fleet_server_history import fleet_server_history
from ._image_list import image_list
from ._image_get import image_get
from ._image_mark_for_deletion import image_mark_for_deletion
from ._image_patch import image_patch
from ._image_unmark_for_deletion import image_unmark_for_deletion
from ._qo_s_regions_get import qo_s_regions_get
from ._qo_s_regions_update import qo_s_regions_update
from ._info_regions import info_regions
from ._fleet_server_info import fleet_server_info
from ._fleet_server_connection_info import fleet_server_connection_info
from ._server_history import server_history
from ._info_supported_instances import info_supported_instances
from ._account_get import account_get
from ._fleet_claim_by_id import fleet_claim_by_id
from ._local_watchdog_connect import local_watchdog_connect
from ._fleet_claim_by_keys import fleet_claim_by_keys
from ._watchdog_connect import watchdog_connect
from ._upload_url_get import upload_url_get
from ._func1 import func1
from ._basic_health_check import basic_health_check


commands = [
    auth_check,
    portal_health_check,
    admin_account_get,
    admin_account_create,
    admin_account_link_token_get,
    admin_account_link_token_post,
    artifact_get,
    artifact_bulk_delete,
    artifact_usage_get,
    artifact_delete,
    artifact_get_url,
    development_server_configuration_list,
    development_server_configuration_create,
    development_server_configuration_get,
    development_server_configuration_delete,
    fleet_list,
    fleet_create,
    fleet_get,
    fleet_update,
    fleet_delete,
    fleet_artifact_sampling_rules_get,
    fleet_artifact_sampling_rules_set,
    fleet_servers,
    fleet_server_history,
    image_list,
    image_get,
    image_mark_for_deletion,
    image_patch,
    image_unmark_for_deletion,
    qo_s_regions_get,
    qo_s_regions_update,
    info_regions,
    fleet_server_info,
    fleet_server_connection_info,
    server_history,
    info_supported_instances,
    account_get,
    fleet_claim_by_id,
    local_watchdog_connect,
    fleet_claim_by_keys,
    watchdog_connect,
    upload_url_get,
    func1,
    basic_health_check,
]
