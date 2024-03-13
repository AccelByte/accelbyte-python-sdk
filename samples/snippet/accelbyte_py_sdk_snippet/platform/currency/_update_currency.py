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

Example: '{"localizationDescriptions": {"xtXVcKA64kuo5RDu": "N4ivscJRVoKMzPCb", "RF59dzEm6xVWuRwy": "ibS9cABMAImcbtNC", "QqL5ohM8SJ1rUSaT": "NZe6zg2dwWxnF1Ug"}}'
"""

result, error = update_currency(
    currency_code=currency_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
