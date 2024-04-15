import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_my_private_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"9K3f0RPm02DctHTp": {}, "Cg3Wf3SzzUEnrpSq": {}, "oTnsht3TGXfFzy1f": {}}'
"""

result, error = update_my_private_custom_attributes_partially(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
