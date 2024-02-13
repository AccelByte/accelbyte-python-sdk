import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import rebalance
from accelbyte_py_sdk.api.matchmaking.models import ModelsRebalanceRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsRebalanceResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsRebalanceRequest
match_id: str

Example: '{"match_id": "bZbrry5AImrZYfuI"}'
"""

result, error = rebalance(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
