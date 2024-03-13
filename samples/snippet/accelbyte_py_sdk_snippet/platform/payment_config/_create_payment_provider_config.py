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

Example: '{"aggregate": "XSOLLA", "namespace": "gvW6it0pE4BqaCD6", "region": "XUL7ZTqAQF1j9RT5", "sandboxTaxJarApiToken": "34CoKsOqzVPt93eW", "specials": ["WXPAY", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "9zZrFM6kUxGGccZQ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}'
"""

result, error = create_payment_provider_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
