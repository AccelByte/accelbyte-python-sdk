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

Example: '{"data": [{"keys": ["sUPSBfN78SquaawV", "yR3z4tt5rIrG2Fxb", "vDhzpzc1PfZn1EFk"], "user_id": "JywXAztlp975a7Ih"}, {"keys": ["tibj9a3xT1SFT9v4", "gXu44Bm0kJ4cjKgA", "eznQLUqw6Y5MDjc5"], "user_id": "n0FYMOeOXvBhk3r4"}, {"keys": ["Igl3Tu8FPgwznqTS", "Ni0QgwiHE4HdTlep", "W19vhTwGvSAQJgnK"], "user_id": "mf4UUrL6Cqp3xEwt"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
