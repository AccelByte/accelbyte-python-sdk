# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-leaderboard-service (2.23.0)

from ._get_leaderboard_configurations_admin_v1 import (
    get_leaderboard_configurations_admin_v1,
)
from ._create_leaderboard_configuration_admin_v1 import (
    create_leaderboard_configuration_admin_v1,
)
from ._admin_get_archived_leaderboard_ranking_data_v1_handler import (
    admin_get_archived_leaderboard_ranking_data_v1_handler,
)
from ._create_archived_leaderboard_ranking_data_v1_handler import (
    create_archived_leaderboard_ranking_data_v1_handler,
)
from ._delete_bulk_leaderboard_configuration_admin_v1 import (
    delete_bulk_leaderboard_configuration_admin_v1,
)
from ._get_leaderboard_configuration_admin_v1 import (
    get_leaderboard_configuration_admin_v1,
)
from ._update_leaderboard_configuration_admin_v1 import (
    update_leaderboard_configuration_admin_v1,
)
from ._delete_leaderboard_configuration_admin_v1 import (
    delete_leaderboard_configuration_admin_v1,
)
from ._get_all_time_leaderboard_ranking_admin_v1 import (
    get_all_time_leaderboard_ranking_admin_v1,
)
from ._hard_delete_leaderboard_admin_v1 import hard_delete_leaderboard_admin_v1
from ._get_current_month_leaderboard_ranking_admin_v1 import (
    get_current_month_leaderboard_ranking_admin_v1,
)
from ._delete_user_ranking_by_leaderboard_code_admin_v1 import (
    delete_user_ranking_by_leaderboard_code_admin_v1,
)
from ._get_current_season_leaderboard_ranking_admin_v1 import (
    get_current_season_leaderboard_ranking_admin_v1,
)
from ._get_today_leaderboard_ranking_admin_v1 import (
    get_today_leaderboard_ranking_admin_v1,
)
from ._get_user_ranking_admin_v1 import get_user_ranking_admin_v1
from ._update_user_point_admin_v1 import update_user_point_admin_v1
from ._delete_user_ranking_admin_v1 import delete_user_ranking_admin_v1
from ._get_current_week_leaderboard_ranking_admin_v1 import (
    get_current_week_leaderboard_ranking_admin_v1,
)
from ._delete_user_rankings_admin_v1 import delete_user_rankings_admin_v1
from ._admin_anonymize_user_leaderboard_admin_v1 import (
    admin_anonymize_user_leaderboard_admin_v1,
)
from ._get_user_leaderboard_rankings_admin_v1 import (
    get_user_leaderboard_rankings_admin_v1,
)
from ._get_leaderboard_configurations_public_v1 import (
    get_leaderboard_configurations_public_v1,
)
from ._create_leaderboard_configuration_public_v1 import (
    create_leaderboard_configuration_public_v1,
)
from ._get_all_time_leaderboard_ranking_public_v1 import (
    get_all_time_leaderboard_ranking_public_v1,
)
from ._get_archived_leaderboard_ranking_data_v1_handler import (
    get_archived_leaderboard_ranking_data_v1_handler,
)
from ._get_current_month_leaderboard_ranking_public_v1 import (
    get_current_month_leaderboard_ranking_public_v1,
)
from ._get_current_season_leaderboard_ranking_public_v1 import (
    get_current_season_leaderboard_ranking_public_v1,
)
from ._get_today_leaderboard_ranking_public_v1 import (
    get_today_leaderboard_ranking_public_v1,
)
from ._get_user_ranking_public_v1 import get_user_ranking_public_v1
from ._delete_user_ranking_public_v1 import delete_user_ranking_public_v1
from ._get_current_week_leaderboard_ranking_public_v1 import (
    get_current_week_leaderboard_ranking_public_v1,
)
from ._get_hidden_users_v2 import get_hidden_users_v2
from ._get_user_visibility_status_v2 import get_user_visibility_status_v2
from ._set_user_leaderboard_visibility_status_v2 import (
    set_user_leaderboard_visibility_status_v2,
)
from ._set_user_visibility_status_v2 import set_user_visibility_status_v2
from ._get_leaderboard_configurations_public_v2 import (
    get_leaderboard_configurations_public_v2,
)
from ._get_all_time_leaderboard_ranking_public_v2 import (
    get_all_time_leaderboard_ranking_public_v2,
)
from ._get_leaderboard_configurations_admin_v3 import (
    get_leaderboard_configurations_admin_v3,
)
from ._create_leaderboard_configuration_admin_v3 import (
    create_leaderboard_configuration_admin_v3,
)
from ._delete_bulk_leaderboard_configuration_admin_v3 import (
    delete_bulk_leaderboard_configuration_admin_v3,
)
from ._get_leaderboard_configuration_admin_v3 import (
    get_leaderboard_configuration_admin_v3,
)
from ._update_leaderboard_configuration_admin_v3 import (
    update_leaderboard_configuration_admin_v3,
)
from ._delete_leaderboard_configuration_admin_v3 import (
    delete_leaderboard_configuration_admin_v3,
)
from ._get_all_time_leaderboard_ranking_admin_v3 import (
    get_all_time_leaderboard_ranking_admin_v3,
)
from ._get_current_cycle_leaderboard_ranking_admin_v3 import (
    get_current_cycle_leaderboard_ranking_admin_v3,
)
from ._hard_delete_leaderboard_admin_v3 import hard_delete_leaderboard_admin_v3
from ._delete_user_ranking_by_leaderboard_code_admin_v3 import (
    delete_user_ranking_by_leaderboard_code_admin_v3,
)
from ._get_hidden_users_v3 import get_hidden_users_v3
from ._get_user_ranking_admin_v3 import get_user_ranking_admin_v3
from ._delete_user_ranking_admin_v3 import delete_user_ranking_admin_v3
from ._get_user_visibility_status_v3 import get_user_visibility_status_v3
from ._set_user_leaderboard_visibility_v3 import set_user_leaderboard_visibility_v3
from ._delete_user_rankings_admin_v3 import delete_user_rankings_admin_v3
from ._get_user_leaderboard_rankings_admin_v3 import (
    get_user_leaderboard_rankings_admin_v3,
)
from ._set_user_visibility_v3 import set_user_visibility_v3
from ._get_leaderboard_configurations_public_v3 import (
    get_leaderboard_configurations_public_v3,
)
from ._get_leaderboard_configuration_public_v3 import (
    get_leaderboard_configuration_public_v3,
)
from ._get_all_time_leaderboard_ranking_public_v3 import (
    get_all_time_leaderboard_ranking_public_v3,
)
from ._get_current_cycle_leaderboard_ranking_public_v3 import (
    get_current_cycle_leaderboard_ranking_public_v3,
)
from ._bulk_get_users_ranking_public_v3 import bulk_get_users_ranking_public_v3
from ._get_user_ranking_public_v3 import get_user_ranking_public_v3


