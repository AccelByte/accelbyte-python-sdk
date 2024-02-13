import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_redeem_history
from accelbyte_py_sdk.api.platform.models import RedeemHistoryPagingSlicedResult

result, error = query_redeem_history(
    campaign_id=campaign_id,
    code=code,
    limit=limit,
    offset=offset,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
