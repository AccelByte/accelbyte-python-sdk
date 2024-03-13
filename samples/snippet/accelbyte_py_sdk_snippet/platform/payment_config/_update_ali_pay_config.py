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

Example: '{"appId": "iVmX9TvwKo0vWNiM", "privateKey": "0A1aKO2gNNTdTTyT", "publicKey": "C8fw7oIRptJyAmPs", "returnUrl": "ZIIJ19mlLRwFpGrv"}'
"""

result, error = update_ali_pay_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
