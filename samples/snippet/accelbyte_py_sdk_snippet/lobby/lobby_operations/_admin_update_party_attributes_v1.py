import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_party_attributes_v1
from accelbyte_py_sdk.api.lobby.models import ModelsPartyData
from accelbyte_py_sdk.api.lobby.models import ModelsPartyPUTCustomAttributesRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsPartyPUTCustomAttributesRequest
custom_attribute: Dict[str, Any]
updated_at: int

Example: '{"custom_attribute": {"KwgmxUDhhCpoPD50": {}, "vEGjeGOJLOvvkl7H": {}, "0yq7l2aVddKVMGLr": {}}, "updatedAt": 53}'
"""

result, error = admin_update_party_attributes_v1(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
