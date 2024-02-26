import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_session_join_code
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsJoinByCodeRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsJoinByCodeRequest
code: str

Example: '{"code": "QN4ptip5mrM6ptOF"}'
"""

result, error = public_session_join_code(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
