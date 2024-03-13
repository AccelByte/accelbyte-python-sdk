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

Example: '[{"creditRequest": {"amount": 82, "expireAt": "1973-04-18T00:00:00Z", "metadata": {"uXsO5m3y444KcQWp": {}, "VN56KiwkpQyZjz96": {}, "dYoSnh6uCId8OiXY": {}}, "origin": "Nintendo", "reason": "Xf1RYA4GVR2ZyTvt", "source": "GIFT"}, "currencyCode": "yzysSKp4lCskMmn5", "userIds": ["zAghwUwN8QEsGRAa", "Jy1HkkDGUgSFnq7f", "uNrPBzpYnLK4zW4o"]}, {"creditRequest": {"amount": 47, "expireAt": "1989-05-11T00:00:00Z", "metadata": {"dCadhY3Yf4lmC34c": {}, "xncuaJlefnLynFHy": {}, "eMSEIMyOcsfejDcR": {}}, "origin": "Playstation", "reason": "8d8OpIOpnvmxr6aU", "source": "REFUND"}, "currencyCode": "VaDCGicNra6l7R36", "userIds": ["cV4SMiJcs3CxdLi0", "1npnRNQEo7d98ig7", "gvp0QTw8CJ1eBOT1"]}, {"creditRequest": {"amount": 99, "expireAt": "1981-09-01T00:00:00Z", "metadata": {"MKJrxgDxKYxrDhXe": {}, "hKRz5q0Z8LTpV0uS": {}, "3FlcO6tOGrS8AO45": {}}, "origin": "Xbox", "reason": "4ID7vde6JiUFMUkC", "source": "IAP"}, "currencyCode": "CuaFRrszS64KXaky", "userIds": ["yKYBa8ZQXV3N6kAG", "MzN1BQB6SSlnKnLB", "u7QV1f2fNusGK2Hn"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
