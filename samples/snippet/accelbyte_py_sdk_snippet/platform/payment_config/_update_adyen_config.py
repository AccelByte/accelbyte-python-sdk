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

Example: '{"allowedPaymentMethods": ["qYkK4OOOtgnc7ybE", "19bqEnqv3WNbOnZb", "CMHpB1jSd1txN3lZ"], "apiKey": "DSIFWatqhIwKvZCD", "authoriseAsCapture": true, "blockedPaymentMethods": ["LniIm9fRzM0RIpGK", "xZF78san1gNpWQJO", "y0JYFWHrUhHrYFKK"], "clientKey": "mu3X8vH4vVWURAiD", "dropInSettings": "7zQkAjnK1mP1AJOl", "liveEndpointUrlPrefix": "TLre46FVvOYsaQx1", "merchantAccount": "C4d60ksalHHQsLCP", "notificationHmacKey": "H8iOC0UzDsWRCZdb", "notificationPassword": "Z3t1e1b1AiPJG5Dw", "notificationUsername": "mu6ldgBuYJwHPlK7", "returnUrl": "iQAJFysQ2iHbRDad", "settings": "s0d0jWjy57zijXF7"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
