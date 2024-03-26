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

Example: '[{"creditRequest": {"amount": 48, "expireAt": "1983-02-07T00:00:00Z", "metadata": {"H7eBgU0sT3cBO54N": {}, "8WkOMi4IyK6Yoekx": {}, "uJDEwbTDgSAF8UOG": {}}, "origin": "Playstation", "reason": "EgJD1OdseEQlaIJI", "source": "REWARD"}, "currencyCode": "7VJbncqad8T5EPFD", "userIds": ["wQZbPjoUDAA691gz", "eOOzEUnLyTWm8ULE", "BXhZRSVb8b4SqaIT"]}, {"creditRequest": {"amount": 92, "expireAt": "1983-01-06T00:00:00Z", "metadata": {"qIeeQfmGTyNiuUKk": {}, "hgzYjxBNVH0IO9h6": {}, "6majPdjoyX46Xv6b": {}}, "origin": "Nintendo", "reason": "EynO2V5LcDp8fR1R", "source": "DLC"}, "currencyCode": "pF3OcCATGs7hRpXZ", "userIds": ["qPLCPLXVJu4DXnyu", "91FaPc5NnYRX58tD", "WvNuLByd57UCom4H"]}, {"creditRequest": {"amount": 8, "expireAt": "1978-05-20T00:00:00Z", "metadata": {"6rux4jPFMOsCRDgd": {}, "JiVdgH50d2CmuxkY": {}, "5JiQX4vfyejxO9ff": {}}, "origin": "System", "reason": "S1HdUSd1cs22q9dB", "source": "PROMOTION"}, "currencyCode": "Bhk3selMk3LwvLGU", "userIds": ["bWTjjHn3LBRsJtUJ", "TD8rkVYh8qbAe6Pb", "ifixEvZq0OVhQioX"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
