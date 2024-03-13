import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_private_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"hXypegIwQl3i1Xp6": {}, "UY9Xq4pxDB2Zkjkf": {}, "GNUA9vNkBCKnC03P": {}}'
"""

result, error = update_private_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
