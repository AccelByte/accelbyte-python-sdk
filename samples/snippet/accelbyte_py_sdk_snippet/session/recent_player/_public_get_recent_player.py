import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_get_recent_player
from accelbyte_py_sdk.api.session.models import ModelsRecentPlayerQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_get_recent_player(
    limit=limit,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
