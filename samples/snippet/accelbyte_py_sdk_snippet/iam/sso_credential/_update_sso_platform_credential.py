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

Example: '{"acsUrl": "UUsYuC1kDFJOEBIP", "apiKey": "zFbccif923gn6APY", "appId": "uLU1S5BrGlZbd70y", "federationMetadataUrl": "iBmwtBCRoKaYBTge", "isActive": false, "redirectUri": "Ld2FkR8AvFoas8Yb", "secret": "Rm9Jrege3rFqMj4P", "ssoUrl": "FJM1fpc0GTwZbBiL"}'
"""

result, error = update_sso_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
