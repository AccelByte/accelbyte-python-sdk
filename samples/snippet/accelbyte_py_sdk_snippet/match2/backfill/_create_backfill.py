import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import create_backfill
from accelbyte_py_sdk.api.match2.models import ApiBackFillCreateRequest
from accelbyte_py_sdk.api.match2.models import ApiBackfillCreateResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiBackFillCreateRequest
match_pool: str
session_id: str

Example: '{"matchPool": "miGcEsetR9bO2t3F", "sessionId": "DzRIrLppxNW8oXXA"}'
"""

result, error = create_backfill(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
