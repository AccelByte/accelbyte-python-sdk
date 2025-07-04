# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# Justice Match Service v2

from ._get_healthcheck_info import get_healthcheck_info
from ._get_healthcheck_info_v1 import get_healthcheck_info_v1
from ._admin_get_log_config import admin_get_log_config
from ._admin_patch_update_log_config import admin_patch_update_log_config
from ._admin_get_play_feature_flag import admin_get_play_feature_flag
from ._admin_upsert_play_feature_flag import admin_upsert_play_feature_flag
from ._admin_delete_play_feature_flag import admin_delete_play_feature_flag
from ._admin_get_all_config_v1 import admin_get_all_config_v1
from ._admin_get_config_v1 import admin_get_config_v1
from ._admin_patch_config_v1 import admin_patch_config_v1
from ._environment_variable_list import environment_variable_list
from ._admin_query_backfill import admin_query_backfill
from ._create_backfill import create_backfill
from ._get_backfill_proposal import get_backfill_proposal
from ._get_backfill import get_backfill
from ._delete_backfill import delete_backfill
from ._accept_backfill import accept_backfill
from ._reject_backfill import reject_backfill
from ._match_function_list import match_function_list
from ._create_match_function import create_match_function
from ._match_function_get import match_function_get
from ._update_match_function import update_match_function
from ._delete_match_function import delete_match_function
from ._match_pool_list import match_pool_list
from ._create_match_pool import create_match_pool
from ._match_pool_details import match_pool_details
from ._update_match_pool import update_match_pool
from ._delete_match_pool import delete_match_pool
from ._match_pool_metric import match_pool_metric
from ._post_match_error_metric import post_match_error_metric
from ._get_player_metric import get_player_metric
from ._admin_get_match_pool_tickets import admin_get_match_pool_tickets
from ._create_match_ticket import create_match_ticket
from ._get_my_match_tickets import get_my_match_tickets
from ._match_ticket_details import match_ticket_details
from ._delete_match_ticket import delete_match_ticket
from ._rule_set_list import rule_set_list
from ._create_rule_set import create_rule_set
from ._rule_set_details import rule_set_details
from ._update_rule_set import update_rule_set
from ._delete_rule_set import delete_rule_set
from ._public_get_player_metric import public_get_player_metric
from ._version_check_handler import version_check_handler


commands = [
    get_healthcheck_info,
    get_healthcheck_info_v1,
    admin_get_log_config,
    admin_patch_update_log_config,
    admin_get_play_feature_flag,
    admin_upsert_play_feature_flag,
    admin_delete_play_feature_flag,
    admin_get_all_config_v1,
    admin_get_config_v1,
    admin_patch_config_v1,
    environment_variable_list,
    admin_query_backfill,
    create_backfill,
    get_backfill_proposal,
    get_backfill,
    delete_backfill,
    accept_backfill,
    reject_backfill,
    match_function_list,
    create_match_function,
    match_function_get,
    update_match_function,
    delete_match_function,
    match_pool_list,
    create_match_pool,
    match_pool_details,
    update_match_pool,
    delete_match_pool,
    match_pool_metric,
    post_match_error_metric,
    get_player_metric,
    admin_get_match_pool_tickets,
    create_match_ticket,
    get_my_match_tickets,
    match_ticket_details,
    delete_match_ticket,
    rule_set_list,
    create_rule_set,
    rule_set_details,
    update_rule_set,
    delete_rule_set,
    public_get_player_metric,
    version_check_handler,
]
