import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_bulk_item_id_by_skus
from accelbyte_py_sdk.api.platform.models import ItemId

result, error = get_bulk_item_id_by_skus(
    sku=sku,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
