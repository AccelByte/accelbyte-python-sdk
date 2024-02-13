import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import bulk_get_locale_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemInfo

result, error = bulk_get_locale_items(
    item_ids=item_ids,
    active_only=active_only,
    language=language,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
