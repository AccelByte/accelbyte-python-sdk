import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_payment_callback_config
from accelbyte_py_sdk.api.platform.models import PaymentCallbackConfigInfo
from accelbyte_py_sdk.api.platform.models import PaymentCallbackConfigUpdate

"""
body:
Definition: PaymentCallbackConfigUpdate
dry_run: bool
notify_url: str
private_key: str

Example: '{"dryRun": true, "notifyUrl": "WNfPrRdNcoM08hO8", "privateKey": "AseOYpqNYLMb7IRt"}'
"""

result, error = update_payment_callback_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
