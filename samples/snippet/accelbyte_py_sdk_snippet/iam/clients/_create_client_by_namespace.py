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

Example: '{"ClientId": "Mm1HdV0u2kYkNd22", "ClientName": "cJnbc1Gkh5qDkVx5", "ClientPermissions": [{"Action": 24, "Resource": "oJSmRArYZo7kjjAp", "SchedAction": 98, "SchedCron": "ugjZ27QfNDsLjw6Y", "SchedRange": ["cBcsMklY4ZOvU6lp", "sKOWhgRU001RvOvR", "qUOzkBH65k4zS2Yq"]}, {"Action": 88, "Resource": "gkBX7qcd03bLMeZe", "SchedAction": 65, "SchedCron": "FezDtGcWt82uy5CO", "SchedRange": ["usYJjwyLjpUxSsWm", "WYl2Drg60Ma6F5gn", "9jeEB1zM12xD8e1N"]}, {"Action": 4, "Resource": "Enub4nGEF9sffIoZ", "SchedAction": 79, "SchedCron": "DlprqLpuvYLr2BLy", "SchedRange": ["lM2KretRJAqBvFEy", "YijQuAkpB3F9EXWk", "7FnJyFg99m6RTdS1"]}], "Namespace": "r97s0SCxKWnlVEF6", "RedirectUri": "IygBmFiNmHXizmgi", "Secret": "6TVTTYysmWhN6Qd8", "TwoFactorEnabled": false}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
