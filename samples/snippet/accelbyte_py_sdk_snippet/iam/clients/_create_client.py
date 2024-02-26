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

Example: '{"ClientId": "vBKUnMmceC70isa0", "ClientName": "QosLtz3QakExAt5m", "ClientPermissions": [{"Action": 18, "Resource": "8t6b16YCKjNbD1V6", "SchedAction": 8, "SchedCron": "R8BBnA9nEW7ae5bv", "SchedRange": ["hlkEAW25rNLdiGGy", "dh3R20LrzzsnAlLY", "UHRmNq6ktg4HgJ4h"]}, {"Action": 62, "Resource": "qBYWEyv8w8InspzO", "SchedAction": 84, "SchedCron": "9zFilh8wntrs45ZL", "SchedRange": ["EIj3KgQxbiMCjb0f", "LgpSUiTG1ys1CJAV", "0V1nYLpbx7k0dMKS"]}, {"Action": 68, "Resource": "g7ybbwKzcfuCKD8B", "SchedAction": 4, "SchedCron": "JMhozLXdM2RTD8tC", "SchedRange": ["zu2pZ4DpkbtiIhAa", "GUFuBG8wS9kFHHHV", "AbUr8LwhFYYs5zwZ"]}], "Namespace": "lZhIwzbJC6MlYfah", "RedirectUri": "o6nIDIjZNEmWnnzP", "Secret": "wGSlqKFaTm5sxeJ0", "TwoFactorEnabled": true}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
