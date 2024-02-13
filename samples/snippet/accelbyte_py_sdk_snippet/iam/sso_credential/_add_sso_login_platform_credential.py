import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_sso_login_platform_credential
from accelbyte_py_sdk.api.iam.models import ModelSSOPlatformCredentialRequest
from accelbyte_py_sdk.api.iam.models import ModelSSOPlatformCredentialResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSSOPlatformCredentialRequest
acs_url: str
api_key: str
app_id: str
federation_metadata_url: str
is_active: bool
redirect_uri: str
secret: str
sso_url: str

Example: '{"acsUrl": "mMlKkkPujGEfds1I", "apiKey": "9LHqjMTWGQ7k3Try", "appId": "mCPpDc0n7ai0YzOr", "federationMetadataUrl": "fvN68Jvj7r8iEUo0", "isActive": true, "redirectUri": "2aXFf55HmSWpxjbI", "secret": "0Qxybc7wkK3FvB2I", "ssoUrl": "gtpNdyLua7zZ4z43"}'
"""

result, error = add_sso_login_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
