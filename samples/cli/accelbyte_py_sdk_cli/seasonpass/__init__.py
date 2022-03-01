# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-init.j2

# justice-seasonpass-service (1.9.0)

from ._query_seasons import query_seasons
from ._create_season import create_season
from ._get_current_season import get_current_season
from ._get_season import get_season
from ._delete_season import delete_season
from ._update_season import update_season
from ._clone_season import clone_season
from ._query_passes import query_passes
from ._create_pass import create_pass
from ._get_pass import get_pass
from ._delete_pass import delete_pass
from ._update_pass import update_pass
from ._publish_season import publish_season
from ._retire_season import retire_season
from ._query_rewards import query_rewards
from ._create_reward import create_reward
from ._get_reward import get_reward
from ._delete_reward import delete_reward
from ._update_reward import update_reward
from ._query_tiers import query_tiers
from ._create_tier import create_tier
from ._update_tier import update_tier
from ._delete_tier import delete_tier
from ._reorder_tier import reorder_tier
from ._unpublish_season import unpublish_season
from ._get_user_participated_seasons import get_user_participated_seasons
from ._grant_user_exp import grant_user_exp
from ._grant_user_pass import grant_user_pass
from ._exists_any_pass_by_pass_codes import exists_any_pass_by_pass_codes
from ._get_current_user_season_progression import get_current_user_season_progression
from ._check_season_purchasable import check_season_purchasable
from ._reset_user_season import reset_user_season
from ._grant_user_tier import grant_user_tier
from ._get_user_season import get_user_season
from ._public_get_current_season import public_get_current_season
from ._public_get_current_user_season import public_get_current_user_season
from ._public_claim_user_reward import public_claim_user_reward
from ._public_bulk_claim_user_rewards import public_bulk_claim_user_rewards
from ._public_get_user_season import public_get_user_season


commands = [
    query_seasons,
    create_season,
    get_current_season,
    get_season,
    delete_season,
    update_season,
    clone_season,
    query_passes,
    create_pass,
    get_pass,
    delete_pass,
    update_pass,
    publish_season,
    retire_season,
    query_rewards,
    create_reward,
    get_reward,
    delete_reward,
    update_reward,
    query_tiers,
    create_tier,
    update_tier,
    delete_tier,
    reorder_tier,
    unpublish_season,
    get_user_participated_seasons,
    grant_user_exp,
    grant_user_pass,
    exists_any_pass_by_pass_codes,
    get_current_user_season_progression,
    check_season_purchasable,
    reset_user_season,
    grant_user_tier,
    get_user_season,
    public_get_current_season,
    public_get_current_user_season,
    public_claim_user_reward,
    public_bulk_claim_user_rewards,
    public_get_user_season,
]
