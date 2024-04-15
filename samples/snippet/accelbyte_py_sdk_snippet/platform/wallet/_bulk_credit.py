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

Example: '[{"creditRequest": {"amount": 61, "expireAt": "1984-03-31T00:00:00Z", "metadata": {"yEvt1uYjBYTwMZpc": {}, "zk2jkVVreI5ZCdbc": {}, "ZAP9w0PgJzNkBes5": {}}, "origin": "Nintendo", "reason": "msDqB3Y9TXA4IwLA", "source": "TRADE"}, "currencyCode": "LkcoH0Da486TEJHd", "userIds": ["8PqigsODe9pwea9m", "eJ1ksV72UOEmzQQb", "vj7fewxfu9Iy5IkK"]}, {"creditRequest": {"amount": 81, "expireAt": "1991-09-13T00:00:00Z", "metadata": {"dqANjdrYW6CFnRsf": {}, "SsXtsOFW2WhivaWE": {}, "PVlBCLXneDFA3iKZ": {}}, "origin": "Nintendo", "reason": "maWDZbrF9jYPLCU1", "source": "IAP"}, "currencyCode": "m7F4JbzBe0ivYP9n", "userIds": ["AWF3IckU7KKnAy5M", "TY0BW75nDGjAjwUI", "rXyYrhMm2gJ72AFC"]}, {"creditRequest": {"amount": 7, "expireAt": "1974-01-16T00:00:00Z", "metadata": {"TZHna2nbdp64spzK": {}, "2rMMQKqvFslYplsS": {}, "KpQO8bWmkf8sY2jn": {}}, "origin": "IOS", "reason": "yqOfDzvzyLqiDKbn", "source": "OTHER"}, "currencyCode": "9oW6XNeGqM2N6LCa", "userIds": ["Y4XGWFjZS7SGDuhG", "VtaluLRt2QvtNjmo", "KHY9OS9hx6hZhV2d"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
