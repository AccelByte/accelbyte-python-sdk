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

Example: '{"sandboxTaxJarApiToken": "tbijWr9oqjLkToGb", "taxJarApiToken": "Pi0wnvqJvrndHsrb", "taxJarEnabled": true, "taxJarProductCodesMapping": {"tl42QWh4ISinO1jj": "frbNsom2TSQ7dyV3", "cxcLI32lcGOB86QM": "d4iqA05WPCb45DgJ", "rjgJqwkbYQxCM3nT": "xezP5ERP0K1HaaL0"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
