import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_user_wallet_transactions
from accelbyte_py_sdk.api.platform.models import (
    DetailedWalletTransactionPagingSlicedResult,
)
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = list_user_wallet_transactions(
    user_id=user_id,
    wallet_id=wallet_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
