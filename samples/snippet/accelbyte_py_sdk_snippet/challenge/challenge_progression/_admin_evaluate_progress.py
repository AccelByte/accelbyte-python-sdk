import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_evaluate_progress
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelEvaluatePlayerProgressionRequest
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelEvaluatePlayerProgressionRequest
user_ids: List[str]

Example: '{"userIds": ["18DLEoHZ2T33hTrD", "Ec0Ta87tSjOfAS20", "CQoBkdz9NURrzzDU"]}'
"""

result, error = admin_evaluate_progress(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
