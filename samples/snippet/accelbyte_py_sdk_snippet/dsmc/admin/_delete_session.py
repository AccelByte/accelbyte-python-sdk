import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_session
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_session(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
