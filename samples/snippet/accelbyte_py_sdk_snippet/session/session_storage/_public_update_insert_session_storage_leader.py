import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_update_insert_session_storage_leader
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: Dict[str, Any]

Example: '{"GR6cECy672ugbv5e": {}, "FR3i6aj43oEMeSys": {}, "Q8dipzeALPQgkHNM": {}}'
"""

result, error = public_update_insert_session_storage_leader(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
