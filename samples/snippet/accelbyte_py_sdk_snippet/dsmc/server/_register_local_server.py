import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import register_local_server
from accelbyte_py_sdk.api.dsmc.models import ModelsRegisterLocalServerRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsServer
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsRegisterLocalServerRequest
custom_attribute: str
ip: str
name: str
port: int

Example: '{"custom_attribute": "ooAuD0EBim7HMurf", "ip": "s5hN6lpsh1TeOJVO", "name": "LSIG71qQ5I0Rqqpj", "port": 31}'
"""

result, error = register_local_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
