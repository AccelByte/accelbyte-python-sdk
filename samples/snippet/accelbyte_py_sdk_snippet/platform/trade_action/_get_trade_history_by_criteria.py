import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_trade_history_by_criteria
from accelbyte_py_sdk.api.platform.models import TradeActionPagingSlicedResult

result, error = get_trade_history_by_criteria(
    limit=limit,
    offset=offset,
    status=status,
    type_=type_,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
