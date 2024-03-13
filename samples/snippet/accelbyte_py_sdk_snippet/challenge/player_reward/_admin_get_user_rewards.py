import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_get_user_rewards
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelListUserRewardsResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = admin_get_user_rewards(
    user_id=user_id,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
