import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import get_session_server_secret
from accelbyte_py_sdk.api.session.models import ApimodelsServerSecret
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = get_session_server_secret(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
