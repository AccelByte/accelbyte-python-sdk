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

Example: '{"currencyCode": "lYGnSSzrabBJS7QX", "currencySymbol": "KAqG6ZWDtSJpEOnw", "currencyType": "REAL", "decimals": 72, "localizationDescriptions": {"YJXMh35W1kKJEGTD": "52nVR4eRNOxUg1mU", "hei9i1nlCqQp9fJz": "SZ8EnCZ8ueYTKoHy", "fTCz3iVp3lwydjmn": "2AkMCsOJDA6JmG8l"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
