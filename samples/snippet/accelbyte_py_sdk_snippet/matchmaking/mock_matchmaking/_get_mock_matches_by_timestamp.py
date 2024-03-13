import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_mock_matches_by_timestamp
from accelbyte_py_sdk.api.matchmaking.models import ModelsGetMockMatchesResponse
from accelbyte_py_sdk.api.matchmaking.models import ModelsQueryMockBy
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
Definition: ModelsQueryMockBy
timestamp_after: int

Example: '{"timestamp_after": 51}'
"""

result, error = get_mock_matches_by_timestamp(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
