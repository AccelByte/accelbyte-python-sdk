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

Example: '{"allowedPaymentMethods": ["z4l2H9UHGbbM9u6q", "zEg0r3i16mW2tMbv", "qUOK9ERsSIBptUbk"], "apiKey": "Lf7YyC33ebCnzYOE", "authoriseAsCapture": true, "blockedPaymentMethods": ["YEqss7mdOzBzVhHa", "fulySI1urVul4v24", "xnEd7Bd4ORidrBAd"], "clientKey": "BnHvGBWqAtjQODd8", "dropInSettings": "Ov8xStOpWEfr1tNq", "liveEndpointUrlPrefix": "UUxRTONoyd9FFaG4", "merchantAccount": "7vicTzAQ5JufIFGb", "notificationHmacKey": "MBAPofGNAfb0sNs2", "notificationPassword": "83fncrlQUjllrSs7", "notificationUsername": "osO7oqKrccMEMi0N", "returnUrl": "qpWRYTmr17JNZbMv", "settings": "WeAX4jRRdgjg6Pc2"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
