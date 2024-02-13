import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import ticket_statistic
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiTicketStatisticResponse

result, error = ticket_statistic(
    category=category,
    extension_category=extension_category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
