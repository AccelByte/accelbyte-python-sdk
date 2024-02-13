import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_revocation_histories
from accelbyte_py_sdk.api.platform.models import RevocationHistoryPagingSlicedResult

result, error = query_revocation_histories(
    end_time=end_time,
    limit=limit,
    offset=offset,
    source=source,
    start_time=start_time,
    status=status,
    transaction_id=transaction_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
