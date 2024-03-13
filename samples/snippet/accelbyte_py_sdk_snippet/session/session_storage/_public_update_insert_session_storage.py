import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_update_insert_session_storage
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: Dict[str, Any]

Example: '{"XtvidgvpWGuM6Ph2": {}, "yx4iYrfXLNjFmNsY": {}, "ZcnoG2nfw0JXKOet": {}}'
"""

result, error = public_update_insert_session_storage(
    body=body,
    session_id=session_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
