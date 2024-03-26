import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_upgrade_headless_account_v4
from accelbyte_py_sdk.api.iam.models import AccountUserResponseV4
from accelbyte_py_sdk.api.iam.models import AccountUpgradeHeadlessAccountRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountUpgradeHeadlessAccountRequestV4
email_address: str
password: str
username: str

Example: '{"emailAddress": "j3i4ISIvgOAitMyP", "password": "kdgxNil2uNWM9XLJ", "username": "xgNQH4FikFRMqxzH"}'
"""

result, error = public_upgrade_headless_account_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
