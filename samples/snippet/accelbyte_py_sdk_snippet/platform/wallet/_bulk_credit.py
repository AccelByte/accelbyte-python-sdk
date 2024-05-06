import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import bulk_credit
from accelbyte_py_sdk.api.platform.models import BulkCreditRequest
from accelbyte_py_sdk.api.platform.models import BulkCreditResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[BulkCreditRequest]
credit_request: CreditRequest
Definition: CreditRequest
    amount: int
    expire_at: str
    metadata: Dict[str, Any]
    origin: str
    reason: str
    source: str
currency_code: str
user_ids: List[str]

Example: '[{"creditRequest": {"amount": 59, "expireAt": "1980-04-28T00:00:00Z", "metadata": {"EReNdPUUKtaObwwQ": {}, "QISa7IrcDIAqhlOc": {}, "CqCFf4rsoTy5Uz6s": {}}, "origin": "IOS", "reason": "mZqOlCd3NyY85ed3", "source": "TRADE"}, "currencyCode": "fPop4WSri1e2LmXy", "userIds": ["779Hdsvoj30CCPfC", "UVMvll7vKdxaWYxn", "RC7F2TBL6iEvbM8V"]}, {"creditRequest": {"amount": 49, "expireAt": "1987-10-26T00:00:00Z", "metadata": {"67DsyXncrLGuUUIw": {}, "EX9JoSqpU8yQOsX8": {}, "PESuFgzTi50V2g5O": {}}, "origin": "Playstation", "reason": "v7tkojI52PHdzRaQ", "source": "OTHER"}, "currencyCode": "sVzRFODFRneYmsuE", "userIds": ["wZPnyneKwEQHrKXs", "VRpG7iBkAAfuNDOj", "t0nqUZkhegbOWcXS"]}, {"creditRequest": {"amount": 21, "expireAt": "1996-07-08T00:00:00Z", "metadata": {"KqWM7BhPaA7HWcdq": {}, "6nVIS4iPvYdJc6oP": {}, "raGcybcRUKKyaOPo": {}}, "origin": "System", "reason": "nvM9SnyV68XGHima", "source": "REFUND"}, "currencyCode": "XyVO8j0KOETTXrYO", "userIds": ["aqwJNzyTI35tmC3P", "9fSdHdXZ9gO5oz2y", "WL4cRhgbfv1YKjFM"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
