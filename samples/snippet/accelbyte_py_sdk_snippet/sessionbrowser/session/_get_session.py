import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError

result, error = get_session(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
