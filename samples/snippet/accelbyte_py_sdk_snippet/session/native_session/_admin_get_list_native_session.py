import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_list_native_session
from accelbyte_py_sdk.api.session.models import ApimodelsNativeSessionPagingResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_list_native_session(
    limit=limit,
    offset=offset,
    order=order,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
