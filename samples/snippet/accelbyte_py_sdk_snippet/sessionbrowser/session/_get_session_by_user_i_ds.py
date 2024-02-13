import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_session_by_user_i_ds
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionByUserIDsResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError

result, error = get_session_by_user_i_ds(
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
