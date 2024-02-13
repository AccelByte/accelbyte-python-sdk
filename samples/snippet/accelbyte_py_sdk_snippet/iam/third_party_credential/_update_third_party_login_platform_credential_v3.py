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

Example: '{"ACSURL": "SnP5srID2V8mXxs9", "AWSCognitoRegion": "ihvUj6fMYSkZcEBA", "AWSCognitoUserPool": "zLc0edU4lcT9nsO7", "AllowedClients": ["TbJQRfrEHW3yuk9w", "wJrxXJwwkY71TEXr", "OoEJgMAPv5SzvEpn"], "AppId": "RdoWr3ZWgX688vqd", "AuthorizationEndpoint": "i1WFqYzFxdfZTj76", "ClientId": "603CemGn7vwBlLvb", "Environment": "kdDhHZMJi46FykeH", "FederationMetadataURL": "f3CnoCKsv4wrBeMd", "GenericOauthFlow": false, "IsActive": true, "Issuer": "sFndWdNEevZl1zYi", "JWKSEndpoint": "YoSshovY8xa6yhMj", "KeyID": "ARWW8beX4HJ0oAdz", "NetflixCertificates": {"encryptedPrivateKey": "PkBqDPx9jaYCS7m6", "encryptedPrivateKeyName": "cjyifcoSnHKteleP", "publicCertificate": "ClfYGjdV20wKqCuf", "publicCertificateName": "U6ditiC3FbT7JYwW", "rootCertificate": "jpbjkJcvrQNMejrH", "rootCertificateName": "ftgWD9BysSY7uusQ"}, "OrganizationId": "S7X5yJ9EdkygBTa1", "PlatformName": "XdDXKFmqcS8ZoqXq", "RedirectUri": "25dzmuOIk10DCuYB", "RegisteredDomains": [{"affectedClientIDs": ["i2MYHGagyCd9t6d6", "F2c3WmWnK7uuYkGu", "022LuP0KmwN8HDYT"], "domain": "fq3RlqImZDgmKGvu", "namespaces": ["2MFfRyNBKWVoUitt", "bezrXrOBj6IQ8Vlg", "SsiB74zdjHpgVBxm"], "roleId": "jG9ZmWDGISqHGhZT"}, {"affectedClientIDs": ["ZR851QYzasGm9g9X", "Np3IfgHi3QgCg0zg", "xhfFJ2LaVg61bYD5"], "domain": "oSthOtEvnl8EFIDH", "namespaces": ["unIvRhVq5j4pH7gL", "UcaMCy5l0rZ9Idrn", "w9bfHuYZgDSz0DOe"], "roleId": "hC70PNyaiTBXbCI3"}, {"affectedClientIDs": ["Si4pe9iL5T3aN28x", "h1nnhZxqTIDAlxu4", "j529x36TcBojaQsB"], "domain": "rssPEh2WL9oftYmp", "namespaces": ["CHyyUNSiD8TVoSDz", "q9Qtfz5wPkl5kLqs", "nkuB4WrFkG54QClc"], "roleId": "WEFS0IVpVENB6qyM"}], "Secret": "Jup36RaJy9wKNK14", "TeamID": "YcZQ9u2BBPVkxaNJ", "TokenAuthenticationType": "bmaFO4Cl1l0MdcPA", "TokenClaimsMapping": {"3O9gthM5YIonmZAA": "1jfJRe4Nfw6jihZj", "wSNdlBgbevJlx6sN": "zIAjIa9lQByZWIZk", "klxy7NL0CfEjmMZ4": "JqgEO1662UjlkNPt"}, "TokenEndpoint": "hytAyvaKExHp4MiP", "UserInfoEndpoint": "4KAgvWrfyqsMH4WJ", "UserInfoHTTPMethod": "qpO6ULt1Uca5RLL1", "scopes": ["MMEQ0jJtWujo8j53", "qavjB1aevxCJRN3a", "FWD8iJz8uUAoim0A"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
