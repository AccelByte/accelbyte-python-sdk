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

Example: '{"allowOverdraft": true, "amount": 15, "balanceOrigin": "Playstation", "balanceSource": "DLC_REVOCATION", "metadata": {"rrr4QLqxNa8LhbVL": {}, "AhEz62thVWxUKCDD": {}, "XXuoELijiwwmXClc": {}}, "reason": "X4cpBQoKMjtjz0D2"}'
"""

result, error = debit_user_wallet_by_currency_code(
    currency_code=currency_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
