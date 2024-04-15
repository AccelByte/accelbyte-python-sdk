import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_client_by_namespace
from accelbyte_py_sdk.api.iam.models import ClientmodelClientCreateRequest
from accelbyte_py_sdk.api.iam.models import ClientmodelClientCreationResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientCreateRequest
client_id: str
client_name: str
client_permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
namespace: str
redirect_uri: str
secret: str
two_factor_enabled: bool

Example: '{"ClientId": "tTGYeunN7G4dpOed", "ClientName": "gyhsVmEQiE3Lx1Dd", "ClientPermissions": [{"Action": 85, "Resource": "z5GkcGLrfhosf1Uy", "SchedAction": 31, "SchedCron": "GOSfrYFBTpkgSSMz", "SchedRange": ["ECfWNEty32rzWACP", "vp0fDU9j2QAMm7Uq", "wQLOjrAFyeWXudG9"]}, {"Action": 20, "Resource": "9aqFIjLIGWx8RzWJ", "SchedAction": 33, "SchedCron": "1gHIZ9lfzcyrCulw", "SchedRange": ["Sp9iTiDw4GYw1t1C", "wR6gp2j3Fj8SDMKJ", "NJJa93wOFLhTIXvp"]}, {"Action": 52, "Resource": "8AfCPIFFa7bJ2g10", "SchedAction": 46, "SchedCron": "EowKQs68GQyHRahP", "SchedRange": ["DtudcOcqlree56pO", "PME0gJw1Igj2UR5x", "HWFrDVIHPJNkfYuJ"]}], "Namespace": "tnfeldWCjL6vgDc5", "RedirectUri": "Sl1S48pckaLek43t", "Secret": "F5SxknGYTXqvd0YI", "TwoFactorEnabled": false}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
