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

Example: '{"data": [{"keys": ["uv6tv3TvwP0a9POT", "6nEE9Mg75D3cPoht", "2vA2TvAkXf6MBF4S"], "user_id": "ayVBQ3czNJHNdsYt"}, {"keys": ["UkMAH0taTBITQ6Pz", "IE9Eq2rzxItCqZgw", "cuSXQgB3ujA2RuUd"], "user_id": "S8DpmFIqZ2i7U0MN"}, {"keys": ["o4fOWo4ybKpVJph1", "wC4eFnCf4HHTO6Dr", "CPzw7uc1NDfQ4JWs"], "user_id": "bFu3eQ2WgGHOqIY3"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
