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

Example: '{"appId": "0shDrUutYzDuQ4Vi", "privateKey": "j9dFiOPvPrtRVVUs", "publicKey": "RccURDeAqQI68haZ", "returnUrl": "SxrSG7EGy3Czq8rS"}'
"""

result, error = update_ali_pay_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
