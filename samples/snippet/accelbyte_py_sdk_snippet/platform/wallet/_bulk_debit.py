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

Example: '[{"currencyCode": "YvN1bVKGDjqlHu1k", "request": {"allowOverdraft": false, "amount": 93, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"pyQ7LLmMkWDscffR": {}, "TMyBPtMP6wtxeZ8D": {}, "Ep7ywt3LDiWZS2sS": {}}, "reason": "MeSxLr6stw0nXjEz"}, "userIds": ["DAtvbL3aysYSAjBj", "7UYNxVtWgl6c40xK", "8gqWNgZQMkvk30BY"]}, {"currencyCode": "1uTi2IHsauxFWi1R", "request": {"allowOverdraft": false, "amount": 40, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"MdYnFBqEXXO0a8Ke": {}, "KuyHaa32BLss6x9M": {}, "yPejpJY7wZgnpzR1": {}}, "reason": "UesofSRnf88uNbB5"}, "userIds": ["C512mNjvnItLponY", "kXJcCIveH0JZvi2k", "XAvMt2p4plmg2Ubk"]}, {"currencyCode": "cnVuKyBkbu1PDfeM", "request": {"allowOverdraft": true, "amount": 26, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"kDMUxXGCQMLex9oq": {}, "YwqgeVNq1QtlUhPi": {}, "mjVrLryKTOEDcGI4": {}}, "reason": "CvkZsqzaoNzXT46w"}, "userIds": ["yWHAR6Qe5HYdVOeo", "Sklue5FyJ8N7sEcH", "BJAVfKWF3adJwKLK"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
