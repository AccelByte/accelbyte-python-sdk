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

Example: '{"acsUrl": "b3KIPN00bDJ5yeSN", "apiKey": "UqElyuR3hrl67epn", "appId": "TOj6G7NTUGXfvUQt", "federationMetadataUrl": "wMml1SsrZl36nbyC", "isActive": false, "redirectUri": "NfjNeyqjW3ZxTvvQ", "secret": "LEJSsFznaySxscc9", "ssoUrl": "yY5SnYVDAAdTcR7U"}'
"""

result, error = add_sso_login_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
