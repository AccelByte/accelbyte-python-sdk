import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_estimated_price
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import EstimatedPriceInfo

result, error = get_estimated_price(
    item_ids=item_ids,
    user_id=user_id,
    platform=platform,
    region=region,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
