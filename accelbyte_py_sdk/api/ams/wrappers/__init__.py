# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the Fleet Commander."""

__version__ = "1.0.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._account import account_create
from ._account import account_create_async
from ._account import account_get
from ._account import account_get_async
from ._account import account_link
from ._account import account_link_async
from ._account import account_link_token_get
from ._account import account_link_token_get_async

from ._ams_info import info_regions
from ._ams_info import info_regions_async
from ._ams_info import info_supported_instances
from ._ams_info import info_supported_instances_async

from ._auth import auth_check
from ._auth import auth_check_async

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
from ._images import image_patch
from ._images import image_patch_async

from ._servers import fleet_server_history
from ._servers import fleet_server_history_async
from ._servers import fleet_server_info
from ._servers import fleet_server_info_async
from ._servers import server_history
from ._servers import server_history_async

from ._watchdogs import watchdog_connect
from ._watchdogs import watchdog_connect_async
