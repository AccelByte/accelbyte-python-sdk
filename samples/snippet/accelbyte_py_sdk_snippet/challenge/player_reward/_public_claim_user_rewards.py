import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import public_claim_user_rewards
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelClaimUserRewardsReq
from accelbyte_py_sdk.api.challenge.models import ModelUserReward
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelClaimUserRewardsReq
reward_i_ds: List[str]

Example: '{"rewardIDs": ["unN8zizmoHcWJ1LP", "nmAO9mPRvPiKvzFB", "0iAzdGPgv9utgdd5"]}'
"""

result, error = public_claim_user_rewards(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
