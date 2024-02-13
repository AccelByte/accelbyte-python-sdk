import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_list_user_wallet_transactions
from accelbyte_py_sdk.api.platform.models import WalletTransactionPagingSlicedResult

result, error = public_list_user_wallet_transactions(
    currency_code=currency_code,
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
