import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_update_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"sIlIYr4obNftudFq": {}, "urmnwTeq6Mz5B80i": {}, "eRW6vlb0zSJ9e2bk": {}}'
"""

result, error = public_update_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
