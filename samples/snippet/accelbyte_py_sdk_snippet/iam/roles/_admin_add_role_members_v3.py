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

Example: '{"members": [{"displayName": "kFENvZp14pIgK4Pe", "namespace": "9k1LafWpws3vnmFW", "userId": "Kyu12YTpWHIslGmV"}, {"displayName": "DY0t4eC1cK1BeR54", "namespace": "8mTJpBf1KLUnsBzY", "userId": "ufsiJOhCvqprGXCb"}, {"displayName": "McQmbiXo3fel8WJ4", "namespace": "1Q6pdlF1OGlzg17V", "userId": "oTGWu3ArUM4ULNHd"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
