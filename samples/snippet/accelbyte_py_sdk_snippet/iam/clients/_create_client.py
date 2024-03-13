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

Example: '{"ClientId": "6anp8V3Agmly8PBm", "ClientName": "eCO1Q6Ze72V9EKpd", "ClientPermissions": [{"Action": 97, "Resource": "VkbIbtKsrlpf2gaq", "SchedAction": 2, "SchedCron": "TvkTOxKLSYhFUTnn", "SchedRange": ["SpSS6lkvCkcyPknj", "XTmDqILG3uYZ3k9X", "07oy5TJ44Uby8aUg"]}, {"Action": 94, "Resource": "HE3zJdwIor9AENWI", "SchedAction": 36, "SchedCron": "OprKDAIrget9PvBS", "SchedRange": ["RXDfm6F1r0hBhcN6", "72DMIolpC0aNirBd", "toPQHiW4S0iUHcx2"]}, {"Action": 15, "Resource": "WWzURBP72nImRJiU", "SchedAction": 48, "SchedCron": "bE61Z0pOY510gkkc", "SchedRange": ["Z1lCK38VurjxHReL", "pcdx2q9kfeUWzMy3", "DVeKUXIBSbjDAkSk"]}], "Namespace": "ml8kT5wD6AYCgZpG", "RedirectUri": "ZrErUy80TOblMjys", "Secret": "ZJ9jhlCb65dO9ssM", "TwoFactorEnabled": false}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
