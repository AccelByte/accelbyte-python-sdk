import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_currency
from accelbyte_py_sdk.api.platform.models import CurrencyInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = delete_currency(
    currency_code=currency_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
