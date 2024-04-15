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

Example: '{"platformGroup": {"9GTthGB5P2Mkuq6Q": ["HSLiydaN5yo8nZMR", "Vy68RbqUYFeKrOrU", "Blxu5xGKIP8l5yxQ"], "OTgNMU3uPw614x0L": ["q7FKDS3XZ6esJzcv", "hBG6d46vL7KCHm9W", "DOyCvmdPyKYOuu0O"], "3DxM9nFKdSWBLuIx": ["dTd62Mh6KOLIFfZv", "GuZPF3O469R565ye", "LaBkhsQ1lBVrfm9i"]}}'
"""

result, error = admin_patch_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
