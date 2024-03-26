import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_type
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTypeRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTypeResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateTypeRequest
subtype: List[str]
type_: str

Example: '{"subtype": ["ixbWVV5gvHQmkRP5", "LhnT4PuZoJXIa2gC", "yMin2JDZoACnjCCa"], "type": "gB6IQxgsg3YX3Jno"}'
"""

result, error = admin_create_type(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
