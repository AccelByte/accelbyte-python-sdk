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

Example: '{"userIds": ["YNE7eO9ql043WVJu", "mPHsVgv7oe6ztg1i", "cLPW1gW36fl1iQ9V"]}'
"""

result, error = admin_evaluate_progress(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
