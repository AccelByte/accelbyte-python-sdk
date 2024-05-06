import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_type
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTypeRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTypeResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateTypeRequest
subtype: List[str]
type_: str

Example: '{"subtype": ["Lib2L2wTXMJxojsh", "n2wGaDh9fcl6SeL7", "X5FAFtVqHaTXPxff"], "type": "rKmIo2SGvjGQ6rIP"}'
"""

result, error = admin_update_type(
    body=body,
    type_id=type_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
