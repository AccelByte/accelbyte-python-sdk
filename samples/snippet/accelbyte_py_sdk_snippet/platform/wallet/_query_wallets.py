import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_wallets
from accelbyte_py_sdk.api.platform.models import WalletPagingSlicedResult

result, error = query_wallets(
    currency_code=currency_code,
    limit=limit,
    offset=offset,
    origin=origin,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
