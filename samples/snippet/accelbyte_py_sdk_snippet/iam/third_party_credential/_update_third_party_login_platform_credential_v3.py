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

Example: '{"ACSURL": "yeVpHTfGB1xQiLot", "AWSCognitoRegion": "fYT0b0AqtVebfhZd", "AWSCognitoUserPool": "WXG7O1o1IpQSu2zL", "AllowedClients": ["Lw5voqy7pGeem5eM", "Q1wCGm00NwtdlTWa", "osxlRttdSGAzZjVq"], "AppId": "3iGVdoDCtHR88bkG", "AuthorizationEndpoint": "b2M5kZZE93s1TLoX", "ClientId": "GLarSJ2Sg4id4Mmz", "Environment": "G7URPZEfxSXWTJ1U", "FederationMetadataURL": "iDblG8H6PpJsmSTc", "GenericOauthFlow": true, "IsActive": false, "Issuer": "9uY2ofNm2mVe7g8R", "JWKSEndpoint": "6p1JuH5b4QXtmGLY", "KeyID": "mTBXp5g0xoiIATys", "NetflixCertificates": {"encryptedPrivateKey": "mh0Z4VO9q7LwsKn7", "encryptedPrivateKeyName": "lL5EU4PnOl8z84UB", "publicCertificate": "x8d8dKb4jTV84RWk", "publicCertificateName": "cTqrWKh4W9ORKKaW", "rootCertificate": "hEZEYOicTOpKa3uH", "rootCertificateName": "qwr0hGxhTnXy7BO6"}, "OrganizationId": "XpV7IeTquh7MKcZk", "PlatformName": "QCAqHuQtUrXFseP5", "RedirectUri": "11g0KcwSkxvgHKF8", "RegisteredDomains": [{"affectedClientIDs": ["7Gd2FHa5NG1KxZB4", "Yu3UxfO671XzNRTq", "jvfFc6ginNhQM3FQ"], "domain": "xSLc4vgNxCvlwAO9", "namespaces": ["zcuWQArGL13iV8Ls", "tqoFBMzaiJ43lXi9", "ss2w4Rs1kWUaWbF7"], "roleId": "di2AplQmApkCc9rS"}, {"affectedClientIDs": ["ryFdQLSszsoCcm0H", "mlv8f7aCpkIDwA1E", "DfBtTsy0D3bMDzKn"], "domain": "XwN3OPFmsSaoK3rm", "namespaces": ["ULm8lv1oSkbxJ7bI", "bnrDrUyy82j5QvO9", "3LiYuxDbZXXtUwEn"], "roleId": "lvCFDt1mMDzH5Ttu"}, {"affectedClientIDs": ["ZZnHX3toJv0t6luK", "CJNqsgTT0zGpxTA5", "5FiniljsILuvMtgy"], "domain": "vKJJz7i37DXSrY1V", "namespaces": ["9TesZjJo03v3Mivu", "oas6fzcacXZoCG8a", "TFVTb0qWK7uTNMd4"], "roleId": "2aQaotBbtzABl3QM"}], "Secret": "WWFhaVExkeMdNIGF", "TeamID": "VyS75yQBPJUa5bi6", "TokenAuthenticationType": "3PCcryrfhgnJuP9S", "TokenClaimsMapping": {"LuPH4TxWR5NEpRC8": "ADHmrHglaFfrsFwS", "1imBaIJ0XdSYzxIR": "B9KEoypTZOr4KiWc", "T5Z84nMxMgn4RtAT": "sV87S0XGhVkEv4oE"}, "TokenEndpoint": "PKPhqXlOc0515Via", "UserInfoEndpoint": "MVWmArjFims91PSG", "UserInfoHTTPMethod": "YfiFHk5Myg5tFEI8", "scopes": ["B23H08tGfwsJhb8N", "lDPXO3uNfhcEh3dP", "GNJu4njm4FDbnmmD"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
