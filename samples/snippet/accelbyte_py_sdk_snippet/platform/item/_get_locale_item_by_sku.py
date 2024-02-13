import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_locale_item_by_sku
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PopulatedItemInfo

result, error = get_locale_item_by_sku(
    sku=sku,
    active_only=active_only,
    language=language,
    populate_bundle=populate_bundle,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
