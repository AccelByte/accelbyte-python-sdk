import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_query_game_sessions_by_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: Dict[str, Any]

Example: '{"G8GB0J1C612Xzzn5": {}, "JDQjZMS7eZwvvGfA": {}, "m1Q0aP7Kk8CJa0AE": {}}'
"""

result, error = admin_query_game_sessions_by_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
