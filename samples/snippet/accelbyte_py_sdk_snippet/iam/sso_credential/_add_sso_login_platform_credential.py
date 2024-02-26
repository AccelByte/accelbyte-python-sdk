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

Example: '{"acsUrl": "PejGI7z1uuOkjM8j", "apiKey": "bzMFCKXTLK6dRN4t", "appId": "3BAlpGf7qkjD9VkX", "federationMetadataUrl": "6n8hXAI9xQd4eZsc", "isActive": false, "redirectUri": "9MtF4XEGPhEY91D4", "secret": "PEicKbTKCIocqKrq", "ssoUrl": "45T89dE20DWeYiHI"}'
"""

result, error = add_sso_login_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
