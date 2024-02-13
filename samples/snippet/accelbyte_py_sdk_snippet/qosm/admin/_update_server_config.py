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

Example: '{"status": "m6AOiDvOd2AMNH22"}'
"""

result, error = update_server_config(
    body=body,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
