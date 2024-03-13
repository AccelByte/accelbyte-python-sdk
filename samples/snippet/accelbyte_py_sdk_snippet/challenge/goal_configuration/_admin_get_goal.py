import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_get_goal
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelGoalResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = admin_get_goal(
    challenge_code=challenge_code,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
