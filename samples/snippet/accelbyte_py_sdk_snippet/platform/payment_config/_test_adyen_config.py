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

Example: '{"allowedPaymentMethods": ["vWS4rLsImP7Xei6K", "US7NgbXaqAcenGn2", "MVHYpKnzrMllK9iU"], "apiKey": "8MiGbQYW5oyPhyHM", "authoriseAsCapture": true, "blockedPaymentMethods": ["cHwAiSlN7B0O29HK", "70dp5T5P2TSWxdFR", "dGc9MFWz3FAUhFxn"], "clientKey": "nkai0umd130UjokQ", "dropInSettings": "BKAYOQOBecMz1IH4", "liveEndpointUrlPrefix": "yGDSb8EnFyOloXhn", "merchantAccount": "XHRbe1msFZJDw2In", "notificationHmacKey": "Fdm1NASlzSApIEhW", "notificationPassword": "0IyaHTRkyny6A4rH", "notificationUsername": "MSzQI1xCk5w8Vq8m", "returnUrl": "NdnJyoGla2GnxlhN", "settings": "9Jf1yXC9R7nlb7zf"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
