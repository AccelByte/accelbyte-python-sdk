import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_update_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"GND2HnpErdm9PgK2": {}, "KK9avgQNWiAvWRis": {}, "QKwK0vHrD2prFg7m": {}}'
"""

result, error = public_update_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
