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

Example: '{"ClientId": "Zi4YPwp4ZGrpLSop", "ClientName": "1VvMZS4RNqCbaUgh", "ClientPermissions": [{"Action": 58, "Resource": "1r8jOi8lfXBH1xgG", "SchedAction": 81, "SchedCron": "je6qDaVTYH8iCkth", "SchedRange": ["RgcQGWcXw0rOMAMQ", "xCnQOtmyH7CcomJN", "CfI59IYIBgWW1ZDY"]}, {"Action": 85, "Resource": "S7HoGFcT1qLsvjnF", "SchedAction": 18, "SchedCron": "Lo75S9GpRpAPqxTj", "SchedRange": ["MXjGq4EWxK1Hb2zU", "yaYlR2sDnRk1YRdM", "FQC2YBlfDl5576cJ"]}, {"Action": 47, "Resource": "ML57fSKHG8orDbKo", "SchedAction": 26, "SchedCron": "3g0wiBATbyE3LO5c", "SchedRange": ["Ksn1PH7cW7PO4B9O", "a8YeQDUgY3fufox4", "20JlwM093t8r1fHO"]}], "Namespace": "bmbFUYiov4q5xprr", "RedirectUri": "njRCqHUz5BMSJe6p", "Secret": "H3D1eyTK726bB5TS", "TwoFactorEnabled": false}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
