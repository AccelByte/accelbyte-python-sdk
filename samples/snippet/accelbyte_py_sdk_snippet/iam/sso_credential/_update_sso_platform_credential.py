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

Example: '{"acsUrl": "rLnUa5DRxBgJLblM", "apiKey": "mVqX9CT3070FSujP", "appId": "mMLQ2Xm2q4lLBV3w", "federationMetadataUrl": "hDeBLfrjUyD00XNG", "isActive": false, "redirectUri": "NPvHItOdRIWsUFKh", "secret": "qJxzsjhWXQWS97d5", "ssoUrl": "ZvB4WMFmFTlL6c0G"}'
"""

result, error = update_sso_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
