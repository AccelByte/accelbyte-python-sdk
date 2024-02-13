import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_dlc_item_config
from accelbyte_py_sdk.api.platform.models import DLCItemConfigInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_dlc_item_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
