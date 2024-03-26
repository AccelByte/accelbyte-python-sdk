import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import create_config
from accelbyte_py_sdk.api.basic.models import ConfigCreate
from accelbyte_py_sdk.api.basic.models import ConfigInfo
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: ConfigCreate
key: str
value: str

Example: '{"key": "1JcXGgx8h0CHASwK", "value": "JXemrmdpdEfvm1BY"}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
