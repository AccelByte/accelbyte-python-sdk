import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import admin_query_ticket_detail
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsTicketDetailQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_query_ticket_detail(
    end_date=end_date,
    game_mode=game_mode,
    limit=limit,
    offset=offset,
    order=order,
    party_id=party_id,
    region=region,
    start_date=start_date,
    user_i_ds=user_i_ds,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
