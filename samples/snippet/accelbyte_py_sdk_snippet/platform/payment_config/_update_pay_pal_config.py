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

Example: '{"clientID": "lW5E56Zy68zODE7s", "clientSecret": "PUzcNOsMNyVM6vlS", "returnUrl": "UC57Vuxefq9xuAhL", "webHookId": "KNWfryiBM9JSFPc9"}'
"""

result, error = update_pay_pal_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
