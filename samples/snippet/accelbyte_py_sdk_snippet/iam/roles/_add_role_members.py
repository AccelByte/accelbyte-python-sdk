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

Example: '{"Members": [{"DisplayName": "18IKTXsjvc8Abqpp", "Namespace": "fFPLEUMS7TBRLCiA", "UserId": "H4yYCyFfIdyGImjQ"}, {"DisplayName": "CnYyplWLz0F8YK6F", "Namespace": "HJiQC1hzEZwOkKbB", "UserId": "vOCrpyb0VjIocjrf"}, {"DisplayName": "eWdPTXH67L8As7k4", "Namespace": "3Y2vabONVymKRNPz", "UserId": "Cy57zJLtgfR4rtps"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
