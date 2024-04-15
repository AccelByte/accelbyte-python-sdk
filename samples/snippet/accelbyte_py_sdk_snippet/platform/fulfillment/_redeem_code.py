import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import redeem_code
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillCodeRequest
from accelbyte_py_sdk.api.platform.models import FulfillmentResult

"""
body:
Definition: FulfillCodeRequest
code: str
language: str
region: str

Example: '{"code": "Qnmvlx9cw5rTAuqD", "language": "nOz-FdOQ", "region": "yN0hE9t7cY4uVWGN"}'
"""

result, error = redeem_code(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
