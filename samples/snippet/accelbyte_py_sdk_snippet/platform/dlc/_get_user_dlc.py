import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_dlc
from accelbyte_py_sdk.api.platform.models import UserDLCRecord

result, error = get_user_dlc(
    user_id=user_id,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
