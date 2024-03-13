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

Example: '{"ACSURL": "ijNUBRP1eaXdDR2R", "AWSCognitoRegion": "om5TTVcmERH91Hxo", "AWSCognitoUserPool": "dWObETQIzt4cQsRe", "AllowedClients": ["H6GrCs4Cw1RSM6VR", "OctJPHeFP2PIjBUe", "gb4zweyu5MhxEyOh"], "AppId": "8uxFEUudSWb4twjP", "AuthorizationEndpoint": "SOvNMxWgALScNKiT", "ClientId": "kQ9muj9fQbPOSkku", "Environment": "aPxH6WBNv7efCUm1", "FederationMetadataURL": "sRXmW8F4MijlpRnV", "GenericOauthFlow": true, "IsActive": false, "Issuer": "EVP9ZjlzSV4zVvjp", "JWKSEndpoint": "81ovbMKXLFhbYxey", "KeyID": "DeQz0indXFgQ1BET", "NetflixCertificates": {"encryptedPrivateKey": "XZZv9vbU40URL8o7", "encryptedPrivateKeyName": "lrGB0CEVHy9UMFxu", "publicCertificate": "tuy4xvnzpeWR3UzX", "publicCertificateName": "s9gd458L003Ao4Rg", "rootCertificate": "6woMkvGfTMKs4O6q", "rootCertificateName": "IGLVJg50p3oJPZrZ"}, "OrganizationId": "MArOHc4W7XkoMliR", "PlatformName": "hMCUoLsyQhnhGcFg", "RedirectUri": "W0ACj5L4mSsX2Kwh", "RegisteredDomains": [{"affectedClientIDs": ["5MZ6glgsaZNtRj8v", "wt95tvstWpqdiX2r", "DYbO7IPIAT7ammOu"], "domain": "fN7920VIiNUwOSkH", "namespaces": ["QAn6dbpNILyiRwxk", "1RdqayV3IInBozFS", "LDUVzwtnJ7vJTSVs"], "roleId": "WG6maTnIvLtJ2YE7"}, {"affectedClientIDs": ["Q7EdNJ00bgX2kHdk", "BH18sbShWf0aIOA6", "jk6bNzfUxxTi6rLP"], "domain": "5sx7XcAQD1EcOEXn", "namespaces": ["EYYwJpmdJGGqj3TT", "RfgKVJJn4r0DCaFv", "jX3NBqVCrROW6PmQ"], "roleId": "IQqRs97oDF1HIxNe"}, {"affectedClientIDs": ["NlCp2muEuS2TwgWZ", "Xwpr5I3Ou3ca1MUU", "iZ1Z215N2Ew3Iglr"], "domain": "RrBcgCA3wmroAmue", "namespaces": ["ebnmrMnq4khYc04m", "N657ntaSOMJmwwn5", "PvKQdBAX2ZTqUvO8"], "roleId": "qHaEOcoCjnYr76wP"}], "Secret": "fboffq2c76Qu708R", "TeamID": "emDgdPHCHIpyu8hU", "TokenAuthenticationType": "ggwR4ot8e04jzmqe", "TokenClaimsMapping": {"n49kJwBmZuL7CFd2": "6oGzu7KrjE7dFjPG", "ovAV916ekwZCkSM9": "WdB1JCs1NsFgeiS4", "jf66nkBn3arazhOs": "y2UsNaNLOgztGQzm"}, "TokenEndpoint": "j2Yrq4yhLPvNaSvp", "UserInfoEndpoint": "nvgu9eS0b8k8QSAS", "UserInfoHTTPMethod": "uv8YSZiKh9f1zt4c", "scopes": ["N5DSBB40J09xdwRU", "dTHQGLkk42sGHWVU", "LlENsesg5UO7M2bs"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
