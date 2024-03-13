import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_permission_bulk_v3
from accelbyte_py_sdk.api.iam.models import ModelPermissionDeleteRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[ModelPermissionDeleteRequest]
action: int
resource: str

Example: '[{"Action": 97, "Resource": "IlOd4F7bXVOHZFpZ"}, {"Action": 29, "Resource": "4Qxavta69814nSeS"}, {"Action": 67, "Resource": "pLKw9KEAePgs6IQP"}]'
"""

result, error = admin_delete_user_permission_bulk_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
