import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_reconcile_max_active_session
from accelbyte_py_sdk.api.session.models import ModelsRequestReconcileMaxActiveSession
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ModelsRequestReconcileMaxActiveSession
user_id: str

Example: '{"userID": "eQCMruRijVOI1H0z"}'
"""

result, error = admin_reconcile_max_active_session(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
