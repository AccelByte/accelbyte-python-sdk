import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_adyen_config
from accelbyte_py_sdk.api.platform.models import AdyenConfig
from accelbyte_py_sdk.api.platform.models import TestResult

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

Example: '{"allowedPaymentMethods": ["ysOgqhtXftq10Js6", "HRjLJSDN2X2Jwu9b", "7wj84sYfYpdr2zZH"], "apiKey": "ilnpRBUBQkU4jwE6", "authoriseAsCapture": false, "blockedPaymentMethods": ["jxkt07xjgpah3hkl", "CnlXy0EARQdNVqHN", "wk3kGsGFK7iXmO2u"], "clientKey": "xO7mGsFQT6Mpaw6q", "dropInSettings": "co0QUP1OpUaBGXbc", "liveEndpointUrlPrefix": "Z3Mceuw4t1QUmotq", "merchantAccount": "NifglJf01SIT8d4S", "notificationHmacKey": "FlLh7qFOoNuAbqDc", "notificationPassword": "HriVUM4aYDVIUJBi", "notificationUsername": "3GjTW9YfaKtTfQrb", "returnUrl": "OAsXJkgE6UoJl0h9", "settings": "6bE8O0wHGpVT9Tev"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
