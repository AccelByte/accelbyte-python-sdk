import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_query_my_game_sessions
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_query_my_game_sessions(
    order=order,
    order_by=order_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
