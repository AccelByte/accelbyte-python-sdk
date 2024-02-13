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

Example: '[{"creditRequest": {"amount": 12, "expireAt": "1989-02-18T00:00:00Z", "metadata": {"E0sMpHMOm3kq0y8v": {}, "BnmZEqlhuBf14w22": {}, "rAcAUPmAKsjldBp9": {}}, "origin": "Other", "reason": "NmzMlfC1dI8vhf7a", "source": "GIFT"}, "currencyCode": "Em9fagDStDSSaECH", "userIds": ["lQjWEEGzV2q0hLee", "gni05MDHxpcqYtcd", "xdlfA1ZUQx8lULrt"]}, {"creditRequest": {"amount": 99, "expireAt": "1976-09-05T00:00:00Z", "metadata": {"Wc889iiliaDU0gEf": {}, "jLRXiYqK5cEEJkws": {}, "LasGNS9YJVsz3FSU": {}}, "origin": "Other", "reason": "mmTsrCp64eMgLtCw", "source": "REWARD"}, "currencyCode": "JBoC33GyEGM7fnV1", "userIds": ["UvxHyCjaH7mfSPqM", "sffTWDsf3eIuyRxv", "XuPQEpXSqGfC2Eyu"]}, {"creditRequest": {"amount": 40, "expireAt": "1973-11-08T00:00:00Z", "metadata": {"SbMubJYP6Pv0fgPk": {}, "bnMaCxMUHIkweiUP": {}, "ryGN6grdzQ92kPGo": {}}, "origin": "GooglePlay", "reason": "z0IxrnoitiyN1Ery", "source": "REFERRAL_BONUS"}, "currencyCode": "mScDr87QeQWCQ1Af", "userIds": ["bTxNfGUfezVTgfA7", "bGe2wbx55EPKCp5F", "h9BtQ8sCHWI1bppF"]}]'
"""

result, error = bulk_credit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
