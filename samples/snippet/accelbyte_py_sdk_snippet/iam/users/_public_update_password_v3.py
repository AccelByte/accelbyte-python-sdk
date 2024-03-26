import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_password_v3
from accelbyte_py_sdk.api.iam.models import ModelUserPasswordUpdateV3Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserPasswordUpdateV3Request
language_tag: str
new_password: str
old_password: str

Example: '{"languageTag": "06lFSaoRmVu29nce", "newPassword": "AN4Yk7PJHqdUGsv5", "oldPassword": "6DSRfaEzAVhxnJ2p"}'
"""

result, error = public_update_password_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
