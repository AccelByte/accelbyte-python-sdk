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

Example: '{"acsUrl": "NmOhW5lWHqzgG0WI", "apiKey": "BRVADMZVKjdOgRs8", "appId": "WiIAODFa5SX7QziH", "federationMetadataUrl": "7v6pt8qIcsXhf6wx", "isActive": false, "redirectUri": "yjFHyhZXZDbTlmXs", "secret": "u7zPjXuqDniiLIHN", "ssoUrl": "PcxwRJUubL7PJ03q"}'
"""

result, error = update_sso_platform_credential(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
