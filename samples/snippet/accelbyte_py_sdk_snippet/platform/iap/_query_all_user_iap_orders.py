import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_all_user_iap_orders
from accelbyte_py_sdk.api.platform.models import IAPOrderPagingSlicedResult

result, error = query_all_user_iap_orders(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
