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

Example: '{"ACSURL": "djBofjItpWr9utwF", "AWSCognitoRegion": "OYrMFXNbamDvlmGl", "AWSCognitoUserPool": "tx81Py0qiRuqnSGq", "AllowedClients": ["SbI8QJbBwaZbkMDW", "LpN6XwmJN37UrVDe", "19pX28FFy6nJBICP"], "AppId": "5rqg663yVIFmGG5W", "AuthorizationEndpoint": "v8FaASfbYmCxK2Hb", "ClientId": "QXz9i0aJWrk0swaP", "Environment": "EsIKRr1ZnjhAEANs", "FederationMetadataURL": "6L6RbavvWf4Wa17i", "GenericOauthFlow": false, "IsActive": true, "Issuer": "lvuzAxwkkejCncNS", "JWKSEndpoint": "PmKotxt1yX9xx3Bl", "KeyID": "ce1kUqgJw8XNuuPU", "NetflixCertificates": {"encryptedPrivateKey": "YvKK5WHsP89blGSK", "encryptedPrivateKeyName": "hFuiZED4YCthx497", "publicCertificate": "XaubtMSsBifSLBph", "publicCertificateName": "lPJh4g58JfAvJI5v", "rootCertificate": "puTTEgp3Q4loc6oq", "rootCertificateName": "bPsP8xXAk6IxsM0H"}, "OrganizationId": "9HmkysxWxLG56bMl", "PlatformName": "b2IGyjbTRY4HoPOA", "RedirectUri": "686KvCoAytDSCZeJ", "RegisteredDomains": [{"affectedClientIDs": ["RfF9D1r6az2fN4sQ", "n23QQSSrzNJhFkb1", "iniZ3gKyJjrjVD8B"], "domain": "wQ1ByYiJKejPDI5t", "namespaces": ["6YNLn4X3LAJ6v5C9", "sJB4XNQ5ac8JbIlD", "hQg0Y1aQ4UsLFFNB"], "roleId": "kjTCSS9HuQtIXAsP"}, {"affectedClientIDs": ["3gDiwyTHmgTIj5lh", "CLptYAiQ6UaX1Tfr", "chWFD4cZlWel9tCu"], "domain": "Kej2iHTpz3e7PWFR", "namespaces": ["wmCbZOiRBPhRfPH6", "RvKiq7uRTTr1D7ss", "2gXutU8yfC7JmIu4"], "roleId": "tuke3i1IJpXWvJVB"}, {"affectedClientIDs": ["VKWQPHxeLRT5nZ8W", "Uld3eG9ul15PiCDF", "565YYXAPQj5hE9SK"], "domain": "mV7UWWWp72k3SCTZ", "namespaces": ["AueAuwYoQhRZziWI", "hHhQ2BiqWQsCHTwO", "vYn5M2LPLWMWVqns"], "roleId": "COtfhuLzDDFTSnmD"}], "Secret": "xCmEWo7KYX5bFpJY", "TeamID": "4J1Hm7J1cvKJr0mU", "TokenAuthenticationType": "3y1XwVt4u2cv0c6M", "TokenClaimsMapping": {"df4mYyXxn7Awfths": "0VQnIQHxJhnHSL3P", "7zUR5trMRyqc33Sv": "ilewQccIs9KPmxyj", "gdx98mCZjgi4LX9N": "CzP8ajKFtDq6OOFo"}, "TokenEndpoint": "7QnfT0OGCHlKdPw2", "UserInfoEndpoint": "2JBSKfNFoKf6z8sS", "UserInfoHTTPMethod": "taMb5TFS7Ehw1iZ0", "scopes": ["0aN6csqWaVHNvx2K", "MUA3uXA4Sj7BWL0a", "ssq5O2dchzRhWl6v"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
