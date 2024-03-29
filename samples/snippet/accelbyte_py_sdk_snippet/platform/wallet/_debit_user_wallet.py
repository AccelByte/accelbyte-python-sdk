import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import debit_user_wallet
from accelbyte_py_sdk.api.platform.models import DebitRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import WalletInfo

"""
body:
Definition: DebitRequest
amount: int
balance_source: str
metadata: Dict[str, Any]
reason: str

Example: '{"amount": 47, "balanceSource": "ORDER_REVOCATION", "metadata": {"nitvBEhDaeffd1hL": {}, "jloBxXvHusaMNIc5": {}, "hdiwgAzTlVKHXTtW": {}}, "reason": "QtB4BihJaXtuaN9h"}'
"""

result, error = debit_user_wallet(
    user_id=user_id,
    wallet_id=wallet_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
