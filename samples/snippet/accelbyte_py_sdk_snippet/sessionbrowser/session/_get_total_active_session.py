import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_total_active_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCountActiveSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

result, error = get_total_active_session(
    session_type=session_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
