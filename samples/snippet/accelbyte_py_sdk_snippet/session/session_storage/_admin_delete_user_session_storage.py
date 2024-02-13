import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_delete_user_session_storage
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_delete_user_session_storage(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
