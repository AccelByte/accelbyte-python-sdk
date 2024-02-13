import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = delete_item(
    item_id=item_id,
    force=force,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
