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

# account
from .wrappers import account_create
from .wrappers import account_create_async
from .wrappers import account_get
from .wrappers import account_get_async
from .wrappers import account_link
from .wrappers import account_link_async
from .wrappers import account_link_token_get
from .wrappers import account_link_token_get_async

# ams_info
from .wrappers import info_regions
from .wrappers import info_regions_async
from .wrappers import info_supported_instances
from .wrappers import info_supported_instances_async

# auth
from .wrappers import auth_check
from .wrappers import auth_check_async

# fleet_commander
from .wrappers import basic_health_check
from .wrappers import basic_health_check_async
from .wrappers import func1
from .wrappers import func1_async
from .wrappers import portal_health_check
from .wrappers import portal_health_check_async

# fleets
from .wrappers import fleet_claim_by_id
from .wrappers import fleet_claim_by_id_async
from .wrappers import fleet_claim_by_keys
from .wrappers import fleet_claim_by_keys_async
from .wrappers import fleet_create
from .wrappers import fleet_create_async
from .wrappers import fleet_delete
from .wrappers import fleet_delete_async
from .wrappers import fleet_get
from .wrappers import fleet_get_async
from .wrappers import fleet_list
from .wrappers import fleet_list_async
from .wrappers import fleet_servers
from .wrappers import fleet_servers_async
from .wrappers import fleet_update
from .wrappers import fleet_update_async

# images
from .wrappers import image_get
from .wrappers import image_get_async
from .wrappers import image_list
from .wrappers import image_list_async
from .wrappers import image_patch
from .wrappers import image_patch_async

# servers
from .wrappers import fleet_server_history
from .wrappers import fleet_server_history_async
from .wrappers import fleet_server_info
from .wrappers import fleet_server_info_async
from .wrappers import server_history
from .wrappers import server_history_async

# watchdogs
from .wrappers import watchdog_connect
from .wrappers import watchdog_connect_async
