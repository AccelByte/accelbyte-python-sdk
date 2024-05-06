import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_config
from accelbyte_py_sdk.api.basic.models import ConfigInfo
from accelbyte_py_sdk.api.basic.models import ConfigUpdate
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: ConfigUpdate
value: str

Example: '{"value": "1OSk7A7IrxxaNgEi"}'
"""

result, error = update_config(
    config_key=config_key,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
