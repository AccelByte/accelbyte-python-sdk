import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_roles_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["DB84zoKq07Ad6XES", "N8Wc9QwKOePVRJpU", "OfFgCWDRUbCztPJi"]'
"""

result, error = admin_delete_user_roles_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
