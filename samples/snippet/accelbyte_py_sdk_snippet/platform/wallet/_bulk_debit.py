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

Example: '[{"currencyCode": "2u8CyvIrOWEO2eCS", "request": {"allowOverdraft": false, "amount": 30, "balanceOrigin": "Epic", "balanceSource": "PAYMENT", "metadata": {"E78THAcQuECLkQmv": {}, "HXupyJnFCm0Rvogz": {}, "Cco7LLISacihTMEX": {}}, "reason": "a4xkaoLK0V6P7DPU"}, "userIds": ["4jPaL2NEQv9eCVzy", "GPNnpqvrRMK49FoB", "cqQFtRPZYe0FNIFl"]}, {"currencyCode": "g6MXct9UCzSlvQhW", "request": {"allowOverdraft": true, "amount": 15, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"bdv0WkoAoaJ3INsK": {}, "be4t0zgnNYm51ja5": {}, "ozPxT0ae5UNyCUUY": {}}, "reason": "WloArfhBJdaZ3JMb"}, "userIds": ["uPFAUTswGnB1k92p", "0JecfyKYkb2kMvcR", "l9pQX6T46GMA70dp"]}, {"currencyCode": "bzxCXtiejWG1SKlE", "request": {"allowOverdraft": true, "amount": 87, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"WakA5nVSaKvQzaco": {}, "iStf0c7cqrnjdqTS": {}, "IuWobYUfFNgD5GE8": {}}, "reason": "koCpNRVJx7pdabze"}, "userIds": ["hTj3rTShwpK7vfKO", "1gqxpu1tHbk9SHgq", "w35jrothrWWKztzu"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
