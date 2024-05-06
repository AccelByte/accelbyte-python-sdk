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

Example: '{"allowedPaymentMethods": ["kyZLpaUJjDMLqcP3", "dJlG2RvmxM37fEqY", "lUEvjz6jVZ8N7xwp"], "apiKey": "Ofe9nl8ha8xtCZlB", "authoriseAsCapture": false, "blockedPaymentMethods": ["a7XLhv4DQBUuhqtk", "F7dLCpRyV6LFVc7F", "yq7yPTTi1sNvyOJX"], "clientKey": "Nt7T23LR2hEx9F6i", "dropInSettings": "20fv1jSGdjncpWsQ", "liveEndpointUrlPrefix": "CrnZJqQ7vxrIG89f", "merchantAccount": "HWL7yZBiQsqhYZ6u", "notificationHmacKey": "OhyWIwPbreuBjLa4", "notificationPassword": "I2ymboCssPaqXNTR", "notificationUsername": "Y5Qh5Iokzls9Pe9h", "returnUrl": "dD36TlalmnaJNMXn", "settings": "SNBcdEjzvuUDXJaS"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
