import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import count_of_purchased_item
from accelbyte_py_sdk.api.platform.models import PurchasedItemCount

result, error = count_of_purchased_item(
    user_id=user_id,
    item_id=item_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
