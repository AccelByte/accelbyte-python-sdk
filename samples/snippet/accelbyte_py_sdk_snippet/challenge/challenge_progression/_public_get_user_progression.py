import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import public_get_user_progression
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelUserProgressionResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = public_get_user_progression(
    challenge_code=challenge_code,
    goal_code=goal_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
