import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import public_claim_user_reward
from accelbyte_py_sdk.api.seasonpass.models import ClaimableRewards
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserRewardClaim

"""
body:
Definition: UserRewardClaim
pass_code: str
reward_code: str
tier_index: int

Example: '{"passCode": "059PiGceTVtOjitd", "rewardCode": "YuqMmggz5pBdOME3", "tierIndex": 78}'
"""

result, error = public_claim_user_reward(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
