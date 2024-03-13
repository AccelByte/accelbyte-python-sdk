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

Example: '{"ClientId": "ne2Benu4dCh1lUBd", "ClientName": "83Gs1EJLkAvFJp9Y", "ClientPermissions": [{"Action": 18, "Resource": "0N063tpbXBAzS5CE", "SchedAction": 60, "SchedCron": "0X2aCktPchSIQ4Dh", "SchedRange": ["GMvW8LpOOZLx69kD", "Z2HK2JA3wN7h86HS", "QHqjA8ReqKt2ROcR"]}, {"Action": 96, "Resource": "trhrqEBMOoKeYlsT", "SchedAction": 55, "SchedCron": "PguYR7FIZpRyPiwM", "SchedRange": ["KnvdmO4dYlEiuCQz", "6miyj0M4TaOHGVcx", "Tf2SkgN63YmldUEw"]}, {"Action": 33, "Resource": "0zaNetbxBIP3w8Td", "SchedAction": 35, "SchedCron": "5ZPuA0NDMl2Qs5iP", "SchedRange": ["DDZBDelFHS4FfkJf", "hBi3IX1tCslQlMw3", "kA4R6x5V5G1Up018"]}], "Namespace": "BfydaiJ3JOJ0Yumu", "RedirectUri": "aMplvkIFULrUnQbY", "Secret": "XToFPMBN845XYdtU", "TwoFactorEnabled": false}'
"""

result, error = create_client_by_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
