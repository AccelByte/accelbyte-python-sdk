import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_email_address_v4
from accelbyte_py_sdk.api.iam.models import ModelEmailUpdateRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelEmailUpdateRequestV4
code: str
email_address: str

Example: '{"code": "iojD92xXDbRaUsqC", "emailAddress": "8xbKYMiEcYlA1mRJ"}'
"""

result, error = admin_update_user_email_address_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
