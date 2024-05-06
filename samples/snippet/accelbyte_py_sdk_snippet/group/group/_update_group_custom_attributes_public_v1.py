import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_custom_attributes_public_v1
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupCustomAttributesRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupCustomAttributesRequestV1
custom_attributes: Dict[str, Any]

Example: '{"customAttributes": {"W9PO2x3JANrITA6p": {}, "h5M0jkbbGnu0g4xI": {}, "n4vm6SrzezOtBUrg": {}}}'
"""

result, error = update_group_custom_attributes_public_v1(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
