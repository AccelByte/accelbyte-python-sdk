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

Example: '{"Members": [{"DisplayName": "XBY510BPHkiolTRp", "Namespace": "Jr4FHv0AHKbYgQdb", "UserId": "2FezaEJYWi4is65L"}, {"DisplayName": "GwZrhKklm6aqirfC", "Namespace": "7SmBzlvVHNf1kLR8", "UserId": "efhqotgbq2AMSWq1"}, {"DisplayName": "y4QBdW3hXlImTA6F", "Namespace": "1WVXX09SyAII36IV", "UserId": "GkkDL4hUPuHbQTqq"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
