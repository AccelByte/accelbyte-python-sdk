import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import accept_backfill
from accelbyte_py_sdk.api.match2.models import ApiBackFillAcceptRequest
from accelbyte_py_sdk.api.match2.models import ModelsGameSession
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiBackFillAcceptRequest
proposal_id: str
stop: bool

Example: '{"proposalId": "7k3BzbvxpE8qXYtb", "stop": false}'
"""

result, error = accept_backfill(
    body=body,
    backfill_id=backfill_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
