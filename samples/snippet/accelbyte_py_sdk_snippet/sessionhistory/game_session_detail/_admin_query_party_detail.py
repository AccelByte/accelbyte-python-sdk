import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import admin_query_party_detail
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsPartyDetailQueryResponse
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_query_party_detail(
    limit=limit,
    offset=offset,
    order=order,
    order_by=order_by,
    party_id=party_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
