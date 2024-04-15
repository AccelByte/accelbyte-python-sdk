import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import bulk_debit
from accelbyte_py_sdk.api.platform.models import BulkDebitRequest
from accelbyte_py_sdk.api.platform.models import BulkDebitResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[BulkDebitRequest]
currency_code: str
request: DebitByCurrencyCodeRequest
Definition: DebitByCurrencyCodeRequest
    allow_overdraft: bool
    amount: int
    balance_origin: str
    balance_source: str
    metadata: Dict[str, Any]
    reason: str
user_ids: List[str]

Example: '[{"currencyCode": "oKPhngl0vQJX5kTp", "request": {"allowOverdraft": false, "amount": 44, "balanceOrigin": "Epic", "balanceSource": "IAP_REVOCATION", "metadata": {"xXVylfVOgcOsioez": {}, "UkfWTgm8UXuYsXmN": {}, "CvcHv84if96NZwIv": {}}, "reason": "hRfLXYGhx6XFapk9"}, "userIds": ["5E1V2iQKN6kIHmzV", "rMtTLbUKtpb2hLhM", "Dhwc41TeMKOJ1qhj"]}, {"currencyCode": "iVNSyn1OeiXu9MER", "request": {"allowOverdraft": false, "amount": 92, "balanceOrigin": "System", "balanceSource": "ORDER_REVOCATION", "metadata": {"sJ6exsSdvteAHPJZ": {}, "vRDOWdeL2sjw5YwO": {}, "ETyLykzXd81hnceu": {}}, "reason": "MbzFMpRYJwhL1ELs"}, "userIds": ["KbEqAIu9j9HF5cJt", "IUOOtAyYdt4ftzbi", "LXvwFvaHqwY5lPKL"]}, {"currencyCode": "GhikVBipWgH7OIoJ", "request": {"allowOverdraft": false, "amount": 18, "balanceOrigin": "Playstation", "balanceSource": "TRADE", "metadata": {"kb4NwOZOiL46LIiY": {}, "MHDrPJHBdYq9QGbs": {}, "uNDLSJx0h2WtETJj": {}}, "reason": "lKZvdIMw7oHV3NKB"}, "userIds": ["FIjFYvh6Nkt2xBYT", "SJFuXSoZOPrjra2n", "ls8jc8j2NBS2qqNw"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
