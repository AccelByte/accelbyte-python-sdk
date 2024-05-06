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

Example: '{"aggregate": "ADYEN", "namespace": "T5UPxgJx54r4BHY9", "region": "EMh3hRLoSoY0GKSx", "sandboxTaxJarApiToken": "kxOt09M9IPEH8X9J", "specials": ["XSOLLA", "WALLET", "ADYEN"], "taxJarApiToken": "F5bCPGunun0cY8VZ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}'
"""

result, error = update_payment_provider_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
