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

Example: '{"subtype": ["ehCXxTG91bxiL1rP", "cfEiOnjSqnDiKuSy", "pTkUd80l3XtICIXa"], "type": "0ybbkOQAffoA5P9a"}'
"""

result, error = admin_create_type(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
