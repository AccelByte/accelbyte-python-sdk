import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import evaluate_my_progress
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = evaluate_my_progress(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
