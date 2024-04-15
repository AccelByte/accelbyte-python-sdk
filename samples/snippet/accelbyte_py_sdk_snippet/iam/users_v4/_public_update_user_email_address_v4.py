import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_email_address_v4
from accelbyte_py_sdk.api.iam.models import ModelEmailUpdateRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelEmailUpdateRequestV4
code: str
email_address: str

Example: '{"code": "3PSIyyBYesGV3Xhh", "emailAddress": "3mVoAjKOiec6ERfB"}'
"""

result, error = public_update_user_email_address_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
