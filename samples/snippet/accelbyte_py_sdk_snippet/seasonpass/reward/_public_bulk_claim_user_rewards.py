import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import public_bulk_claim_user_rewards
from accelbyte_py_sdk.api.seasonpass.models import ClaimableRewards
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = public_bulk_claim_user_rewards(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
