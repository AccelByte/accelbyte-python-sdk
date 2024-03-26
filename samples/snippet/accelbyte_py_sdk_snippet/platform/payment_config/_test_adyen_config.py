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

Example: '{"allowedPaymentMethods": ["Gen2qP0alxbxwZ4p", "BpnO5zhpvdh3Y5DI", "YoIxtEQoEWwQrlxi"], "apiKey": "krn9GKjnyhFgVG65", "authoriseAsCapture": true, "blockedPaymentMethods": ["DjCnt39NNbVE1IAZ", "aiuse4EtSLm9wDJ0", "wNK2SEgMv2saO1xn"], "clientKey": "FPwuoaY2iI7gAayl", "dropInSettings": "d0IyKKKPLetSfDAI", "liveEndpointUrlPrefix": "49lEHlS3NIDx5dhx", "merchantAccount": "bPvKCS80lj7wcmSS", "notificationHmacKey": "K5v2fGVOrfx4vERZ", "notificationPassword": "1hrf4Nms24tE8lIO", "notificationUsername": "K7dARdGbmHHdOeTE", "returnUrl": "xaMccasjFo65NBhC", "settings": "ixp7TjBYuMuQCRP9"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
