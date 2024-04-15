import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_client
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

Example: '{"ClientId": "ms2SRN7QdQsuKefG", "ClientName": "hAxTPE7IA22QDgoG", "ClientPermissions": [{"Action": 45, "Resource": "SFKeabrZPh98lCt3", "SchedAction": 25, "SchedCron": "MPhGfnKleo6bzGCV", "SchedRange": ["H8RvwgJqQuYeqXEe", "sLrBzU4AF8yXAgLQ", "kikk8PTavbyw26BG"]}, {"Action": 86, "Resource": "zTaXadJKU9lUyzxc", "SchedAction": 98, "SchedCron": "6lggFGgU5ev6Cyhn", "SchedRange": ["jw4HJiHQ2EUmpdEt", "vsW4yKLVEjGHESsS", "wuvCDzFKW79QNM8U"]}, {"Action": 99, "Resource": "wyXbsd0knZfnRJZO", "SchedAction": 58, "SchedCron": "fcSUkSoTIvwqLzyI", "SchedRange": ["p40rNpzBbW1Mo2wD", "yHkZLhoZUSjka8YT", "xOrI5KJyWsZ4zlbx"]}], "Namespace": "J4l8emETMaYBqAMY", "RedirectUri": "ZYFcpUgyVfFtNUSN", "Secret": "Y82O8as3LxNu5jvn", "TwoFactorEnabled": true}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
