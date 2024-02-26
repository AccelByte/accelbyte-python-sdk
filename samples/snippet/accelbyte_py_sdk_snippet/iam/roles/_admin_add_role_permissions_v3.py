import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissionsV3
permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"permissions": [{"action": 65, "resource": "oMMtjR1HXEoWUQUN", "schedAction": 89, "schedCron": "0goKjB1w1gYLPCfh", "schedRange": ["NuyvAw4mKYDr95uQ", "DCDFJLd2YBCfqeDJ", "0Qj3Pv4j6T3zqH2g"]}, {"action": 92, "resource": "4SLp2W0sFNkwa8FK", "schedAction": 89, "schedCron": "dBUgSdLYgav3kqO0", "schedRange": ["AZlmDvnRi3vzTPMc", "PkFGev3cuHMX28QS", "SBAzNgjf13weZGU7"]}, {"action": 13, "resource": "7rOcWR1ZMDFBAP3h", "schedAction": 98, "schedCron": "Y6jmtbIWiHkjDUie", "schedRange": ["zncPcbCsyPzRrW1e", "bJUhaKWAuuJe94VM", "pOnpvijIRIZLeLeM"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
