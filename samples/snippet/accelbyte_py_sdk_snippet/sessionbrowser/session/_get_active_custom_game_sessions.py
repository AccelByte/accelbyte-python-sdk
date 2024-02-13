import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import get_active_custom_game_sessions
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsActiveCustomGameResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

result, error = get_active_custom_game_sessions(
    limit=limit,
    offset=offset,
    server_region=server_region,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
