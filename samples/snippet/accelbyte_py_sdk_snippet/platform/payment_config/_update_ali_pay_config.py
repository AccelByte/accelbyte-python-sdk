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

Example: '{"appId": "S8JNd6CeFv9Q8Wcx", "privateKey": "dSnej61XAOLZH1G1", "publicKey": "YdyMBAxWCYcOmC9F", "returnUrl": "LBggBJ83oVFfzsZK"}'
"""

result, error = update_ali_pay_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
