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

Example: '{"currencyCode": "0JrzVWhs4h97LCFt", "currencySymbol": "cekpnw2hVwmz1CT5", "currencyType": "REAL", "decimals": 82, "localizationDescriptions": {"znz4Y7i0kDbDedAt": "o3p01KOK4KGduLzJ", "b4uJ6pMJ1vqzuotD": "nhSCp39kf7DiWBk0", "bmiuS2sLZEphI5rt": "q7xdUx5HyBteG9Iz"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
