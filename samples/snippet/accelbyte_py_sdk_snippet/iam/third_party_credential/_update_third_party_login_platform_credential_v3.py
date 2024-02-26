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

Example: '{"ACSURL": "kSXdsdwKPYp8D1eY", "AWSCognitoRegion": "UN9QhnOUJ3a0Nbca", "AWSCognitoUserPool": "VTgz2aVDsyRfpcHj", "AllowedClients": ["iBYCEuukrO74pdq3", "F8r9RTAmz5dwMZa3", "oQt5qQD2a2EuCCJf"], "AppId": "bAgh4W4mFLJUylR6", "AuthorizationEndpoint": "iC8AFnel8GwkeUQg", "ClientId": "0AIziAT3HpHVYwNU", "Environment": "MAIQ6bM7Vvu4Holr", "FederationMetadataURL": "YjoghGuDNlb03q2F", "GenericOauthFlow": true, "IsActive": false, "Issuer": "byz6FmFv0gR6xzTD", "JWKSEndpoint": "dlnQTQpGYbPWWUrM", "KeyID": "w6ZEmg1DQNnivZdK", "NetflixCertificates": {"encryptedPrivateKey": "GlKu1fNHTobqCYuE", "encryptedPrivateKeyName": "bPQHLBrpwcbha6Vt", "publicCertificate": "EFnMGd74hj8clvja", "publicCertificateName": "07vHwUmqWq0NKml9", "rootCertificate": "Rd65NZA4ZNVCfb3v", "rootCertificateName": "c5KrsAUzIFLQyq2k"}, "OrganizationId": "o4LOXOrWOdz0cnGD", "PlatformName": "XTUZNNaOpjq9AOej", "RedirectUri": "bikEQ2ceBitVHGOB", "RegisteredDomains": [{"affectedClientIDs": ["pH6YPNr4GlOpkccE", "xEfOs31asEwODCic", "grY8Tl7luiOqCe2f"], "domain": "p7orEyLIM3Nt1vXY", "namespaces": ["q0UkM0NhJVQoWybu", "9JpMzwJmeyNJ1GHB", "693IPbXjv9U6tafr"], "roleId": "0BXKbjHz7YPJJS2q"}, {"affectedClientIDs": ["o5QUcRZoMzPVSOXE", "U9irhnvSHNojcMd0", "Jg5WhtjhEgwGzfUF"], "domain": "LR6wsjwGpXhUXsJX", "namespaces": ["YLELJLm97tzp9zvJ", "EvTIHz2vW4DepQFy", "DO31NBRwjIeNkChy"], "roleId": "I85zDlFPr8E9ASkB"}, {"affectedClientIDs": ["ZF7tnS2EH4EDeWeK", "4o78WDS2i07UAbmp", "RNQNvY30ldzCMS9i"], "domain": "UInXqLdnzhFlJkhL", "namespaces": ["DPFwE685jCgl5cBV", "XD5TLrBVDhmDYRSn", "avRGfSqDnww68amI"], "roleId": "uEWMV9YFj5XxD0jm"}], "Secret": "aWRvcyfKUMBLUNcJ", "TeamID": "Z3V9IEWxbs4SVxT5", "TokenAuthenticationType": "alLbFKiKZfae23xt", "TokenClaimsMapping": {"N6p4p2MGH6KW3mtB": "gVMfVhq1srobTuR3", "4lG4LAuPwuA0T2we": "2yX5MyRUW5GXdc8B", "3BoYujwzXhO9jp6U": "4zCyXJoWwZf66uHu"}, "TokenEndpoint": "A8MUgMvZj4Xv6bLh", "UserInfoEndpoint": "POBDMBFc1zJ7pnC2", "UserInfoHTTPMethod": "GNg2J4zCK8yk8ovb", "scopes": ["R3lKRkqboWLswWdg", "Vpnj1ETuIi4vPKx2", "oewl8I5dA9qNoj2n"]}'
"""

result, error = update_third_party_login_platform_credential_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
