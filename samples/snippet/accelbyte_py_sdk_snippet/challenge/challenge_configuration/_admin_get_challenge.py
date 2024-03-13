import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_get_challenge
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelChallengeResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = admin_get_challenge(
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
