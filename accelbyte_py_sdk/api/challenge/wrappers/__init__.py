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

from ._challenge_configuration import admin_create_challenge
from ._challenge_configuration import admin_create_challenge_async
from ._challenge_configuration import admin_delete_challenge
from ._challenge_configuration import admin_delete_challenge_async
from ._challenge_configuration import admin_delete_tied_challenge
from ._challenge_configuration import admin_delete_tied_challenge_async
from ._challenge_configuration import admin_get_challenge
from ._challenge_configuration import admin_get_challenge_async
from ._challenge_configuration import admin_get_challenges
from ._challenge_configuration import admin_get_challenges_async
from ._challenge_configuration import admin_get_periods
from ._challenge_configuration import admin_get_periods_async
from ._challenge_configuration import admin_randomize_challenge
from ._challenge_configuration import admin_randomize_challenge_async
from ._challenge_configuration import admin_update_challenge
from ._challenge_configuration import admin_update_challenge_async

from ._challenge_list import get_challenges
from ._challenge_list import get_challenges_async
from ._challenge_list import public_get_scheduled_goals
from ._challenge_list import public_get_scheduled_goals_async

from ._challenge_progression import admin_evaluate_progress
from ._challenge_progression import admin_evaluate_progress_async
from ._challenge_progression import evaluate_my_progress
from ._challenge_progression import evaluate_my_progress_async
from ._challenge_progression import public_get_user_progression
from ._challenge_progression import public_get_user_progression_async

from ._goal_configuration import admin_create_goal
from ._goal_configuration import admin_create_goal_async
from ._goal_configuration import admin_delete_goal
from ._goal_configuration import admin_delete_goal_async
from ._goal_configuration import admin_get_goal
from ._goal_configuration import admin_get_goal_async
from ._goal_configuration import admin_get_goals
from ._goal_configuration import admin_get_goals_async
from ._goal_configuration import admin_update_goals
from ._goal_configuration import admin_update_goals_async

from ._player_reward import admin_get_user_rewards
from ._player_reward import admin_get_user_rewards_async
from ._player_reward import public_claim_user_rewards
from ._player_reward import public_claim_user_rewards_async
from ._player_reward import public_get_user_rewards
from ._player_reward import public_get_user_rewards_async
