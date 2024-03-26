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

Example: '{"currencyCode": "7OnidmIow4ypHqFw", "currencySymbol": "jOT3lQQp7nMFnAbc", "currencyType": "VIRTUAL", "decimals": 60, "localizationDescriptions": {"D6c2Q4kwdB3EYakM": "wVqg7UTnp5kaNDgm", "ZSlaI4HzNdpOwvCI": "pd4VSQHPgXsksiwF", "Er5sJ5x9oMaKcare": "exx5tD9MOh1b9VYB"}}'
"""

result, error = create_currency(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
