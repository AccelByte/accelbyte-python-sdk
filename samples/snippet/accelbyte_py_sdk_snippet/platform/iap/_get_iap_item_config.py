import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_iap_item_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import IAPItemConfigInfo

result, error = get_iap_item_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