commands = [
    get_leaderboard_configurations_admin_v1,
    create_leaderboard_configuration_admin_v1,
    admin_get_archived_leaderboard_ranking_data_v1_handler,
    create_archived_leaderboard_ranking_data_v1_handler,
    delete_bulk_leaderboard_configuration_admin_v1,
    get_leaderboard_configuration_admin_v1,
    update_leaderboard_configuration_admin_v1,
    delete_leaderboard_configuration_admin_v1,
    get_all_time_leaderboard_ranking_admin_v1,
    hard_delete_leaderboard_admin_v1,
    get_current_month_leaderboard_ranking_admin_v1,
    delete_user_ranking_by_leaderboard_code_admin_v1,
    get_current_season_leaderboard_ranking_admin_v1,
    get_today_leaderboard_ranking_admin_v1,
    get_user_ranking_admin_v1,
    update_user_point_admin_v1,
    delete_user_ranking_admin_v1,
    get_current_week_leaderboard_ranking_admin_v1,
    delete_user_rankings_admin_v1,
    admin_anonymize_user_leaderboard_admin_v1,
    get_user_leaderboard_rankings_admin_v1,
    get_leaderboard_configurations_public_v1,
    create_leaderboard_configuration_public_v1,
    get_all_time_leaderboard_ranking_public_v1,
    get_archived_leaderboard_ranking_data_v1_handler,
    get_current_month_leaderboard_ranking_public_v1,
    get_current_season_leaderboard_ranking_public_v1,
    get_today_leaderboard_ranking_public_v1,
    get_user_ranking_public_v1,
    delete_user_ranking_public_v1,
    get_current_week_leaderboard_ranking_public_v1,
    get_hidden_users_v2,
    get_user_visibility_status_v2,
    set_user_leaderboard_visibility_status_v2,
    set_user_visibility_status_v2,
    get_leaderboard_configurations_public_v2,
    get_all_time_leaderboard_ranking_public_v2,
    get_leaderboard_configurations_admin_v3,
    create_leaderboard_configuration_admin_v3,
    delete_bulk_leaderboard_configuration_admin_v3,
    get_leaderboard_configuration_admin_v3,
    update_leaderboard_configuration_admin_v3,
    delete_leaderboard_configuration_admin_v3,
    get_all_time_leaderboard_ranking_admin_v3,
    get_current_cycle_leaderboard_ranking_admin_v3,
    hard_delete_leaderboard_admin_v3,
    delete_user_ranking_by_leaderboard_code_admin_v3,
    get_hidden_users_v3,
    get_user_ranking_admin_v3,
    delete_user_ranking_admin_v3,
    get_user_visibility_status_v3,
    set_user_leaderboard_visibility_v3,
    delete_user_rankings_admin_v3,
    get_user_leaderboard_rankings_admin_v3,
    set_user_visibility_v3,
    get_leaderboard_configurations_public_v3,
    get_leaderboard_configuration_public_v3,
    get_all_time_leaderboard_ranking_public_v3,
    get_current_cycle_leaderboard_ranking_public_v3,
    bulk_get_users_ranking_public_v3,
    get_user_ranking_public_v3,
]
