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

Example: '{"subtype": ["qkwcvWmHqGjitHen", "LN0YsIjL7oxWuxs7", "lOQe7gVAzRFRk1kY"], "type": "jyfNQwSPmaygohUA"}'
"""

result, error = admin_create_type(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
