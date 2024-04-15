import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import register_server
from accelbyte_py_sdk.api.dsmc.models import ModelsRegisterServerRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsServer
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsRegisterServerRequest
custom_attribute: str
pod_name: str

Example: '{"custom_attribute": "Xr74eEEJQGs7qXSa", "pod_name": "t1UULkKLRArT3klW"}'
"""

result, error = register_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
