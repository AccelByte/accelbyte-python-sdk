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

Example: '{"playtime": 76, "userID": "POTAIEDqmIjaJmk6", "weight": 0.7695449250432759}'
"""

result, error = update_play_time_weight(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
