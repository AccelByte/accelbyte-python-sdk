import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_codes
from accelbyte_py_sdk.api.platform.models import CodeInfoPagingSlicedResult

result, error = query_codes(
    campaign_id=campaign_id,
    active_only=active_only,
    batch_no=batch_no,
    code=code,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
