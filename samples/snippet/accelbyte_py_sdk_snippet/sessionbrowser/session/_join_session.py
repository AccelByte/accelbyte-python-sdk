import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import join_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsJoinGameSessionRequest
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

"""
body:
Definition: ModelsJoinGameSessionRequest
password: str

Example: '{"password": "Xs7uq4eOB0Cql12j"}'
"""

result, error = join_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
