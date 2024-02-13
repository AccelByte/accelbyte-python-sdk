import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_event_by_user_id_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponse

result, error = get_event_by_user_id_handler(
    user_id=user_id,
    end_date=end_date,
    page_size=page_size,
    start_date=start_date,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
