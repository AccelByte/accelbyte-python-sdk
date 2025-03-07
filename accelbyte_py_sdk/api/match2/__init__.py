# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Match Service V2."""

__version__ = "2.32.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# backfill
from .wrappers import accept_backfill
from .wrappers import accept_backfill_async
from .wrappers import admin_query_backfill
from .wrappers import admin_query_backfill_async
from .wrappers import create_backfill
from .wrappers import create_backfill_async
from .wrappers import delete_backfill
from .wrappers import delete_backfill_async
from .wrappers import get_backfill
from .wrappers import get_backfill_async
from .wrappers import get_backfill_proposal
from .wrappers import get_backfill_proposal_async
from .wrappers import reject_backfill
from .wrappers import reject_backfill_async

# config
from .wrappers import admin_get_all_config_v1
from .wrappers import admin_get_all_config_v1_async
from .wrappers import admin_get_config_v1
from .wrappers import admin_get_config_v1_async
from .wrappers import admin_get_log_config
from .wrappers import admin_get_log_config_async
from .wrappers import admin_patch_config_v1
from .wrappers import admin_patch_config_v1_async
from .wrappers import admin_patch_update_log_config
from .wrappers import admin_patch_update_log_config_async

# environment_variables
from .wrappers import environment_variable_list
from .wrappers import environment_variable_list_async

# match_functions
from .wrappers import create_match_function
from .wrappers import create_match_function_async
from .wrappers import delete_match_function
from .wrappers import delete_match_function_async
from .wrappers import match_function_list
from .wrappers import match_function_list_async
from .wrappers import update_match_function
from .wrappers import update_match_function_async

# match_pools
from .wrappers import admin_get_match_pool_tickets
from .wrappers import admin_get_match_pool_tickets_async
from .wrappers import create_match_pool
from .wrappers import create_match_pool_async
from .wrappers import delete_match_pool
from .wrappers import delete_match_pool_async
from .wrappers import get_player_metric
from .wrappers import get_player_metric_async
from .wrappers import match_pool_details
from .wrappers import match_pool_details_async
from .wrappers import match_pool_list
from .wrappers import match_pool_list_async
from .wrappers import match_pool_metric
from .wrappers import match_pool_metric_async
from .wrappers import post_match_error_metric
from .wrappers import post_match_error_metric_async
from .wrappers import public_get_player_metric
from .wrappers import public_get_player_metric_async
from .wrappers import update_match_pool
from .wrappers import update_match_pool_async

# match_tickets
from .wrappers import create_match_ticket
from .wrappers import create_match_ticket_async
from .wrappers import delete_match_ticket
from .wrappers import delete_match_ticket_async
from .wrappers import get_my_match_tickets
from .wrappers import get_my_match_tickets_async
from .wrappers import match_ticket_details
from .wrappers import match_ticket_details_async

# operations
from .wrappers import get_healthcheck_info
from .wrappers import get_healthcheck_info_async
from .wrappers import get_healthcheck_info_v1
from .wrappers import get_healthcheck_info_v1_async
from .wrappers import version_check_handler
from .wrappers import version_check_handler_async

# rule_sets
from .wrappers import create_rule_set
from .wrappers import create_rule_set_async
from .wrappers import delete_rule_set
from .wrappers import delete_rule_set_async
from .wrappers import rule_set_details
from .wrappers import rule_set_details_async
from .wrappers import rule_set_list
from .wrappers import rule_set_list_async
from .wrappers import update_rule_set
from .wrappers import update_rule_set_async
