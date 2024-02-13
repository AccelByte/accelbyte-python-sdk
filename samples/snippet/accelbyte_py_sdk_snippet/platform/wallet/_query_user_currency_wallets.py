import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_user_currency_wallets
from accelbyte_py_sdk.api.platform.models import CurrencyWallet

result, error = query_user_currency_wallets(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
