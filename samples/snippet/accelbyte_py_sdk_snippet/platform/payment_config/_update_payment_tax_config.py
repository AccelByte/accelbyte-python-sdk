import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_payment_tax_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentTaxConfigEdit
from accelbyte_py_sdk.api.platform.models import PaymentTaxConfigInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentTaxConfigEdit
sandbox_tax_jar_api_token: str
tax_jar_api_token: str
tax_jar_enabled: bool
tax_jar_product_codes_mapping: Dict[str, str]

Example: '{"sandboxTaxJarApiToken": "X2qYAdsLHWSpoJGp", "taxJarApiToken": "AFee4nNE0qdmXrFY", "taxJarEnabled": false, "taxJarProductCodesMapping": {"cye8ktpIYoXrVVgX": "ly3jCJZeeqxT6zWZ", "K96LhjZ3pUoVAbYk": "bHjLJW5wTqFZy7r3", "79dj5YMDRz0WuRWU": "bo7UEBkjg9CJz8Zr"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
