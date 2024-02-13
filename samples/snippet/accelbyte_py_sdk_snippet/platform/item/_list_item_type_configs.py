import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_item_type_configs
from accelbyte_py_sdk.api.platform.models import ItemTypeConfigInfo

result, error = list_item_type_configs(
    x_additional_headers=x_additional_headers,
)
