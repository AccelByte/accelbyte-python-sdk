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

Example: '{"acsUrl": "p6b58Xweq8w199tW", "apiKey": "vpjYY4fsbIPjG01o", "appId": "qEXP3t0H5J41b0yM", "federationMetadataUrl": "FNERSubin83zHNjC", "isActive": true, "redirectUri": "SBm3OYYLPkBp3UZR", "secret": "48olG0iosApSTpPD", "ssoUrl": "BmPmPHZyYiDQ3554"}'
"""

result, error = update_sso_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
