import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_port
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdatePortRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdatePortRequest
name: str
port: int

Example: '{"name": "elNRSemDdqrYvtQL", "port": 98}'
"""

result, error = update_port(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
