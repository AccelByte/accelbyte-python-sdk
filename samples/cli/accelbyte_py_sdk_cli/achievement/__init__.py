# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-achievement-service (2.15.0)

from ._admin_list_achievements import admin_list_achievements
from ._admin_create_new_achievement import admin_create_new_achievement
from ._export_achievements import export_achievements
from ._import_achievements import import_achievements
from ._admin_get_achievement import admin_get_achievement
from ._admin_update_achievement import admin_update_achievement
from ._admin_delete_achievement import admin_delete_achievement
from ._admin_update_achievement_list_order import admin_update_achievement_list_order
from ._admin_list_global_achievements import admin_list_global_achievements
from ._admin_list_global_achievement_contributors import (
    admin_list_global_achievement_contributors,
)
from ._reset_global_achievement import reset_global_achievement
from ._admin_list_tags import admin_list_tags
from ._admin_list_user_achievements import admin_list_user_achievements
from ._admin_reset_achievement import admin_reset_achievement
from ._admin_unlock_achievement import admin_unlock_achievement
from ._admin_anonymize_user_achievement import admin_anonymize_user_achievement
from ._admin_list_user_contributions import admin_list_user_contributions
from ._public_list_achievements import public_list_achievements
from ._public_get_achievement import public_get_achievement
from ._public_list_global_achievements import public_list_global_achievements
from ._list_global_achievement_contributors import list_global_achievement_contributors
from ._public_list_tags import public_list_tags
from ._public_list_user_achievements import public_list_user_achievements
from ._public_unlock_achievement import public_unlock_achievement
from ._list_user_contributions import list_user_contributions
from ._claim_global_achievement_reward import claim_global_achievement_reward


commands = [
    admin_list_achievements,
    admin_create_new_achievement,
    export_achievements,
    import_achievements,
    admin_get_achievement,
    admin_update_achievement,
    admin_delete_achievement,
    admin_update_achievement_list_order,
    admin_list_global_achievements,
    admin_list_global_achievement_contributors,
    reset_global_achievement,
    admin_list_tags,
    admin_list_user_achievements,
    admin_reset_achievement,
    admin_unlock_achievement,
    admin_anonymize_user_achievement,
    admin_list_user_contributions,
    public_list_achievements,
    public_get_achievement,
    public_list_global_achievements,
    list_global_achievement_contributors,
    public_list_tags,
    public_list_user_achievements,
    public_unlock_achievement,
    list_user_contributions,
    claim_global_achievement_reward,
]
