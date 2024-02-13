import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_permission
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissions
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissions
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"Permissions": [{"Action": 68, "Resource": "hSdfYw6manRhICbb", "SchedAction": 54, "SchedCron": "PY9IzrbEbKPTaQ9F", "SchedRange": ["YjTgTXVcuFNJn8Zf", "qr8CyWGdVUS6zUeF", "2ZLIS6tFxeBKN3ea"]}, {"Action": 55, "Resource": "wXGgP6iVV2Z9S91g", "SchedAction": 15, "SchedCron": "en6QVKjyuxSkyQYf", "SchedRange": ["k8ZAMObOCNXBS5u4", "gNK3ZIzT2Dx7yedV", "EL2Q8uVLkvNDnM92"]}, {"Action": 75, "Resource": "Vmty8UIMDZN8iPTi", "SchedAction": 3, "SchedCron": "8rdaFJgDI2pzDBcL", "SchedRange": ["yX0ieyvYLouq0Y3z", "DaGsk0CZo5Dh8Zkj", "jP2mQMLKs0ZgMHiz"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
