import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import claim_server
from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsClaimSessionRequest
session_id: str

Example: '{"session_id": "KYx8Tyq7O1IoUgr8"}'
"""

result, error = claim_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
