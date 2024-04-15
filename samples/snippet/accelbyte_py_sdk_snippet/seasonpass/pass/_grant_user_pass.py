import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import grant_user_pass
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserPassGrant
from accelbyte_py_sdk.api.seasonpass.models import UserSeasonSummary

"""
body:
Definition: UserPassGrant
pass_code: str
pass_item_id: str

Example: '{"passCode": "yWvJOWVFRXlhJFYo", "passItemId": "q7vTZ0HAhTDSow5t"}'
"""

result, error = grant_user_pass(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
