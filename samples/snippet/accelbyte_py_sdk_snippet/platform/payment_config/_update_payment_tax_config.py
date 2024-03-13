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

Example: '{"sandboxTaxJarApiToken": "HwizCgJ1jdCKqbAp", "taxJarApiToken": "UqK30off7XAvuaZW", "taxJarEnabled": false, "taxJarProductCodesMapping": {"ouLtExd8GJ5NaIAg": "rb3Hrp8X9P60kvKU", "f3u8q6cb8Ho9ipDD": "LcUZDcB8CNRCJsfJ", "yKylMioFaWc8TE4c": "Dtoel9DfhvYbR3f5"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
