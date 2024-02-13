import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import search_item_type_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemTypeConfigInfo

result, error = search_item_type_config(
    item_type=item_type,
    clazz=clazz,
    x_additional_headers=x_additional_headers,
)
