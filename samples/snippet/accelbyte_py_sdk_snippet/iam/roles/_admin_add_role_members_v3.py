import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_members_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleMembersRequestV3
members: List[AccountcommonRoleMemberV3]
Definition: List[AccountcommonRoleMemberV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"members": [{"displayName": "Z4TA2cW5DiGjezUf", "namespace": "iePVHyURlI5GgAIO", "userId": "ij76WkfiQjcs2ueB"}, {"displayName": "gfHQj0jjWPBLvuvh", "namespace": "YVOlKJds7POWhKeN", "userId": "9iRjVp0rKPMze6wq"}, {"displayName": "JA919VSGkT9WybH3", "namespace": "KIKRKHvgRtzrYdPc", "userId": "gHEZQ5UfdLrKCpT9"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
