import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_payment_provider_config
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

Example: '{"aggregate": "ADYEN", "namespace": "Et81kRiVNHU37AbT", "region": "pxEATxNv6IK8pKD8", "sandboxTaxJarApiToken": "XVsaIjqxERjAS3v3", "specials": ["STRIPE", "WALLET", "STRIPE"], "taxJarApiToken": "GlahzXhJ5x9i6ZRI", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}'
"""

result, error = update_payment_provider_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
