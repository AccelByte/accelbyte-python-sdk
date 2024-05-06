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

Example: '[{"currencyCode": "cbddIgi1hthhtKvZ", "request": {"allowOverdraft": true, "amount": 94, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"LFFYxn5lotMzPUhu": {}, "olnp07mCZrvUuOwL": {}, "JgxLYZlrwRgjEP1k": {}}, "reason": "wVbQhf2FaGZbTyW5"}, "userIds": ["elVwGtP5P6mFXZLX", "oY8jrQeW9THJLvnQ", "jcW1HJhJ0rTjm5cu"]}, {"currencyCode": "vT9Qj8mhVNEXFMJn", "request": {"allowOverdraft": true, "amount": 84, "balanceOrigin": "Oculus", "balanceSource": "OTHER", "metadata": {"TC1AT7FcxglCdrdk": {}, "SKJm9Z8zqHdbVEQJ": {}, "jdIEFytxKSZoSKyR": {}}, "reason": "ZkP58T1jrTqTQc6z"}, "userIds": ["EpLSK9Jlx9VqxSer", "by5jlqwVOuibxbvA", "HujrH3VZELm6zUGG"]}, {"currencyCode": "ZzM3N8od761f1GbS", "request": {"allowOverdraft": false, "amount": 85, "balanceOrigin": "Nintendo", "balanceSource": "EXPIRATION", "metadata": {"zPHgHBuYrRIFt4W1": {}, "08VvCrXOyi0sUP2J": {}, "JO5tqg12fRj8pXUa": {}}, "reason": "HrpahxL1m24ZOXXu"}, "userIds": ["MSlaCXDB2tnrcJ7F", "0thrbAPcL0XYeUSq", "5W3D85QuXbzPyhIt"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
