import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import pay
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentProcessResult
from accelbyte_py_sdk.api.platform.models import PaymentToken

"""
body:
Definition: PaymentToken
token: str

Example: '{"token": "fu9ZLmMI2f7PAva0"}'
"""

result, error = pay(
    payment_order_no=payment_order_no,
    body=body,
    payment_provider=payment_provider,
    zip_code=zip_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
