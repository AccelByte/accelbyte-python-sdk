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

Example: '{"psn": {"clientId": "xMG9DYpk20Dmg41P", "clientSecret": "K1FItDYAXF5bGlg7", "scope": "M9Jn2i5ZErD7Vye2"}}'
"""

result, error = admin_update_platform_credentials(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
