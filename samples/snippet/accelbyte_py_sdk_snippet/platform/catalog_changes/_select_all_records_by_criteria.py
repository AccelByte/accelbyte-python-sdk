import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import select_all_records_by_criteria
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = select_all_records_by_criteria(
    store_id=store_id,
    action=action,
    item_sku=item_sku,
    item_type=item_type,
    selected=selected,
    type_=type_,
    updated_at_end=updated_at_end,
    updated_at_start=updated_at_start,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
