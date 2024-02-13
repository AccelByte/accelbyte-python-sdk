import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo

result, error = get_items(
    item_ids=item_ids,
    active_only=active_only,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
