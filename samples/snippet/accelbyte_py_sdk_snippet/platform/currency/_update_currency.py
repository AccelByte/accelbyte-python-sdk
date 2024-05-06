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

Example: '{"localizationDescriptions": {"RRdCQDtJglOtJ38g": "BOiug5SratN8tCeD", "od5ODaTcLL1noqfl": "h222AK07UtgwwzCo", "O05z1My4fkVvbZ5L": "3cjrGQalpbhzdbWS"}}'
"""

result, error = update_currency(
    currency_code=currency_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
