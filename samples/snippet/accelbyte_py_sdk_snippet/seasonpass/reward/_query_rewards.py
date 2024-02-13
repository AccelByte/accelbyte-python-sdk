import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import query_rewards
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import RewardInfo

result, error = query_rewards(
    season_id=season_id,
    q=q,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
