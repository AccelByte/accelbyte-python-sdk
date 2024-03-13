import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_patch_single_group_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupRequestV1
custom_attributes: ModelsUpdateGroupRequestV1CustomAttributes
Definition: ModelsUpdateGroupRequestV1CustomAttributes
group_description: str
group_icon: str
group_name: str
group_region: str
group_type: str

Example: '{"customAttributes": {}, "groupDescription": "m6gXRilgg2SBnB9Y", "groupIcon": "lPuv7FNLObZQ8tsX", "groupName": "ZVDCrIYAzP3YVkhG", "groupRegion": "GuSaJWBGShTis3Qx", "groupType": "PUBLIC"}'
"""

result, error = update_patch_single_group_public_v2(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
