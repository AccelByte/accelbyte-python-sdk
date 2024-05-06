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

Example: '{"ACSURL": "i5rkjQSymWLXS7sx", "AWSCognitoRegion": "g8GBPCWO89SvKA4Q", "AWSCognitoUserPool": "hLWANip4sRcpZwd7", "AllowedClients": ["efNQxYjUCH0ybxui", "sKftR6AYjE06n2Ga", "yLvGxZGh3N3iUTU3"], "AppId": "fQORlLDqVyAW6QtI", "AuthorizationEndpoint": "2ycvH9lG2KTqOjPl", "ClientId": "LX3DLv2c0PNVdnyC", "Environment": "RUXR6Ca5uGGD24Us", "FederationMetadataURL": "XxgREUGUpK5TDM5H", "GenericOauthFlow": true, "IsActive": true, "Issuer": "G2pgGcilseXGrXr2", "JWKSEndpoint": "l6xsGK3wdKIvxQwT", "KeyID": "BVFPg8hg4eJM0BqC", "NetflixCertificates": {"encryptedPrivateKey": "pRBLAffHktOecG81", "encryptedPrivateKeyName": "GKFJNzoHEeiuX2BA", "publicCertificate": "S8COhi7XSacdH5gZ", "publicCertificateName": "C0M7TSlPgV9MEDb4", "rootCertificate": "r5dgOFylu3VSXazi", "rootCertificateName": "CkVHWFOQxkwVBez9"}, "OrganizationId": "pc9BwFAc0enurO7O", "PlatformName": "DEjPhKXHAd4HciHa", "RedirectUri": "xS6YtZcRnwOS1To3", "RegisteredDomains": [{"affectedClientIDs": ["azk5VXy25Pr5ozfc", "PkQ6IcHE16Vu792z", "skl7UQA7FmFPgcge"], "domain": "one83XTNpXnUXqXv", "namespaces": ["bUtYgEfibfzl4eWD", "ztYZChtc9uTuXhKP", "0K7M7b1ve6fTkR2r"], "roleId": "nSEGEGLzOiH2aLzA"}, {"affectedClientIDs": ["dfJxm3OMxU8xFfGP", "OgUTXU88y1U0mz2u", "DCaatj8jJY4i5COO"], "domain": "5sLKrcUCdv0JKbZP", "namespaces": ["rZii9cZdZBCHt2tu", "6hql3gVJpulZOu8A", "WGR5j4p27ToTyIWf"], "roleId": "pPyMfQskHRWhSQqm"}, {"affectedClientIDs": ["7TCbMGZ0jenvjFN3", "I6skvkuVZ2U3yGu7", "ZGtKiYb8p5GaG8Bp"], "domain": "5YDOH7fnhb4QcIag", "namespaces": ["TCPK20GDDWGl9vyR", "Q4iqOz8850jV0BWO", "VUrR0QwCFFkqLnn3"], "roleId": "GqiK2zYh28dO7KdB"}], "Secret": "tUVuuWUx1qXZd4b3", "TeamID": "sWh5UVZQJJdlt2FM", "TokenAuthenticationType": "731mx5SRpcTPRIQu", "TokenClaimsMapping": {"jTr2jRJCcEaZLYbU": "pYIPgwPKpV6mUW2e", "EPzInG7EYnkdD9Wq": "VbRaeUVu5AuvRKSD", "qA0YbXR0TlnP689s": "5vitUrwWKcxucWOX"}, "TokenEndpoint": "ZGTcF03xfqbe5kyr", "UserInfoEndpoint": "V1oFwPFBJK0EyYUI", "UserInfoHTTPMethod": "ySL8SPJd8PI4YPWP", "scopes": ["lZ4Y0svtSKlBK3q3", "zwQat6wmHTDNluuS", "TtT3K8QRbCdqcxtf"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
