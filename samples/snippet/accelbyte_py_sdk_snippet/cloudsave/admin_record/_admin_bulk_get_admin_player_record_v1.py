import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_bulk_get_admin_player_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminPlayerRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetAdminPlayerRecordRequest
keys: List[str]

Example: '{"keys": ["0tnCl0keZ05IcVK2", "lGnCfuvfCOTu74jN", "FKbRibvzkU7OuTMn"]}'
"""

result, error = admin_bulk_get_admin_player_record_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
