import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import remove_player_from_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsAddPlayerResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

result, error = remove_player_from_session(
    session_id=session_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
