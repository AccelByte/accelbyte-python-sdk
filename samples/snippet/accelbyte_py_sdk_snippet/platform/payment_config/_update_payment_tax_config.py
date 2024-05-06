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

Example: '{"sandboxTaxJarApiToken": "N6jD93Bcpy1Ic3td", "taxJarApiToken": "I6bXWyNlxUfsF73f", "taxJarEnabled": true, "taxJarProductCodesMapping": {"eYjIYt1NZqFI9f9z": "yG2DFmkcX7aINL0g", "d0dmvGWtEUlN3tr4": "dr9M7drz57Fh5gaQ", "GYggpXaOoy1nUckm": "WtHlMx4kDaDD4WV5"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
