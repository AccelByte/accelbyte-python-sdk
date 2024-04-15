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

Example: '{"appId": "GxgkvoFMJeIAk9U7", "key": "4MKTffrDV1Ng6mL3", "mchid": "Xl2zK0fokiGAVBFL", "returnUrl": "qkcVaaK0KnF0ggpu"}'
"""

result, error = update_wx_pay_config(
    id_=id_,
    body=body,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
