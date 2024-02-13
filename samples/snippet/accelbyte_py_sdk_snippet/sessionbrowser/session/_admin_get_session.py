import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import admin_get_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsAdminSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

result, error = admin_get_session(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
