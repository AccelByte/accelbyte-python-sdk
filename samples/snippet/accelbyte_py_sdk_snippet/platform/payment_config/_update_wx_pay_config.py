import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_wx_pay_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo
from accelbyte_py_sdk.api.platform.models import WxPayConfigRequest

"""
body:
Definition: WxPayConfigRequest
app_id: str
key: str
mchid: str
return_url: str

Example: '{"appId": "il0p2wdiNaWaCjs0", "key": "I7bpRaub3TD5wH8V", "mchid": "e1fmPCsbmFJz6S5Q", "returnUrl": "0RrZ0TH84cn5bP6k"}'
"""

result, error = update_wx_pay_config(
    id_=id_,
    body=body,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
