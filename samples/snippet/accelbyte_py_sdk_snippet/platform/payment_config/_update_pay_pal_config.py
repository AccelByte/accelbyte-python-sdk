import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_pay_pal_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PayPalConfig
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo

"""
body:
Definition: PayPalConfig
client_id: str
client_secret: str
return_url: str
web_hook_id: str

Example: '{"clientID": "F10LznNhLnBmivDX", "clientSecret": "1E9JGKbKBBg8KPge", "returnUrl": "du6UasSwyTGrqfs4", "webHookId": "xSMrmx0Tj9PEVjOB"}'
"""

result, error = update_pay_pal_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
