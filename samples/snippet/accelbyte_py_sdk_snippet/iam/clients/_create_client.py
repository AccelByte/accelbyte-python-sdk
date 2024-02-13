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

Example: '{"ClientId": "Y4wn7LNcABNZS3Mg", "ClientName": "9nxQ1z33sx2qFgPm", "ClientPermissions": [{"Action": 49, "Resource": "HlJvar484DdlBZza", "SchedAction": 81, "SchedCron": "ymUMlIu7c2gW290e", "SchedRange": ["d7xeR2Pv3NeRMDXI", "2dwo1f9vIrzY1ZX7", "hS0ziOVEP0BgefOa"]}, {"Action": 71, "Resource": "CdMVugTf9cvsO4fs", "SchedAction": 73, "SchedCron": "lUY8zNm0yDoH1KCN", "SchedRange": ["mdcQIBlcJTmglTlU", "g652fxnGEHmc5BRV", "2A6SDDnZtJRSLY6e"]}, {"Action": 15, "Resource": "a2EjeKnprRNqaLhD", "SchedAction": 94, "SchedCron": "YX77JkWiisBQdibB", "SchedRange": ["6YqJZr2XT5Fd4mzr", "iqrtO3Rj0DSTfZvw", "707buNyXN2FzWX1B"]}], "Namespace": "KFLdBhqvErjsfKn9", "RedirectUri": "VqFYVeS6m2rfVTKY", "Secret": "xGTiwe25UXAkT7XE", "TwoFactorEnabled": true}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
