import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_iap_item_mapping
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import IAPItemMappingInfo

result, error = get_iap_item_mapping(
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
