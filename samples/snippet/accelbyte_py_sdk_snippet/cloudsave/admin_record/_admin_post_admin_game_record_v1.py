import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_admin_game_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminGameRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminGameRecordRequest

Example: '{}'
"""

result, error = admin_post_admin_game_record_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
