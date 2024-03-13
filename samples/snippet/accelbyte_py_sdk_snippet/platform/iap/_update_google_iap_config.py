import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_google_iap_config
from accelbyte_py_sdk.api.platform.models import GoogleIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import GoogleIAPConfigRequest

"""
body:
Definition: GoogleIAPConfigRequest
application_name: str
service_account_id: str

Example: '{"applicationName": "IJIiwEr1A4T9oDIJ", "serviceAccountId": "bTR1qPEq4H9Sn9AK"}'
"""

result, error = update_google_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
