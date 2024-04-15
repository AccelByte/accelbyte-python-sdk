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

Example: '{"sandboxTaxJarApiToken": "7x0CUTvF4lR884dm", "taxJarApiToken": "bkAGbllOI1USs9Rj", "taxJarEnabled": true, "taxJarProductCodesMapping": {"I7ncDSoeDMsaovk4": "6vWho24rJ14IRyXv", "tswkvy59Yrb8POjL": "up7J6Oc2RO0Grlqd", "9Wfk0HSzPk0waod0": "KzsFGaKdZi0yaPQw"}}'
"""

result, error = update_payment_tax_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
