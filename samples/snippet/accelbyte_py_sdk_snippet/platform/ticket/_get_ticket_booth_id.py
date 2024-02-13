import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_ticket_booth_id
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TicketBoothID

result, error = get_ticket_booth_id(
    booth_name=booth_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
