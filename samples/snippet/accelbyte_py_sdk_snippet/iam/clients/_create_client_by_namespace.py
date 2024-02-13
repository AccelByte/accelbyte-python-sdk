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

Example: '{"ClientId": "aBPChUEz21gKJ0RV", "ClientName": "278B3TJ3YPxr1REd", "ClientPermissions": [{"Action": 75, "Resource": "K9QwDYf63i5Ees6U", "SchedAction": 33, "SchedCron": "ntdzXu7tEZwjdfGG", "SchedRange": ["ssYoqKbkHkp4VW9r", "IGfE7zvNY9A8o8fd", "TIDhVDNOJyVNIh7y"]}, {"Action": 6, "Resource": "H3Bin1dm29Uj6pRa", "SchedAction": 51, "SchedCron": "TT9G6Pf1jaBIsPrN", "SchedRange": ["0fhM8x8OStiOq7QN", "OccFUh01WACn1EkO", "gLiwZd0hYgfet5HR"]}, {"Action": 33, "Resource": "mIJfcRskB83LTmtL", "SchedAction": 40, "SchedCron": "jpaqqv8xG5SGuHHe", "SchedRange": ["OrHUxqAyjgfAOmDB", "cOpwFGry2NNx3Glg", "0AzDupbofUQPYddY"]}], "Namespace": "BEMYm6IAU8bCEbgC", "RedirectUri": "1hxMydGbEH7f5PiB", "Secret": "krRQVsGey49D1QpF", "TwoFactorEnabled": true}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
