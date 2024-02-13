import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_update_platform_credentials
from accelbyte_py_sdk.api.session.models import ApimodelsPutPlatformCredentialsRequest
from accelbyte_py_sdk.api.session.models import ModelsPlatformCredentials
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPutPlatformCredentialsRequest
psn: ModelsPSNAppServerCredentials
Definition: ModelsPSNAppServerCredentials
    client_id: str
    client_secret: str
    scope: str

Example: '{"psn": {"clientId": "rQRChz8TROfDT2ZE", "clientSecret": "BYMtdSI8DgyHO7h2", "scope": "2cfzsFuOmBQhX5mD"}}'
"""

result, error = admin_update_platform_credentials(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
