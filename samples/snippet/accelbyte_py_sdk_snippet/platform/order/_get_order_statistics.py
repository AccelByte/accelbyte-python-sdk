import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_order_statistics
from accelbyte_py_sdk.api.platform.models import OrderStatistics

result, error = get_order_statistics(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
