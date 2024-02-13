import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import remove_role_members
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

Example: '{"Members": [{"DisplayName": "0uoE1RZ8HBrR7AyQ", "Namespace": "7vqP9kUuCQgOA50v", "UserId": "XhAWOwdUg1kMq3ME"}, {"DisplayName": "2ZFAv7DoPdbn6d8q", "Namespace": "IHIKYQxTysklidFa", "UserId": "LQLMlWXx3mfhI1ZH"}, {"DisplayName": "qJhY7yUXCGLifYyl", "Namespace": "3aLVIlijtIvrUAek", "UserId": "Nu47VuWTKic7bZl1"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
