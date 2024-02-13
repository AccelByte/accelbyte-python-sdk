import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_item_by_sku
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemInfo

result, error = public_get_item_by_sku(
    sku=sku,
    auto_calc_estimated_price=auto_calc_estimated_price,
    language=language,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
