# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# Justice Match Service v2 (1.4.3)

from ._get_healthcheck_info import get_healthcheck_info
from ._get_healthcheck_info_v1 import get_healthcheck_info_v1
from ._create_backfill import create_backfill
from ._accept_backfill import accept_backfill
from ._reject_backfill import reject_backfill
from ._match_function_list import match_function_list
from ._create_match_function import create_match_function
from ._delete_match_function import delete_match_function
from ._match_pool_list import match_pool_list
from ._create_match_pool import create_match_pool
from ._match_pool_details import match_pool_details
from ._update_match_pool import update_match_pool
from ._delete_match_pool import delete_match_pool
from ._create_match_ticket import create_match_ticket
from ._match_ticket_details import match_ticket_details
from ._delete_match_ticket import delete_match_ticket
from ._rule_set_list import rule_set_list
from ._create_rule_set import create_rule_set
from ._rule_set_details import rule_set_details
from ._update_rule_set import update_rule_set
from ._delete_rule_set import delete_rule_set
from ._version_check_handler import version_check_handler


commands = [
    get_healthcheck_info,
    get_healthcheck_info_v1,
    create_backfill,
    accept_backfill,
    reject_backfill,
    match_function_list,
    create_match_function,
    delete_match_function,
    match_pool_list,
    create_match_pool,
    match_pool_details,
    update_match_pool,
    delete_match_pool,
    create_match_ticket,
    match_ticket_details,
    delete_match_ticket,
    rule_set_list,
    create_rule_set,
    rule_set_details,
    update_rule_set,
    delete_rule_set,
    version_check_handler,
]
