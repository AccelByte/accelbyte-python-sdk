import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_payment_provider_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentProviderConfigEdit
from accelbyte_py_sdk.api.platform.models import PaymentProviderConfigInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentProviderConfigEdit
aggregate: str
namespace: str
region: str
sandbox_tax_jar_api_token: str
specials: List[str]
tax_jar_api_token: str
tax_jar_enabled: bool
use_global_tax_jar_api_token: bool

Example: '{"aggregate": "ADYEN", "namespace": "9wXCkKDULvCpfxII", "region": "wcASTcguSIyI9ysA", "sandboxTaxJarApiToken": "qD1Cs8WAY8DVmtiI", "specials": ["CHECKOUT", "WXPAY", "XSOLLA"], "taxJarApiToken": "nKyZNZ4VY34TR3aj", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}'
"""

result, error = create_payment_provider_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
