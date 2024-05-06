import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import admin_patch_config_v1
from accelbyte_py_sdk.api.match2.models import ApiPatchNamespaceConfigRequest
from accelbyte_py_sdk.api.match2.models import ConfigmodelsNamespaceConfig
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiPatchNamespaceConfigRequest
platform_group: Dict[str, List[str]]

Example: '{"platformGroup": {"oqDYJL2wKXT6EOC1": ["4VB2y2CxU984a4yz", "0ekE1RMc8TOJv6pl", "4Dw1yUo4nKQYFWVN"], "gdHK567bch5aI9fe": ["8eL71b83LhnLfLR7", "9w1GnSkz25Jz2jMc", "06OEN3qFvIwcNnsV"], "eANtrxfZKjzNKldo": ["XdfwdQ3jjHYyt27K", "im0jw3Ke7yROARcK", "ble6xjURZDFO6AJ2"]}}'
"""

result, error = admin_patch_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
