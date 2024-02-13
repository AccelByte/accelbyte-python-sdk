import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_recent_player
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsRecentPlayerQueryResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError

result, error = get_recent_player(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
