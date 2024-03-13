import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_randomize_challenge
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelSchedule
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = admin_randomize_challenge(
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
