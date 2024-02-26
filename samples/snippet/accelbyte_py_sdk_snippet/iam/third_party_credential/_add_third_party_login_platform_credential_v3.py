import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_third_party_login_platform_credential_v3
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

Example: '{"ACSURL": "C3Fw41Zv8TAtC0Gy", "AWSCognitoRegion": "wnEUsj5OaPMxmcQ3", "AWSCognitoUserPool": "rB84LnbrWZe9hZdI", "AllowedClients": ["TzvDp8H9W1LR6BqN", "APLEkibDJS8cyjfM", "vEYQaIwLkVHEq2az"], "AppId": "Y3VPMrHFeZwjyhnd", "AuthorizationEndpoint": "CLeTVY3dVZX2c1dN", "ClientId": "KWM5bRbjYzcv6KIT", "Environment": "8TI05JGknfQbF58Y", "FederationMetadataURL": "nWOfVZbZfSMqRa9I", "GenericOauthFlow": false, "IsActive": false, "Issuer": "lgk90j27EyYy61V3", "JWKSEndpoint": "dbwKELETmGukHycs", "KeyID": "Eu2UgFRAQoJPL0l8", "NetflixCertificates": {"encryptedPrivateKey": "Jf7mLGBS1RWZxTKG", "encryptedPrivateKeyName": "ry4kENHKCpHigveB", "publicCertificate": "VY75DswPPQH37QKN", "publicCertificateName": "nkpbXWjomunjeZYi", "rootCertificate": "f22XtytzBOOIKKao", "rootCertificateName": "99HkzzHuiTzVMyZX"}, "OrganizationId": "huk6hCKNtxktC9MQ", "PlatformName": "7YieCmDNkLMGOKsg", "RedirectUri": "Jn3PgEzPFbgrLfQV", "RegisteredDomains": [{"affectedClientIDs": ["6I4dWDLZFtTYkau1", "LDiOeW1RR2RbISD1", "hpFA4xuURCdfHR4g"], "domain": "M0DGSxuuTF8tRmPq", "namespaces": ["cOEDO29IMXin5HSU", "oB3QBPb5MtrMVSif", "powYYAoq3R6zU7Q9"], "roleId": "zL4EeHhVGGepvN9B"}, {"affectedClientIDs": ["xSBaWXwRn34CrtFI", "jHih4APTi9fhWp6b", "RF76BR7XOs4TdLiF"], "domain": "pmRKqtstOxFU2TG9", "namespaces": ["9tFIhVUk9mpLwTyu", "6qZjrRrz63xRXehO", "WIhdWfL8stQNvhJ5"], "roleId": "j7ZmYLzgfHu3XVWW"}, {"affectedClientIDs": ["dvSjHXSPO9JVf1cr", "L8yfTraDWX6QRjOD", "3cNmhkdKiP0y9GDP"], "domain": "Uv8yOdlZXS8HK0wa", "namespaces": ["kUurakoiZ1Vns4Jy", "ihkrTHR1WAGgcKE0", "2L4991ZqQd1QR8Mm"], "roleId": "hfYPKh1qmu4Ba1Nv"}], "Secret": "gb4XKbd2QrPj3M0F", "TeamID": "tAiihm5fQiqxOt7U", "TokenAuthenticationType": "jxYDHgWWecIAqNkY", "TokenClaimsMapping": {"2s9uRGnvDrpylmf4": "JTVNpQJvD1HQ9TY4", "5KWgHzV6Vj2bRrLE": "dqWHVa3wm0bOkH8f", "JhMIVZx8WCUhJ7Oq": "pc3nMtjtGxirZqyr"}, "TokenEndpoint": "oBylqQ9RMCPFpLT8", "UserInfoEndpoint": "TwsN00fkC7SuoQLZ", "UserInfoHTTPMethod": "xVot14GTf8E3R3j3", "scopes": ["99WtlEHr2VlqcLZe", "bNdQYEOpuyvwWYCI", "hIQ5lWO2JI8ZJmOo"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
