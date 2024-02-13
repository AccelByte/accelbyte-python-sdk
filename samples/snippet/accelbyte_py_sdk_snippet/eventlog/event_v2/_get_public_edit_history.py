import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_public_edit_history
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponseV2

result, error = get_public_edit_history(
    user_id=user_id,
    end_date=end_date,
    offset=offset,
    page_size=page_size,
    start_date=start_date,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
