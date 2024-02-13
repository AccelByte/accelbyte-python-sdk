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

Example: '{"allowedPaymentMethods": ["SegErFEqf8iAcI8X", "vzfYKyYCMn2Mzjfg", "0xB09LDhAGigKpIt"], "apiKey": "rchrcvg4bVYszFkc", "authoriseAsCapture": true, "blockedPaymentMethods": ["dXYT3r3fTPCNJyof", "4B3kiVglDOxMWxqt", "Ws0hrKo8vUBlxrVQ"], "clientKey": "NLynLX6zjJ7NVAxL", "dropInSettings": "ZGauwae3ngg6fYuo", "liveEndpointUrlPrefix": "EETUWrxRntvQrE9C", "merchantAccount": "TErvAQAJJaXIY6IT", "notificationHmacKey": "dPcUzUzgFRBAnVqp", "notificationPassword": "IiaFkub5LyRjxeVo", "notificationUsername": "wjqyV5NSbmvZsPrx", "returnUrl": "mnzZY1ZSAPbbz1lw", "settings": "uYtRUloL3UKkC5zz"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
