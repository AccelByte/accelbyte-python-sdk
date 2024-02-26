import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_currency
from accelbyte_py_sdk.api.platform.models import CurrencyCreate
from accelbyte_py_sdk.api.platform.models import CurrencyInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CurrencyCreate
currency_code: str
currency_symbol: str
currency_type: str
decimals: int
localization_descriptions: Dict[str, str]

Example: '{"currencyCode": "DutOCYiO9bMd3WOB", "currencySymbol": "NR0lKWQ7nWAmcFJY", "currencyType": "REAL", "decimals": 25, "localizationDescriptions": {"4hZyQTooYStlHTCT": "wvVq4a9XeO3J24ME", "MoBgmRe0A7LIP50g": "z9Nvy5rDcXlIMAS1", "3DbPsVm3XNGv5kM6": "xelyVlVRUafZzLP5"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
