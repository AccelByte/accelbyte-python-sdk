import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import credit_user_wallet
from accelbyte_py_sdk.api.platform.models import CreditRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import WalletInfo

"""
body:
Definition: CreditRequest
amount: int
expire_at: str
metadata: Dict[str, Any]
origin: str
reason: str
source: str

Example: '{"amount": 46, "expireAt": "1987-10-03T00:00:00Z", "metadata": {"XJtDrxge4zSAsFJQ": {}, "eIvcs2qB0AyudnYW": {}, "tEONjTnlJpM17zps": {}}, "origin": "Playstation", "reason": "fhr5nOcOhpgiiiio", "source": "TRADE"}'
"""

result, error = credit_user_wallet(
    currency_code=currency_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
