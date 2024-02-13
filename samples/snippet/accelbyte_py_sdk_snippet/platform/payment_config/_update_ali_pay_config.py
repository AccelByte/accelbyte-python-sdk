import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_ali_pay_config
from accelbyte_py_sdk.api.platform.models import AliPayConfig
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo

"""
body:
Definition: AliPayConfig
app_id: str
private_key: str
public_key: str
return_url: str

Example: '{"appId": "XeZuJIxf4mfJ3u9c", "privateKey": "aRQ1RZRum3zNvrK2", "publicKey": "3EnniWD67lA9Klx0", "returnUrl": "IxHuqKrPRjG4XHMT"}'
"""

result, error = update_ali_pay_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
