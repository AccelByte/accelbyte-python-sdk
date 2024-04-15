import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_xray_timeline_by_user_id
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsXRayTicketQueryResponse
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_xray_timeline_by_user_id(
    user_id=user_id,
    end_date=end_date,
    start_date=start_date,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
