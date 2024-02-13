import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_user_currency_transactions
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import WalletTransactionPagingSlicedResult

result, error = list_user_currency_transactions(
    currency_code=currency_code,
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
