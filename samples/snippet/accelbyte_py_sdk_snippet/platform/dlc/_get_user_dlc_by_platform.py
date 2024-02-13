import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_dlc_by_platform
from accelbyte_py_sdk.api.platform.models import UserDLC

result, error = get_user_dlc_by_platform(
    user_id=user_id,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
