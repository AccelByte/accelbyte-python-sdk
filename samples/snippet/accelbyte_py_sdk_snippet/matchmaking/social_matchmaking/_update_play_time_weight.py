import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import update_play_time_weight
from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdatePlayTimeWeightRequest
from accelbyte_py_sdk.api.matchmaking.models import (
    ModelsUpdatePlayerPlaytimeWeightResponse,
)
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
Definition: ModelsUpdatePlayTimeWeightRequest
playtime: int
user_id: str
weight: float

Example: '{"playtime": 58, "userID": "rduBDpw46PpAe6DZ", "weight": 0.8466672205715751}'
"""

result, error = update_play_time_weight(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
