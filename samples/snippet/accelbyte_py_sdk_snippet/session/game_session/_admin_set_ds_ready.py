import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_set_ds_ready
from accelbyte_py_sdk.api.session.models import ApimodelsSetDSReadyRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsSetDSReadyRequest
ready: bool

Example: '{"ready": true}'
"""

result, error = admin_set_ds_ready(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
