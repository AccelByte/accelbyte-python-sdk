import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_xbl_iap_config
from accelbyte_py_sdk.api.platform.models import XblIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import XblIAPConfigRequest

"""
body:
Definition: XblIAPConfigRequest
relying_party_cert: str

Example: '{"relyingPartyCert": "Je3H6z8P8ylK5gFk"}'
"""

result, error = update_xbl_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
