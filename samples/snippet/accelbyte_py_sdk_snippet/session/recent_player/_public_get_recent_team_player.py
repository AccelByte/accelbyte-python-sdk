import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_get_recent_team_player
from accelbyte_py_sdk.api.session.models import ModelsRecentPlayerQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_get_recent_team_player(
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
