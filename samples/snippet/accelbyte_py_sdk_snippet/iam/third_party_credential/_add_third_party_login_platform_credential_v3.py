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

Example: '{"ACSURL": "VNOU1d1WmOBwHPUv", "AWSCognitoRegion": "S1660pbKvWVKuM2t", "AWSCognitoUserPool": "gN2eriqzUmXrFzDy", "AllowedClients": ["Rh8ikAJfxYVyUeZm", "vXirVdtHqqk0Whcy", "cY6cdbdDI1ClZwrs"], "AppId": "WpDO0GzfHT5ZaKK5", "AuthorizationEndpoint": "1l7i1OzrWNLkiuzO", "ClientId": "WYqd4SUcQOWCE8Nn", "Environment": "7V6yg3FGoJH4Ma6R", "FederationMetadataURL": "p20jmFGRnLucIgHe", "GenericOauthFlow": false, "IsActive": true, "Issuer": "0euUgmOfVPMGosg2", "JWKSEndpoint": "oNOzOpoFv8teH3Wu", "KeyID": "I6bpBKd8tgHDm3m5", "NetflixCertificates": {"encryptedPrivateKey": "3KTmMB3lftKBJi6f", "encryptedPrivateKeyName": "h8tJVgbva1PUkbVl", "publicCertificate": "PF142flXOWNNSyOS", "publicCertificateName": "mFZkELL6ooNMjvmP", "rootCertificate": "dQyyeKsQzDFLUVmZ", "rootCertificateName": "NVlziAKG4li3pDoJ"}, "OrganizationId": "pmsKVut9FbyvFhr3", "PlatformName": "PPqxVroHd9rzTYJc", "RedirectUri": "NrgU4NE16oQblsqt", "RegisteredDomains": [{"affectedClientIDs": ["nHwoM58THsuVCfpD", "W5C3RUYEg44lGs1K", "ZZpGa7U0wffpvEIR"], "domain": "6k2vlrB3i8wiaocz", "namespaces": ["3g0QvXDStgZ1MlAf", "MFipnmMrUH8zG7mw", "jMUtxhdyN3byX01W"], "roleId": "8OVBMK2lhBt0ZOrE"}, {"affectedClientIDs": ["wmEoknVUUNXwznTE", "nYrQrW2KaVQqPSBJ", "zF1FSNCp5iJfjts9"], "domain": "R25LKgTrpUObzNZz", "namespaces": ["0Q3BVqJjCiRDfIag", "yDInojDjARo0AQ3t", "9jmuV62kmljj8s10"], "roleId": "1hS7lbDZlUe31IdP"}, {"affectedClientIDs": ["SGuFhmdZ82YqjTsl", "f7WbaGz3PgmNSgMo", "ox7WU10NeAPSIEiN"], "domain": "Qs8AJGY0Nvi5BlFt", "namespaces": ["dpefbhhwhxWXqEHt", "vSj93GHdKZB2lXFA", "fI0WxYaCFINSO9RL"], "roleId": "c2jDrqlp03nIcbOZ"}], "Secret": "FPguZVU4DW2Z0mZK", "TeamID": "lUrFCR8u7us3AgK5", "TokenAuthenticationType": "1f3w8qTgVRhBAhHD", "TokenClaimsMapping": {"ZlVfSExMmA50ePAn": "fjn67551SRYL88ra", "RG62zxE30di9zMW7": "SZ94uWZplnR8S7qH", "idbG99rXnRNR4jDY": "pvcw9c0vH07lOQqy"}, "TokenEndpoint": "7M5niIWfKCyUUOG4", "UserInfoEndpoint": "cvIstFqOh9JeuuPl", "UserInfoHTTPMethod": "Eat7w2RRTBT0TDOg", "scopes": ["azFkBjF5XcSATy9n", "rYge4byGChqfThxi", "oVswGF6R1rJNXnGG"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
