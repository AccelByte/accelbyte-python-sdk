import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_apple_iap_config
from accelbyte_py_sdk.api.platform.models import AppleIAPConfigInfo

result, error = get_apple_iap_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
