# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Challenge Service."""

__version__ = "1.2.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# challenge_configuration
from .wrappers import admin_create_challenge
from .wrappers import admin_create_challenge_async
from .wrappers import admin_delete_challenge
from .wrappers import admin_delete_challenge_async
from .wrappers import admin_delete_tied_challenge
from .wrappers import admin_delete_tied_challenge_async
from .wrappers import admin_get_challenge
from .wrappers import admin_get_challenge_async
from .wrappers import admin_get_challenges
from .wrappers import admin_get_challenges_async
from .wrappers import admin_get_periods
from .wrappers import admin_get_periods_async
from .wrappers import admin_randomize_challenge
from .wrappers import admin_randomize_challenge_async
from .wrappers import admin_update_challenge
from .wrappers import admin_update_challenge_async

# challenge_list
from .wrappers import get_challenges
from .wrappers import get_challenges_async
from .wrappers import public_get_scheduled_goals
from .wrappers import public_get_scheduled_goals_async

# challenge_progression
from .wrappers import admin_evaluate_progress
from .wrappers import admin_evaluate_progress_async
from .wrappers import evaluate_my_progress
from .wrappers import evaluate_my_progress_async
from .wrappers import public_get_user_progression
from .wrappers import public_get_user_progression_async

# goal_configuration
from .wrappers import admin_create_goal
from .wrappers import admin_create_goal_async
from .wrappers import admin_delete_goal
from .wrappers import admin_delete_goal_async
from .wrappers import admin_get_goal
from .wrappers import admin_get_goal_async
from .wrappers import admin_get_goals
from .wrappers import admin_get_goals_async
from .wrappers import admin_update_goals
from .wrappers import admin_update_goals_async

# player_reward
from .wrappers import admin_get_user_rewards
from .wrappers import admin_get_user_rewards_async
from .wrappers import public_claim_user_rewards
from .wrappers import public_claim_user_rewards_async
from .wrappers import public_get_user_rewards
from .wrappers import public_get_user_rewards_async
