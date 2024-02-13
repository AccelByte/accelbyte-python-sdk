import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_list_currencies
from accelbyte_py_sdk.api.platform.models import CurrencyInfo

result, error = public_list_currencies(
    currency_type=currency_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
