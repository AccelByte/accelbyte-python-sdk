import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_player_admin_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminPlayerRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminPlayerRecordRequest

Example: '{}'
"""

result, error = admin_post_player_admin_record_v1(
    body=body,
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
