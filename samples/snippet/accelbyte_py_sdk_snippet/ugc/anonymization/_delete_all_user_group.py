import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import delete_all_user_group
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = delete_all_user_group(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
