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

Example: '[{"currencyCode": "3M2HbRnlnXKBcu32", "request": {"allowOverdraft": true, "amount": 14, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"ixkP6eyeOEAoqLz9": {}, "8llkp1Py4NBjq8io": {}, "2Ju9esO28bJtsnSI": {}}, "reason": "XVAx9D8qSGA4Mygm"}, "userIds": ["oBVhLizamPG21Xrs", "OvVUWiMP9jqor2xG", "zw5X0Ic7sundAxO1"]}, {"currencyCode": "wneMvLp8LaiJB7s5", "request": {"allowOverdraft": false, "amount": 26, "balanceOrigin": "Other", "balanceSource": "OTHER", "metadata": {"QqkUSOaYkMOdgsmO": {}, "M97fIDRlfZgQUDZJ": {}, "X7QwPqhUBAsifSiw": {}}, "reason": "AgzJIDesXdfE35IO"}, "userIds": ["LtMWchoxqFxAnkjO", "GvJVXweQV5QhDF8V", "jMMqKFnmIVytDOhx"]}, {"currencyCode": "oLUsmADX2f1ODU3r", "request": {"allowOverdraft": false, "amount": 42, "balanceOrigin": "Epic", "balanceSource": "TRADE", "metadata": {"8SfzSQ5ZR4XZw0E2": {}, "xUoW8BfaM7rNLaqI": {}, "NsGZ02dCDTOgjtKW": {}}, "reason": "QAuw7YekC3XhfU7b"}, "userIds": ["bh7kXRqCXa0QfXO0", "VghV4FrnqloUfpqw", "hYEVmZXW3VdeemZC"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
