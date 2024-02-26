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

Example: '{"ClientId": "cn2mCtTYecQqfkqy", "ClientName": "v55CK8lOGZ4atEq3", "ClientPermissions": [{"Action": 92, "Resource": "rG4aFN4WtBXhCavK", "SchedAction": 43, "SchedCron": "eCiWu0IJNP9pNP48", "SchedRange": ["buipYEr1bkktU6UU", "vnazgYNyMF0fMxQZ", "HAiPehwAnSPVnPz9"]}, {"Action": 43, "Resource": "sOkaBQ3WHsElbRDU", "SchedAction": 57, "SchedCron": "o973eAJmA6zyleLr", "SchedRange": ["6bECu1PxeZK3sh2k", "tP61oZUmvmEzM6UP", "n0tP2PwpMoPOq3mM"]}, {"Action": 67, "Resource": "kC0Ngdf4xykLmsYz", "SchedAction": 66, "SchedCron": "BKhDHW8V4fVUD1V5", "SchedRange": ["Cugw0bQKAUBcfnme", "Uq0OGgVUQZG8tlHn", "UtzptI7LrAPWIquw"]}], "Namespace": "utvAGmJKOmQNiAo4", "RedirectUri": "a8aQdwz9Q3E7zJBy", "Secret": "dU9NHlS2XpDb1DKX", "TwoFactorEnabled": false}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
