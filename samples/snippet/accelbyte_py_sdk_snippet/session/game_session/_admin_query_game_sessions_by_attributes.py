import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_query_game_sessions_by_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: Dict[str, Any]

Example: '{"humr4IXkBMQOjmvc": {}, "gCXy9YdB3tIdP9Yp": {}, "XWlSGl1kefUoVPJ0": {}}'
"""

result, error = admin_query_game_sessions_by_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
