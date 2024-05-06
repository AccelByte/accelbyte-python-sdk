import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_adyen_config
from accelbyte_py_sdk.api.platform.models import AdyenConfig
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo

"""
body:
Definition: AdyenConfig
allowed_payment_methods: List[str]
api_key: str
authorise_as_capture: bool
blocked_payment_methods: List[str]
client_key: str
drop_in_settings: str
live_endpoint_url_prefix: str
merchant_account: str
notification_hmac_key: str
notification_password: str
notification_username: str
return_url: str
settings: str

Example: '{"allowedPaymentMethods": ["gjmCrrq4prMoXcUP", "CXshUvc0Yr2bbtVj", "VFhIH7extMOVESTQ"], "apiKey": "2pbFmONztY0sgsic", "authoriseAsCapture": false, "blockedPaymentMethods": ["LYYnpOso0tCTQMlI", "TReDritWti2FxXEI", "a51ajuGyc9MtdHWL"], "clientKey": "SJNPZiQBLacIYlG9", "dropInSettings": "tYynPVTEuCeF9Ksk", "liveEndpointUrlPrefix": "xt7WsGoRzQ5f7GKF", "merchantAccount": "5Z7IkCC62aihM71g", "notificationHmacKey": "ADXbBklrevR1f00p", "notificationPassword": "dHKDcOkHzdxlVfyZ", "notificationUsername": "mYLACPHB81brsjaj", "returnUrl": "NkOrnSU99D8NtXMx", "settings": "HF9v07iayXI9ZLLi"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
