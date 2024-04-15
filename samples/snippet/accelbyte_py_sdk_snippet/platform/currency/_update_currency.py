import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_currency
from accelbyte_py_sdk.api.platform.models import CurrencyInfo
from accelbyte_py_sdk.api.platform.models import CurrencyUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CurrencyUpdate
localization_descriptions: Dict[str, str]

Example: '{"localizationDescriptions": {"8HYHoY8GUy71O1KJ": "zInWIp6ykg7bxWmg", "S18V0DdFECiViOzn": "hucyjNeNlOdwbNk8", "nbv85DgN00MiB4gp": "pDU1Mtack6yg2iLA"}}'
"""

result, error = update_currency(
    currency_code=currency_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
