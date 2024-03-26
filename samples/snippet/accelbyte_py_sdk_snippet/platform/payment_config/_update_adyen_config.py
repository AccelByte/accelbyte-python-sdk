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

Example: '{"allowedPaymentMethods": ["mwN5eFI9enFZYqNh", "zYhwkqsmHCGB0s3Z", "4I9qgzsEp7mJZzhS"], "apiKey": "SDQw5ZN8IVUxMvbM", "authoriseAsCapture": true, "blockedPaymentMethods": ["4Xa39OQ62tpH4oR8", "GwHaEPfKeUWXoqSw", "pgguss4d467rO0zp"], "clientKey": "VzZDkDxwHuSDE0py", "dropInSettings": "c0k7MvvnXu4UPtmb", "liveEndpointUrlPrefix": "W473wzb9N5N6EFGf", "merchantAccount": "HuNX402i3TfJketM", "notificationHmacKey": "wyMtwqHWS04p7HMi", "notificationPassword": "2EnmJKsodAF9RWcf", "notificationUsername": "vC6KNBdPiSuhnD3w", "returnUrl": "8FxXBua6fBoxuLQL", "settings": "lzO2a1cNWKg58FkL"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
