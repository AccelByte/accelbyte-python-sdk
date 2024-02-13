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

Example: '{"currencyCode": "oDyhto9g6XgAGeqR", "currencySymbol": "selfzf1n75aYIULK", "currencyType": "VIRTUAL", "decimals": 2, "localizationDescriptions": {"1dvykvmZI1aobV0z": "8by7IGvEs1cR5nwr", "JYrpN6ZUAXQmim2I": "Hr3ePzmTItITn0Wn", "ILaZkdGY2PGXXWmG": "DaaP0GDTBETV1nVE"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
