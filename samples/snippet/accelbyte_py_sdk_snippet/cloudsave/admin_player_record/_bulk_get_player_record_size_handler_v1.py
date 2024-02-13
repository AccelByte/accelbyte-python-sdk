import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_player_record_size_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordSizeResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserKeyRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserKeyRequest
data: List[ModelsUserKeyRequest]
Definition: List[ModelsUserKeyRequest]
    keys: List[str]
    user_id: str

Example: '{"data": [{"keys": ["xndcleXOXXrNiKZU", "BoLFWk6KsJydRflQ", "73fup6hy7x6UuPpj"], "user_id": "v7bkHBNRlHdZ2RMU"}, {"keys": ["QpWpGy5XGI87aK8d", "6Wzs4ceKv5cCdKjo", "uD0MSLu04Zgzflrk"], "user_id": "VV2BDmU5S87Wcukn"}, {"keys": ["9MAKBPsxTEjEV6uQ", "05HIcP0xeNKQZ7b9", "wEXnDpyMZaUfMFzh"], "user_id": "sBnolhlwGRSBZg9Z"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
