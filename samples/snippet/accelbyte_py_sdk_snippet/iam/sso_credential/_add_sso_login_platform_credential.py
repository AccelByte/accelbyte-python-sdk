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

Example: '{"acsUrl": "G8Wm4xuW2DIdoRmw", "apiKey": "Rx3wFrOR27zQBMQ3", "appId": "YntuHQkWycY8aky8", "federationMetadataUrl": "jHXEToWVpM0XUDoY", "isActive": true, "redirectUri": "5Fo3qOpCl1EJCSKe", "secret": "SnROR0eGunyyDkpL", "ssoUrl": "3QBoVLgy6eCGOnni"}'
"""

result, error = add_sso_login_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
