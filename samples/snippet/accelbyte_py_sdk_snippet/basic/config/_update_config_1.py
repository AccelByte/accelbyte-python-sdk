import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_config_1
from accelbyte_py_sdk.api.basic.models import ConfigInfo
from accelbyte_py_sdk.api.basic.models import ConfigUpdate
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: ConfigUpdate
value: str

Example: '{"value": "PmAxwWOdGW0EL9nl"}'
"""

result, error = update_config_1(
    config_key=config_key,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
