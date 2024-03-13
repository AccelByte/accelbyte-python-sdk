import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import public_get_scheduled_goals
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelGoalResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = public_get_scheduled_goals(
    challenge_code=challenge_code,
    limit=limit,
    offset=offset,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
