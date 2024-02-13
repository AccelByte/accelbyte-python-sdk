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

Example: '{"managers": [{"displayName": "gLBi49WRSJXDTOez", "namespace": "0Ro6wTqT2fbmPxFs", "userId": "vWDtUaaVn2UeusSC"}, {"displayName": "BcerFdnIWbRCtHFM", "namespace": "KridDRwEBGkZP3bt", "userId": "ZfFRLiyMfJPBrZCI"}, {"displayName": "1Eui8EuoAwjCUJ0o", "namespace": "kJGHXv57Dpwlm1sK", "userId": "c0qw8KpIwFyQlFv3"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
