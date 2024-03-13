import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_custom_attributes_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupCustomAttributesRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupCustomAttributesRequestV1
custom_attributes: Dict[str, Any]

Example: '{"customAttributes": {"NaAxF09d1lTiNpBU": {}, "wtOgnYWLfQMZcGNc": {}, "0bBPQ3Si24wTap8a": {}}}'
"""

result, error = update_group_custom_attributes_public_v2(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
