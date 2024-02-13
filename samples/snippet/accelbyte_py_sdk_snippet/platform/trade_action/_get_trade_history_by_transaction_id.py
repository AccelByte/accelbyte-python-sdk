import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_trade_history_by_transaction_id
from accelbyte_py_sdk.api.platform.models import TradeChainActionHistoryInfo

result, error = get_trade_history_by_transaction_id(
    transaction_id=transaction_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
