import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_import_history
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ImportStoreHistoryPagingResult

result, error = query_import_history(
    store_id=store_id,
    end=end,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    start=start,
    success=success,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
