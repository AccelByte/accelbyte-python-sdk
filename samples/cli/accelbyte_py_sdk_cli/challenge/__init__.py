# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-challenge-service

from ._admin_get_challenges import admin_get_challenges
from ._admin_create_challenge import admin_create_challenge
from ._admin_get_item_references import admin_get_item_references
from ._admin_get_active_challenges import admin_get_active_challenges
from ._admin_get_challenge import admin_get_challenge
from ._admin_update_challenge import admin_update_challenge
from ._admin_delete_challenge import admin_delete_challenge
from ._admin_get_goals import admin_get_goals
from ._admin_create_goal import admin_create_goal
from ._admin_get_goal import admin_get_goal
from ._admin_update_goals import admin_update_goals
from ._admin_delete_goal import admin_delete_goal
from ._admin_list_schedules_by_goal import admin_list_schedules_by_goal
from ._admin_get_periods import admin_get_periods
from ._admin_randomize_challenge import admin_randomize_challenge
from ._admin_list_schedules import admin_list_schedules
from ._admin_delete_tied_challenge import admin_delete_tied_challenge
from ._admin_update_tied_challenge_schedule import admin_update_tied_challenge_schedule
from ._admin_get_assignment_plugin import admin_get_assignment_plugin
from ._admin_update_assignment_plugin import admin_update_assignment_plugin
from ._admin_create_assignment_plugin import admin_create_assignment_plugin
from ._admin_delete_assignment_plugin import admin_delete_assignment_plugin
from ._admin_evaluate_progress import admin_evaluate_progress
from ._admin_claim_users_rewards import admin_claim_users_rewards
from ._admin_claim_user_rewards_by_goal_code import (
    admin_claim_user_rewards_by_goal_code,
)
from ._admin_get_user_progression import admin_get_user_progression
from ._admin_get_user_rewards import admin_get_user_rewards
from ._admin_claim_user_rewards import admin_claim_user_rewards
from ._get_challenges import get_challenges
from ._public_get_scheduled_goals import public_get_scheduled_goals
from ._public_list_schedules_by_goal import public_list_schedules_by_goal
from ._public_list_schedules import public_list_schedules
from ._public_claim_user_rewards_by_goal_code import (
    public_claim_user_rewards_by_goal_code,
)
from ._evaluate_my_progress import evaluate_my_progress
from ._public_get_user_progression import public_get_user_progression
from ._public_get_past_user_progression import public_get_past_user_progression
from ._public_get_user_rewards import public_get_user_rewards
from ._public_claim_user_rewards import public_claim_user_rewards


commands = [
    admin_get_challenges,
    admin_create_challenge,
    admin_get_item_references,
    admin_get_active_challenges,
    admin_get_challenge,
    admin_update_challenge,
    admin_delete_challenge,
    admin_get_goals,
    admin_create_goal,
    admin_get_goal,
    admin_update_goals,
    admin_delete_goal,
    admin_list_schedules_by_goal,
    admin_get_periods,
    admin_randomize_challenge,
    admin_list_schedules,
    admin_delete_tied_challenge,
    admin_update_tied_challenge_schedule,
    admin_get_assignment_plugin,
    admin_update_assignment_plugin,
    admin_create_assignment_plugin,
    admin_delete_assignment_plugin,
    admin_evaluate_progress,
    admin_claim_users_rewards,
    admin_claim_user_rewards_by_goal_code,
    admin_get_user_progression,
    admin_get_user_rewards,
    admin_claim_user_rewards,
    get_challenges,
    public_get_scheduled_goals,
    public_list_schedules_by_goal,
    public_list_schedules,
    public_claim_user_rewards_by_goal_code,
    evaluate_my_progress,
    public_get_user_progression,
    public_get_past_user_progression,
    public_get_user_rewards,
    public_claim_user_rewards,
]
