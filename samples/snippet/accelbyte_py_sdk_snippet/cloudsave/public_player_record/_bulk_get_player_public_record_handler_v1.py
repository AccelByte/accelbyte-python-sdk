import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_player_public_record_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserIDsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["XIPW9lH8B258qY0K", "7fNCjzNTFDeHzpzN", "Da4AO12zSiMRRH5I"]}'
"""

result, error = bulk_get_player_public_record_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
