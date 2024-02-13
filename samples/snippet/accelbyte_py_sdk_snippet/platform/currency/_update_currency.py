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

Example: '{"localizationDescriptions": {"ISQ6IyqhAKy5MX1U": "CPl0RqnEnd3hD8fg", "P88mZu1C8F1fNJsa": "B5nQfyLKA0Bfv9kO", "9JggnPIcpRqK6um9": "ULfz42UumpCRtLTX"}}'
"""

result, error = update_currency(
    currency_code=currency_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
