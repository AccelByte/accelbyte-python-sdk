import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_third_party_login_platform_credential_v3
from accelbyte_py_sdk.api.iam.models import (
    ModelThirdPartyLoginPlatformCredentialRequest,
)
from accelbyte_py_sdk.api.iam.models import (
    ModelThirdPartyLoginPlatformCredentialResponse,
)
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelThirdPartyLoginPlatformCredentialRequest
acsurl: str
aws_cognito_region: str
aws_cognito_user_pool: str
allowed_clients: List[str]
app_id: str
authorization_endpoint: str
client_id: str
environment: str
federation_metadata_url: str
generic_oauth_flow: bool
is_active: bool
issuer: str
jwks_endpoint: str
key_id: str
netflix_certificates: AccountcommonNetflixCertificates
Definition: AccountcommonNetflixCertificates
    encrypted_private_key: str
    encrypted_private_key_name: str
    public_certificate: str
    public_certificate_name: str
    root_certificate: str
    root_certificate_name: str
organization_id: str
platform_name: str
redirect_uri: str
registered_domains: List[AccountcommonRegisteredDomain]
Definition: List[AccountcommonRegisteredDomain]
    affected_client_i_ds: List[str]
    domain: str
    namespaces: List[str]
    role_id: str
secret: str
team_id: str
token_authentication_type: str
token_claims_mapping: Dict[str, str]
token_endpoint: str
user_info_endpoint: str
user_info_http_method: str
scopes: List[str]

Example: '{"ACSURL": "YnZixA8OpDDAHVe7", "AWSCognitoRegion": "Ei1BPM2qX1gd7lKB", "AWSCognitoUserPool": "7MiTtDCqjwvP3gPA", "AllowedClients": ["ytHKcgM5WT5uH4HP", "JaQmuL3tA07nFoA0", "BhwyufVnSN3ubOQD"], "AppId": "vPWXPDjqX2oQUzw4", "AuthorizationEndpoint": "gFRcAbJ2TKbYkMXo", "ClientId": "HaWsxlzttMWbgzl6", "Environment": "2RIqbEWSB8casHz8", "FederationMetadataURL": "ggKuxv6Sc2jBmqUf", "GenericOauthFlow": false, "IsActive": false, "Issuer": "733dgvKgDdvSmQZh", "JWKSEndpoint": "q88gN4XLNjCJzjle", "KeyID": "XY9wJBA9HhtXw4QL", "NetflixCertificates": {"encryptedPrivateKey": "yO84bq8f4sxXSENt", "encryptedPrivateKeyName": "EryQpKjzdjFWwCA3", "publicCertificate": "O2CByz4n4uP3qMo5", "publicCertificateName": "0NI73VOSmKRwFPld", "rootCertificate": "FghSMriyXFhlX9mx", "rootCertificateName": "tasKql1HWM5jggaS"}, "OrganizationId": "icz4fb0OF1RhcWn0", "PlatformName": "8af7xEvdR26xggId", "RedirectUri": "tbm9BaEdEkXyYmLE", "RegisteredDomains": [{"affectedClientIDs": ["tIlydfSEZh4meKEd", "0IbzU1BmTW9rmhrQ", "Grh8syY8LDcwLtsn"], "domain": "lMk8aa1Bux7LZ1M5", "namespaces": ["0W2OzMwgibFrT3rL", "1s2VqTBRcc3AIYJI", "eum8j57NCZ8ZjKBb"], "roleId": "bqNEAZ0O3dLxpT6X"}, {"affectedClientIDs": ["7hG5eHJGGVBHOc56", "r59oWbCGJHQs6tI4", "9nQQirz6Xjgi4jPq"], "domain": "fGi6W0hkeHjKnshH", "namespaces": ["SlwyeinccEbyl2nw", "FXeicN7F2HsphfVg", "rHsoAMhYSSH5mUuq"], "roleId": "HNFASXAnzdRQi8sj"}, {"affectedClientIDs": ["PaKzcUzOwlo1ePeZ", "xyNbo778KBgYJPfK", "ktUII3beNKxVTZIY"], "domain": "XKZNwmbhMDVDAYg3", "namespaces": ["v2ewcOVBo682q4C5", "de2SScBDnA4Q6fbo", "wvlI3MTsdeXgUAlG"], "roleId": "YS5l34rQ1SScNn7P"}], "Secret": "cT4O4ZQtPgCkSZu4", "TeamID": "aJMbfDr3KARvLasv", "TokenAuthenticationType": "irb115RBoxRjOuvi", "TokenClaimsMapping": {"fByn60IZPTI0uxe3": "Vb6oPejBF236puFU", "bSRNRhL2eUgL82CP": "8JJOwPjYHWa9mPyR", "3aue0zNnpNC61q73": "zENiH15rNV9XWxjv"}, "TokenEndpoint": "aVAAFIr0GK6DoLcy", "UserInfoEndpoint": "dGFCJdlOtzu1jtg6", "UserInfoHTTPMethod": "OcWH0JKVqHk7QQmz", "scopes": ["lBpVUPgQe91m27i4", "k4bkZivtHYluer5v", "8EeUiYGdWhOJr1EX"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
