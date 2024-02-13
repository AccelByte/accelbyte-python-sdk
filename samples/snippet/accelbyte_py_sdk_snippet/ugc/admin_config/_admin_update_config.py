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

Example: '{"value": "STeBJtkY9M67nhov"}'
"""

result, error = admin_update_config(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
