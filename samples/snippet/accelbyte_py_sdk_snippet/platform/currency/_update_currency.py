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

Example: '{"localizationDescriptions": {"Xi0wHJdtyfZaYdWB": "JchYsTzB0cAUv1iN", "CKPFTiNRvJ49ZCbF": "khvEQLuEA2r53AXL", "PJIrzpYo7Ij2ySvh": "tfsmstcs9SQa6M7N"}}'
"""

result, error = update_currency(
    currency_code=currency_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
