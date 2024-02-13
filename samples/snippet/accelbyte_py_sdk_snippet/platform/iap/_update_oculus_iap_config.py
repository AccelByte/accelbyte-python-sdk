import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_oculus_iap_config
from accelbyte_py_sdk.api.platform.models import OculusIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import OculusIAPConfigRequest

"""
body:
Definition: OculusIAPConfigRequest
app_id: str
app_secret: str

Example: '{"appId": "iCphK1XbJZjb26Ip", "appSecret": "GiblknaUl4ZZWw2i"}'
"""

result, error = update_oculus_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
