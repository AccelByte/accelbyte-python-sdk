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

Example: '{"ACSURL": "AgzwxuyDlgTsFzEd", "AWSCognitoRegion": "iqlblPp0B8ehrLnU", "AWSCognitoUserPool": "1lV5f1dtPUenh9My", "AllowedClients": ["OCdzkkZ5XyyFKQPr", "MOeJG633WKaFZjtR", "OgbBKMTS05RpcARM"], "AppId": "bp5p028SLygE5vaS", "AuthorizationEndpoint": "JECIPNSM6w8cOeae", "ClientId": "pBA7kF3zHH8MnQWc", "Environment": "vRB6k4zcm8g8K9Ko", "FederationMetadataURL": "NDDxsCdZ5YqTELPJ", "GenericOauthFlow": false, "IsActive": false, "Issuer": "nx1fjW3Wbi2EhCNp", "JWKSEndpoint": "OMoDs5lAqtMoMaZa", "KeyID": "Bqp82OmcfeNwNMVv", "NetflixCertificates": {"encryptedPrivateKey": "vUVu5wZZzRjQdYTE", "encryptedPrivateKeyName": "oMJbndgBdDlDuyN3", "publicCertificate": "u2NlBsgx87s7VUur", "publicCertificateName": "DlFTLz2X4nKfSaY0", "rootCertificate": "MFrFXifCDC2hk0mM", "rootCertificateName": "cXUuDqobIwniJchb"}, "OrganizationId": "DTBf4vgY06XA62mB", "PlatformName": "dvO1tjWDSVoYzQr2", "RedirectUri": "S9Q4QLcqe3StrXTX", "RegisteredDomains": [{"affectedClientIDs": ["vmmXJ3b9hCuYsBqa", "tgUJXVSxcnveRrst", "zPK16wvPtz2sqPYr"], "domain": "xaNH4220ucYQBE4J", "namespaces": ["EuylOgwFaQMD6z0O", "mFzxLkDqiDcrx5p9", "HFDPq06j86CAfvyb"], "roleId": "Zc4K3eeYf57EB20x"}, {"affectedClientIDs": ["ABOlQU3FwBDHVVtP", "t9ceC1LbKorYqVtq", "10nc7O19H97AsRaJ"], "domain": "WhzrOoSPHPPUQfnn", "namespaces": ["U2A1o7v7brdnlt0d", "pr1YgKLBplHfYCom", "2IAdEprGbTbC0YD8"], "roleId": "UbtQH1JRWj4qV5iO"}, {"affectedClientIDs": ["GpE6cJG3H5dPt7XJ", "tGGprH3PKK1JxDgI", "5EjbA3LER7B3EU9y"], "domain": "CwRnaxhh1A5xu87i", "namespaces": ["nR0ZR4IAutnHHnOe", "2Pz2xgQRfANjjZZh", "XlGhVQ3g8Pls0uIw"], "roleId": "edZkz6T6gTeihDjV"}], "Secret": "bMnuNBGq0rqaEDUn", "TeamID": "N2e63VegfWlXjMqI", "TokenAuthenticationType": "QU99bUo7RGnbhuTl", "TokenClaimsMapping": {"0MWd0RcDfdWmQZ1l": "qE0daWe0mC5SNxs9", "DTHLclhFUUI0XDau": "wCwoxRBRXTT95Y2g", "pn3zr7fYjFxjlFCh": "Xu9dg4YShTb9OAL1"}, "TokenEndpoint": "o6q3wZAf15bMrI2e", "UserInfoEndpoint": "g4CCTzLScgPULd6l", "UserInfoHTTPMethod": "yLT5lOSz2WgdLbZV", "scopes": ["0tFKgdTPGpml7ILt", "arM3PKUMco4UirmF", "YuqraupKDnYTEvx8"]}'
"""

result, error = add_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
