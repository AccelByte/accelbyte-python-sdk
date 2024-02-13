import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_currency_summary
from accelbyte_py_sdk.api.platform.models import CurrencySummary
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_currency_summary(
    currency_code=currency_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
