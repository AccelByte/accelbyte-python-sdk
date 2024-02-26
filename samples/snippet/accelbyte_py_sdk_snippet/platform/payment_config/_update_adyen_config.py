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

Example: '{"allowedPaymentMethods": ["1DthQorSMzupU3RZ", "oDzaODrpVIvCE5zB", "IGQwaWkjDyC0Z4G5"], "apiKey": "nzkBcxbzRmcUx8TC", "authoriseAsCapture": true, "blockedPaymentMethods": ["qZQOHeaLAPSaiVHo", "27As6LtUrnhTePop", "IYvG8oIGfk3GKIRy"], "clientKey": "dUGoEIRRXFZMklBq", "dropInSettings": "4qyZ7gZ0CAzdXvAa", "liveEndpointUrlPrefix": "3wy8GHHxqAZhlheW", "merchantAccount": "OrAsKMa0YsMBafva", "notificationHmacKey": "dWakShmt0Mzep7SE", "notificationPassword": "ixxfdr3XxIzi2XHI", "notificationUsername": "eNpv9lOKBYcZZzPV", "returnUrl": "1KGlB0VJDdhWu4yg", "settings": "8lcdpFLltyWLk9zM"}'
"""

result, error = update_adyen_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
