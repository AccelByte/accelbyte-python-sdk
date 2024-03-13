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

Example: '{"allowedPaymentMethods": ["mcWMuuHqs7AsAqmB", "SrJZiaxqORCH5J7X", "v09ms4Dt5kYZNmgN"], "apiKey": "jdiaumyyZF3c7GO2", "authoriseAsCapture": false, "blockedPaymentMethods": ["zu9hMLtyfNYUyy2W", "0suY42mJuZHjbPbA", "rNhJ9nc3Dr3KrDmE"], "clientKey": "9J4rdE8eIYtoHyb4", "dropInSettings": "pSoucxWHSnhEnIIT", "liveEndpointUrlPrefix": "RNdRGjbGeAzHGvvA", "merchantAccount": "P80zAgMTC4nHG0ZX", "notificationHmacKey": "u1PeV0jJuTFrABAG", "notificationPassword": "8zs2nnHxUj8hk9LP", "notificationUsername": "UmKzYoplmE6lF7iX", "returnUrl": "kxvZnfp6bsabv19M", "settings": "8RmJ9rzPdSt69mHI"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
