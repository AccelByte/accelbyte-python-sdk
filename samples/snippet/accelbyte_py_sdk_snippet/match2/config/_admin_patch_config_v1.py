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

Example: '{"platformGroup": {"qFX3nPWdS9xDvbQn": ["lzIKLy3RPcUBBlmJ", "Q1qDTagwp2pV2UWX", "28M1zrBNc1iztISk"], "r4b1hbjIysneNxy1": ["PLVruu8ldiJ4MiiT", "PAMkZov5xr0xzRU1", "J9VFbQTbZ5p2P4L4"], "LU13sNGA63WVxNiw": ["8jQCYFaSw3ipUuns", "TgeY2KJx1hXtTSlu", "wJulZZPkU79ywcS8"]}}'
"""

result, error = admin_patch_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
