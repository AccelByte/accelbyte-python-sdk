import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_role_members
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleMembersRequest
members: List[AccountcommonRoleMember]
Definition: List[AccountcommonRoleMember]
    display_name: str
    namespace: str
    user_id: str

Example: '{"Members": [{"DisplayName": "a74cgv2w9tog3aiq", "Namespace": "pqHoiYoK2XJulCZI", "UserId": "08xTdx3MzN9uTJlh"}, {"DisplayName": "gyk6iEO1QeAqlbcz", "Namespace": "GqTD6CvltjWiirFx", "UserId": "XbvGiow2XPFWPjTP"}, {"DisplayName": "svp779bYQXgq8omX", "Namespace": "VKBCUuJnIg9FSlg8", "UserId": "cpNf5Y3ydfAaoD9l"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
