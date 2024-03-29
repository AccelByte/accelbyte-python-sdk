import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_xsolla_ui_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo
from accelbyte_py_sdk.api.platform.models import XsollaPaywallConfigRequest

"""
body:
Definition: XsollaPaywallConfigRequest
device: str
show_close_button: bool
size: str
theme: str

Example: '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}'
"""

result, error = update_xsolla_ui_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
