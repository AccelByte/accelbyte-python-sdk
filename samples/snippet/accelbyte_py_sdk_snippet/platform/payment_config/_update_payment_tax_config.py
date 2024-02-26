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

Example: '{"sandboxTaxJarApiToken": "hKgaWh7FNq8iTRPC", "taxJarApiToken": "DUl5HtIvtLX7x4p2", "taxJarEnabled": true, "taxJarProductCodesMapping": {"MF7z5lTkhcL9sn01": "oT7vwdMQzxUtvCoF", "gSTWbOvuHk4xAjq3": "Z7fGoE4blE8hcJ3e", "FToC6K4YSklXQW3d": "mhOj2zqNPQw1wsVf"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
