import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import get_game_records_bulk
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetGameRecordRequest
keys: List[str]

Example: '{"keys": ["Kz9R0whyJmOdlmlB", "JLy2AeknEs2wbPas", "ya5BH2qlf6h9VvFV"]}'
"""

result, error = get_game_records_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
