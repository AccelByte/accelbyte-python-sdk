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

Example: '{"ids": ["D6zDoI5yRNZ4dmFx", "7sDNSjmgewBcjRS2", "pV0h4RsofWrGiolc"]}'
"""

result, error = admin_delete_bulk_game_sessions(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
