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

Example: '{"Members": [{"DisplayName": "a4AYTmTB7KC8ysmD", "Namespace": "1eYsP9Nt9arMw42V", "UserId": "jg9ZX4GSYiGECFf2"}, {"DisplayName": "SnoLtZg0FB2QCXOv", "Namespace": "Mwwzxkl1W5FqFT8z", "UserId": "L92t85Cx5NJNEaiC"}, {"DisplayName": "yUuPTZ11aiQxzclo", "Namespace": "TPw6DJnAbbgEiT2k", "UserId": "W9C63oDHw4hl7Poq"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
