import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_event_specific_user_v2_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponseV2

result, error = get_event_specific_user_v2_handler(
    user_id=user_id,
    end_date=end_date,
    event_name=event_name,
    offset=offset,
    page_size=page_size,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
