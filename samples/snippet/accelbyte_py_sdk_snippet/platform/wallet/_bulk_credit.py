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

Example: '[{"creditRequest": {"amount": 70, "expireAt": "1991-09-22T00:00:00Z", "metadata": {"9gkARdVmCJF8yfM0": {}, "USpmEvjqvpFVtfnm": {}, "Q3G9jsfk1dgmKoKC": {}}, "origin": "Other", "reason": "mYpmYcXx8N947eoP", "source": "TRADE"}, "currencyCode": "TgyxiQwj3xsIonLE", "userIds": ["5XGKruITL0Se9NW2", "87FZD3UdpvSaht4N", "K9AQh078yl3j9m8a"]}, {"creditRequest": {"amount": 25, "expireAt": "1989-11-09T00:00:00Z", "metadata": {"Zx153iKIsTLqm1ap": {}, "2BMRAs49yQNhGrau": {}, "wTJQHMOcmSgPRC7F": {}}, "origin": "Xbox", "reason": "rb9nzXXBCcaG2yLz", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "rweU2s6g9fSe24tu", "userIds": ["DeGGVXGwtpGjqJUi", "GR6dbufhmzShvKrW", "tDtHVouQuPc08qmg"]}, {"creditRequest": {"amount": 25, "expireAt": "1991-02-07T00:00:00Z", "metadata": {"pFAoAQVQcCrPojHv": {}, "SJvP6XMXDxYAZCqV": {}, "w1Ewi9F0QDFLJSWP": {}}, "origin": "GooglePlay", "reason": "xhucTaDmnyD7yqEl", "source": "ACHIEVEMENT"}, "currencyCode": "tMIo0YBqOhBM4yjC", "userIds": ["TH2zJpOi05RYzukt", "QpSfCZqcFnVPjdVL", "4dar3HOVSYUTkR5B"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
