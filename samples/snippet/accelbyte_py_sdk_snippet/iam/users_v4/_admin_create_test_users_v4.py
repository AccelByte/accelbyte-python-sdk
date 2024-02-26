import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_test_users_v4
from accelbyte_py_sdk.api.iam.models import AccountCreateTestUsersRequestV4
from accelbyte_py_sdk.api.iam.models import AccountCreateTestUsersResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountCreateTestUsersRequestV4
count: int

Example: '{"count": 61}'
"""

result, error = admin_create_test_users_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
