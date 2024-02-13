import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_session_history_detailed
from accelbyte_py_sdk.api.sessionbrowser.models import (
    ModelsGetSessionHistoryDetailedResponseItem,
)
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorV1

result, error = get_session_history_detailed(
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
