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

Example: '{"ClientId": "YSShMsVVCj1TyAkY", "ClientName": "lXi7kRZYeM7Bnu3v", "ClientPermissions": [{"Action": 47, "Resource": "WaYGoIGZSGUKJc9W", "SchedAction": 14, "SchedCron": "WWocl8NawXWg5y4Z", "SchedRange": ["EFGyZG8l2Hh4mamD", "aVCQwIKlU3LxJSva", "YKBmGLibCOT0rTiA"]}, {"Action": 26, "Resource": "uaUrFRPwAmHLtsgc", "SchedAction": 49, "SchedCron": "ZC7LRvgTg8sIo8yB", "SchedRange": ["dq5luBw8VUWnvvJL", "bVMbvak08JEoCw7S", "sqw2BqOy8qwH86GY"]}, {"Action": 85, "Resource": "8ECkLCGlgibgnpUf", "SchedAction": 91, "SchedCron": "iZQO8IIwXQmQDXIO", "SchedRange": ["ZQHJr30gqcHvcpxv", "9wikcGYyq1eupfap", "6MaASaSlpMbNTzMd"]}], "Namespace": "9tutmDiwLxksMhu5", "RedirectUri": "E1gLwy68JHh7cMbj", "Secret": "2XMOu1FZVvVguKlV", "TwoFactorEnabled": true}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
