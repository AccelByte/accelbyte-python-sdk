import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateV3Request
from accelbyte_py_sdk.api.iam.models import ClientmodelClientV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientUpdateV3Request
audiences: List[str]
base_uri: str
client_name: str
client_permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
client_platform: str
deletable: bool
description: str
namespace: str
oauth_access_token_expiration: int
oauth_access_token_expiration_time_unit: str
oauth_refresh_token_expiration: int
oauth_refresh_token_expiration_time_unit: str
redirect_uri: str
scopes: List[str]
two_factor_enabled: bool

Example: '{"audiences": ["OadEWpVDPIc5s3Zh", "1DmwNCo8emRwYrKc", "kqbmz2NuWFkK2Kmr"], "baseUri": "0KOFCp4frbANBdY9", "clientName": "nIpL7hGP7lWLiAla", "clientPermissions": [{"action": 76, "resource": "lMnJM0Uuow9C7307", "schedAction": 54, "schedCron": "pmujUXYMsIKdhyAG", "schedRange": ["O9qzhN1pmAdnlWHW", "lOGZZNL38ZJrv1Ls", "7hdkLDM6JspuhPxv"]}, {"action": 40, "resource": "pvpjFYuf0BRpb7Ex", "schedAction": 74, "schedCron": "W2PQS5R1ILbDPfeX", "schedRange": ["GwocijqaYuV56Jlr", "xJDq3JNZBibUFKSO", "zRYSNzzogeqAmGeS"]}, {"action": 36, "resource": "F9NGhk318xOM09T5", "schedAction": 59, "schedCron": "d0QwvshccIMm3Emu", "schedRange": ["jgc2ozp9H0frGd4r", "1PLWlly2LNf2C9T1", "az1QtAt5dzLEt5WH"]}], "clientPlatform": "Z27OWHeWn14vGcuW", "deletable": true, "description": "SmPyCcKT6F7HT0OP", "namespace": "j9SECaepEUVBdg0l", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "KCZE3iwLH1HeCoax", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "gN0BSsG0QGlD9kpg", "redirectUri": "4M7BomFAdEs8f9dQ", "scopes": ["Ub6sirsUThfcHV1n", "YqLPBS8AiR4RTb03", "TJzQjTFpsIUAjD82"], "twoFactorEnabled": false}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
