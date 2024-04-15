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

Example: '{"currencyCode": "1jI7E8bXCQT9K5c7", "currencySymbol": "vM4OxtuNrxmnEeq3", "currencyType": "REAL", "decimals": 10, "localizationDescriptions": {"jZLDl1uOERy9R8Vw": "SxRIkiTgwkGME8XN", "hfQRtUo6X78G18bh": "PqhZKA2g1JbnmaZb", "rbJjx79lyznTgZVL": "VDMYkhvu1WEVaLL1"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
