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

Example: '{"allowedPaymentMethods": ["elL4OdcuKULNVGdI", "5obHfLHpkkAioMLa", "6jov4ZWp5k4sLyY3"], "apiKey": "WRF3tyP8CpgHN30n", "authoriseAsCapture": false, "blockedPaymentMethods": ["9HuTUwgIiDUu3jX5", "zWl0K6UsBhFvUmqW", "Ewoa6oNQj6NPySVE"], "clientKey": "dfqDCnK5RqSPwAXo", "dropInSettings": "sRPLYSwXdjF06aim", "liveEndpointUrlPrefix": "AEhyeoI2zUxF2Wq7", "merchantAccount": "Np6WxLCH3lhYo0Gk", "notificationHmacKey": "lcjI4BhNMLnoCnBw", "notificationPassword": "AWieQlGQGihIyE9b", "notificationUsername": "mT9nltixiMcTVdSj", "returnUrl": "FIDTOo6kJlQ7606I", "settings": "falXwVdslhBvg5ce"}'
"""

result, error = test_adyen_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
