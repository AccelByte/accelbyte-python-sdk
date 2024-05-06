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

Example: '{"ClientId": "ObJ65xHu1NZm0HVJ", "ClientName": "dghiYACwFxqgh1T1", "ClientPermissions": [{"Action": 84, "Resource": "YTWQt7a83KOFRgjb", "SchedAction": 81, "SchedCron": "TlPoHUuISZr4YEjr", "SchedRange": ["tHnVBpipYA9nevpr", "leIP6RXOQT5yQEXx", "a4d0dxc76rf4zzLs"]}, {"Action": 37, "Resource": "2TgDyKguDZZ4wYLr", "SchedAction": 0, "SchedCron": "3VLc2eil7gTcodgg", "SchedRange": ["7Bvl71vRWi6TGFZj", "o9ZSmDo4g8wtEiFB", "Zxyuv9WMZJDf5ZVd"]}, {"Action": 77, "Resource": "JjmGgXQe1jwJJjQD", "SchedAction": 25, "SchedCron": "Jsf6Zb0hitHnqTe3", "SchedRange": ["moChAx55kGkzoE9k", "g6ADfaCW91vkcmmK", "PfPwqS6G6vcGz10e"]}], "Namespace": "H6qRZobpDxGAFhHv", "RedirectUri": "guJOFb8CEIorDawR", "Secret": "ygvhsyylD1fjawpO", "TwoFactorEnabled": true}'
"""

result, error = create_client(
    body=body,
    x_additional_headers=x_additional_headers,
)
