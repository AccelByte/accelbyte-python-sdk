import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import pay_with_user_wallet
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentRequest
from accelbyte_py_sdk.api.platform.models import PlatformWallet
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentRequest
amount: int
metadata: Dict[str, Any]
wallet_platform: str

Example: '{"amount": 37, "metadata": {"vthuahEJHhSHOpjU": {}, "5Y0HVHZUTfdVbONT": {}, "W07nDkukks27Cbb6": {}}, "walletPlatform": "Xbox"}'
"""

result, error = pay_with_user_wallet(
    currency_code=currency_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
