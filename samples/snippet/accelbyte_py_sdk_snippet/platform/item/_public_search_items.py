import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_search_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemPagingSlicedResult

result, error = public_search_items(
    keyword=keyword,
    language=language,
    auto_calc_estimated_price=auto_calc_estimated_price,
    item_type=item_type,
    limit=limit,
    offset=offset,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
