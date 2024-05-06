import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_managers_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequestV3
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"managers": [{"displayName": "ACqwV80XTyAmRFx9", "namespace": "NZGRy7lMT82x8hO9", "userId": "uMVWahAw4RiIPHv0"}, {"displayName": "klHeEeq6RcNovdNB", "namespace": "c9iYOyIMuW8PWQGq", "userId": "SeqkyzSyqZlUtwQg"}, {"displayName": "6XXLQLQ8nlZ01SuO", "namespace": "sBxumFrGQaRKJzmM", "userId": "onTmDBhp0LU0GCvp"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
