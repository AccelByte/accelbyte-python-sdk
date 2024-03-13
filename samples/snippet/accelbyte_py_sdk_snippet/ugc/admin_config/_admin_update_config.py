import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_config
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateConfigRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateConfigRequest
value: str

Example: '{"value": "daSEb5WlAa86Ib42"}'
"""

result, error = admin_update_config(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
