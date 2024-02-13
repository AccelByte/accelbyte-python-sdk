import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_roles_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["5UQMQmdUDsyKeQhG", "1yENrcPtZe69kJnD", "xZN0mI8b8JUCYF2l"]'
"""

result, error = admin_delete_user_roles_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
