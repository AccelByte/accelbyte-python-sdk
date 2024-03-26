import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import apply_user_redemption
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RedeemRequest
from accelbyte_py_sdk.api.platform.models import RedeemResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: RedeemRequest
code: str
order_no: str

Example: '{"code": "rIYEJTPtKIfxGfyY", "orderNo": "ehPDjfXU5wpxJvpd"}'
"""

result, error = apply_user_redemption(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
