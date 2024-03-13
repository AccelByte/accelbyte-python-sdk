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

Example: '{"ACSURL": "hmqle87WS5mQR3Zr", "AWSCognitoRegion": "6Y5rwlwwRo6m2EhP", "AWSCognitoUserPool": "wSvYSZ4yoPFkZbwd", "AllowedClients": ["Frgoe0lNZ4jFPeT8", "qH0UsOE8BNa8mTTn", "LRECHJtH6pbgL3sJ"], "AppId": "qpaNIY7QEWW3QEX6", "AuthorizationEndpoint": "kKRw4JaXlFihgA3v", "ClientId": "ShE1KCfSiXQ9byif", "Environment": "n3BWCeW0CTqnIgNd", "FederationMetadataURL": "gIQbYMBuWnHUnrXf", "GenericOauthFlow": true, "IsActive": false, "Issuer": "RUauvOiSv6cNQ37s", "JWKSEndpoint": "pgN8VftOAkJ5RoRE", "KeyID": "zPfgL8eeCfzDRcXD", "NetflixCertificates": {"encryptedPrivateKey": "O0l8r2tPS8ESL89q", "encryptedPrivateKeyName": "Dauw6fi3J5A7G0OT", "publicCertificate": "e6PpgW7v2pW33iBg", "publicCertificateName": "QKH1phjKKc15V0ZV", "rootCertificate": "it5ZEYN6UGTcKExv", "rootCertificateName": "RagYDgnjq9tLz4HO"}, "OrganizationId": "FexMTehZKJSOGvxF", "PlatformName": "o6asLJKFTwfG0jCS", "RedirectUri": "rUgBLB2j7hHrfOnh", "RegisteredDomains": [{"affectedClientIDs": ["N0mFACEZq2olwKys", "GhXxyFsmoLY397KO", "9Ga0uYoVv3uq7Aei"], "domain": "oJF1b356LMOTTiIH", "namespaces": ["J4Xl1R9Qd3sIp1pM", "JmSVJDiMbIA2HdEh", "BXFxoaNblfFmR80r"], "roleId": "pPKM1th0nLtSERUN"}, {"affectedClientIDs": ["RfUrJpissxT7lEmO", "R3DWimlWaE69vAah", "rzT2CaL1VAJun7cb"], "domain": "qZjtLRneGlGBmTsn", "namespaces": ["OevKglblR7mogvpt", "Tf4kApqK9K8g9k1q", "2iv9Bboaf4m5Ptrr"], "roleId": "nuZsJEpzwwGw8BSA"}, {"affectedClientIDs": ["D4MQ2VhGnUephTwp", "itSXnVLxvQr6Q3gz", "7JZtCLcqcnrKhx6C"], "domain": "iXQE6Ht4cjNp7mP0", "namespaces": ["Ed4bwkQsXMbFt2xQ", "7BfKmgKwtAiflg5i", "rcFRyVzeg9eHH3BM"], "roleId": "Q27jzMoTiXijpTeW"}], "Secret": "4c9XO4WDYYZwEo9P", "TeamID": "5kUa95gFUI2TvJnO", "TokenAuthenticationType": "pWwen55jJp6dwvEj", "TokenClaimsMapping": {"Izu4AxTYIh9pYaVm": "RC3VbdMEh4zdepax", "qunW9sGRDfkqDrY8": "nrzv55VnFN8Pr3cH", "31KZiw9P1BSeivVg": "k0oZWMBTQyY55q35"}, "TokenEndpoint": "lZ5SiF96HsKq0isD", "UserInfoEndpoint": "t6PaP4BaPLhe4m8e", "UserInfoHTTPMethod": "R8ONIfI4GQgWYVVE", "scopes": ["MRpjwEr5xdDhgUkX", "d1fk4aFT6FO6vqng", "qtTZlHg5z3K8aXFg"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
