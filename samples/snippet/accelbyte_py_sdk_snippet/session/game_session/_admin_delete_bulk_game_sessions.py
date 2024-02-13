import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_delete_bulk_game_sessions
from accelbyte_py_sdk.api.session.models import ApimodelsDeleteBulkGameSessionRequest
from accelbyte_py_sdk.api.session.models import (
    ApimodelsDeleteBulkGameSessionsAPIResponse,
)
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsDeleteBulkGameSessionRequest
ids: List[str]

Example: '{"ids": ["BscEKaYrunrAuXd2", "a6rtXIf8cZtF6L1D", "JNoyfw1OLyI1GIt8"]}'
"""

result, error = admin_delete_bulk_game_sessions(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
