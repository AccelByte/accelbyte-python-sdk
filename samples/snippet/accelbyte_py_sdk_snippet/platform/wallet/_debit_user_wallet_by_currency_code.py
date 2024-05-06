import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import debit_user_wallet_by_currency_code
from accelbyte_py_sdk.api.platform.models import DebitByCurrencyCodeRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import WalletInfo

"""
body:
Definition: DebitByCurrencyCodeRequest
allow_overdraft: bool
amount: int
balance_origin: str
balance_source: str
metadata: Dict[str, Any]
reason: str

Example: '{"allowOverdraft": false, "amount": 71, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"eCqUFl4DOGA2saIb": {}, "rYw2f4aTAlnya67O": {}, "gffVDNcRy1oarafr": {}}, "reason": "MZBfSL8PAW1B1U7P"}'
"""

result, error = debit_user_wallet_by_currency_code(
    currency_code=currency_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
