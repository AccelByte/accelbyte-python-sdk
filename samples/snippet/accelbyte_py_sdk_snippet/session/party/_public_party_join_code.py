import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_party_join_code
from accelbyte_py_sdk.api.session.models import ApimodelsJoinByCodeRequest
from accelbyte_py_sdk.api.session.models import ApimodelsPartySessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsJoinByCodeRequest
code: str

Example: '{"code": "6Us4SGYUIs9v9yow"}'
"""

result, error = public_party_join_code(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
