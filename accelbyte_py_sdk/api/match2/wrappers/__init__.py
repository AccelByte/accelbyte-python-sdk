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

from ._backfill import accept_backfill
from ._backfill import accept_backfill_async
from ._backfill import admin_query_backfill
from ._backfill import admin_query_backfill_async
from ._backfill import create_backfill
from ._backfill import create_backfill_async
from ._backfill import delete_backfill
from ._backfill import delete_backfill_async
from ._backfill import get_backfill
from ._backfill import get_backfill_async
from ._backfill import get_backfill_proposal
from ._backfill import get_backfill_proposal_async
from ._backfill import reject_backfill
from ._backfill import reject_backfill_async

from ._config import admin_get_all_config_v1
from ._config import admin_get_all_config_v1_async
from ._config import admin_get_config_v1
from ._config import admin_get_config_v1_async
from ._config import admin_get_log_config
from ._config import admin_get_log_config_async
from ._config import admin_patch_config_v1
from ._config import admin_patch_config_v1_async
from ._config import admin_patch_update_log_config
from ._config import admin_patch_update_log_config_async

from ._environment_variables import environment_variable_list
from ._environment_variables import environment_variable_list_async

from ._match_functions import create_match_function
from ._match_functions import create_match_function_async
from ._match_functions import delete_match_function
from ._match_functions import delete_match_function_async
from ._match_functions import match_function_list
from ._match_functions import match_function_list_async
from ._match_functions import update_match_function
from ._match_functions import update_match_function_async

from ._match_pools import admin_get_match_pool_tickets
from ._match_pools import admin_get_match_pool_tickets_async
from ._match_pools import create_match_pool
from ._match_pools import create_match_pool_async
from ._match_pools import delete_match_pool
from ._match_pools import delete_match_pool_async
from ._match_pools import get_player_metric
from ._match_pools import get_player_metric_async
from ._match_pools import match_pool_details
from ._match_pools import match_pool_details_async
from ._match_pools import match_pool_list
from ._match_pools import match_pool_list_async
from ._match_pools import match_pool_metric
from ._match_pools import match_pool_metric_async
from ._match_pools import post_match_error_metric
from ._match_pools import post_match_error_metric_async
from ._match_pools import public_get_player_metric
from ._match_pools import public_get_player_metric_async
from ._match_pools import update_match_pool
from ._match_pools import update_match_pool_async

from ._match_tickets import create_match_ticket
from ._match_tickets import create_match_ticket_async
from ._match_tickets import delete_match_ticket
from ._match_tickets import delete_match_ticket_async
from ._match_tickets import get_my_match_tickets
from ._match_tickets import get_my_match_tickets_async
from ._match_tickets import match_ticket_details
from ._match_tickets import match_ticket_details_async

from ._operations import get_healthcheck_info
from ._operations import get_healthcheck_info_async
from ._operations import get_healthcheck_info_v1
from ._operations import get_healthcheck_info_v1_async
from ._operations import version_check_handler
from ._operations import version_check_handler_async

from ._rule_sets import create_rule_set
from ._rule_sets import create_rule_set_async
from ._rule_sets import delete_rule_set
from ._rule_sets import delete_rule_set_async
from ._rule_sets import rule_set_details
from ._rule_sets import rule_set_details_async
from ._rule_sets import rule_set_list
from ._rule_sets import rule_set_list_async
from ._rule_sets import update_rule_set
from ._rule_sets import update_rule_set_async
