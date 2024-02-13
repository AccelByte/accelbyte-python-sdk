import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_statistic
from accelbyte_py_sdk.api.platform.models import CatalogChangeStatistics

result, error = get_statistic(
    store_id=store_id,
    action=action,
    item_sku=item_sku,
    item_type=item_type,
    type_=type_,
    updated_at_end=updated_at_end,
    updated_at_start=updated_at_start,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
