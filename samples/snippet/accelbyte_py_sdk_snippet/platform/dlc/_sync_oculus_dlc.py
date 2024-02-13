import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_oculus_dlc
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = sync_oculus_dlc(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
