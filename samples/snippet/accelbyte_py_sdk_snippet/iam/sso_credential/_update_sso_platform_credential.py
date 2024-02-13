import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_sso_platform_credential
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

Example: '{"acsUrl": "NEldFx9cphnmyYL1", "apiKey": "otOTNxe2kuo8FJ3J", "appId": "SH7llaIK9YRtPq6w", "federationMetadataUrl": "lGndVs92BF4ZsGKU", "isActive": true, "redirectUri": "k10vusQsvdUVOgYK", "secret": "x0zariJGyyGX3cVh", "ssoUrl": "eubwPUc8rhW0H6Jk"}'
"""

result, error = update_sso_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
