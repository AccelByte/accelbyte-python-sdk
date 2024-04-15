import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import admin_ticket_detail_get_by_ticket_id
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsTicketObservabilityDetail,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_ticket_detail_get_by_ticket_id(
    ticket_id=ticket_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
