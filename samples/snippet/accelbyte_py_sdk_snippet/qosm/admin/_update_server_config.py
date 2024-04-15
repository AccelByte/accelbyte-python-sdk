import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.qosm import update_server_config
from accelbyte_py_sdk.api.qosm.models import ModelsUpdateServerRequest
from accelbyte_py_sdk.api.qosm.models import ResponseError

"""
body:
Definition: ModelsUpdateServerRequest
status: str

Example: '{"status": "z55kXHe6dQ0iPU3i"}'
"""

result, error = update_server_config(
    body=body,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
