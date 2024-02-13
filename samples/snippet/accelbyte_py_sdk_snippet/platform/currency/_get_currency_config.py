import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_currency_config
from accelbyte_py_sdk.api.platform.models import CurrencyConfig
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_currency_config(
    currency_code=currency_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
