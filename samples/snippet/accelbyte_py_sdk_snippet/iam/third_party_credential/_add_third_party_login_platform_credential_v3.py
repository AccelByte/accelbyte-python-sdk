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

Example: '{"ACSURL": "f8Q0EiMzBDPjKCyx", "AWSCognitoRegion": "h0iOlZzbTiOQYTmA", "AWSCognitoUserPool": "SVs4LuB46QpIOAw1", "AllowedClients": ["2KTs6vVzBP4mCKpU", "Jk0DPNh9A9YviOhE", "7VNPqpkNsGdxsKgi"], "AppId": "6Uc3DaNnrB6UoYn1", "AuthorizationEndpoint": "2vRpVDRiogJl6OkV", "ClientId": "3kUJuXWGZamfsO3D", "Environment": "FWabIspWJM7yt60a", "FederationMetadataURL": "UYzgbnJGzadGxGUo", "GenericOauthFlow": true, "IsActive": true, "Issuer": "u2JebB3cV5o3ABVy", "JWKSEndpoint": "lEAlPmPh8eqOxWQH", "KeyID": "v12ewENj7mZ4u1gt", "NetflixCertificates": {"encryptedPrivateKey": "Pi8uVIfrDFdA3gQU", "encryptedPrivateKeyName": "DbYOWt5OtFvfjV7g", "publicCertificate": "iBooYCuMaZ8IQwWX", "publicCertificateName": "5Mu64Xcz2ybqGUtj", "rootCertificate": "RMhJhxj8CsqWS2lg", "rootCertificateName": "0lM2et3THfxfQtnY"}, "OrganizationId": "PShGs1F3AhSR8mXu", "PlatformName": "m96MZ2GdcOY6XZ6B", "RedirectUri": "Mtq3aHQ8AjdqHu5Q", "RegisteredDomains": [{"affectedClientIDs": ["B0MZxp9STZ64ZXiw", "uc2jFGLkaVn6ojHH", "KzlsObXUhPo5LQJD"], "domain": "SbdoOj2LByyVMFmX", "namespaces": ["iYyGBwBKxlKOV14n", "nTYE8caOHLn6g5Ds", "KXblIYp1Fojb8LxR"], "roleId": "T3jomseohv9VZq5M"}, {"affectedClientIDs": ["egsDRpcYFb8uDRUZ", "4ECoXEsIhZ4cE8L6", "kXwY12R2AGAhnRw0"], "domain": "NuJypliarrs30eO6", "namespaces": ["SKaE4MbQ1nheqigY", "RbkZ53ipCej0ilKQ", "OI7GukUgADLLu2Ud"], "roleId": "RjONJf1E4ypcnBTV"}, {"affectedClientIDs": ["ag5kl63CceS6jgQG", "CpgQGm1g2Q2qgIf0", "xV4KtE8r6UtD0C0V"], "domain": "BORLbdbfUcciOTu2", "namespaces": ["RW56OgkWCP28N3pT", "so8116fJKO2hZuvC", "q0KPz3YQah7ygH2l"], "roleId": "UYcBvdrBUcLI3yAj"}], "Secret": "eHs6OVDOwuRRdqTg", "TeamID": "jxoB5ty8jFdAz80T", "TokenAuthenticationType": "d9EoRgkVRIyDZvXK", "TokenClaimsMapping": {"OCLxGAuHYuGpjW9E": "i14NOUmKKdiUZvvz", "yaQsDM0nFMF0fOqf": "U6vBn5dJYWT3Q3pL", "hq0KHBvsFVvEEYsc": "LvHLF0vLsyOEenYi"}, "TokenEndpoint": "dZ9xOsw06WwQWtPL", "UserInfoEndpoint": "vsmj66r3t1URqhLY", "UserInfoHTTPMethod": "vX3SuXjkIhRbcijE", "scopes": ["NwTIwgqzitoCxUxA", "bghmjZAgWDYZkuoD", "2QN65wDYhO7u8y7q"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
