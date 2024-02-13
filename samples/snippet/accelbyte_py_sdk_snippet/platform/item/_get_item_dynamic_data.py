import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_item_dynamic_data
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemDynamicDataInfo

result, error = get_item_dynamic_data(
    item_id=item_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
