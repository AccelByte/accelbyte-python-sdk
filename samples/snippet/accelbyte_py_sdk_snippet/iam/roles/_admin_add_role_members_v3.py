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

Example: '{"members": [{"displayName": "FbuCM144vA70JMQd", "namespace": "DM0eJ9k3mncZGFwj", "userId": "NXOTd92RikQpEBUh"}, {"displayName": "kzW63eoT7TaYcv1F", "namespace": "WCQMVALeTD6PYNm8", "userId": "3nIwHYnDIVzAsbuH"}, {"displayName": "Ex8gO8wvKUnmyd4G", "namespace": "WWlzeJwJhQWb7g5Q", "userId": "iu19V93YR8ndGGqg"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
