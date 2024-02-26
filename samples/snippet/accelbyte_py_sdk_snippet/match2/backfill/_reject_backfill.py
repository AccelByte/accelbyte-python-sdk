import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import reject_backfill
from accelbyte_py_sdk.api.match2.models import ApiBackFillRejectRequest
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiBackFillRejectRequest
proposal_id: str
stop: bool

Example: '{"proposalId": "XgP6tpKLs0EuvnAv", "stop": false}'
"""

result, error = reject_backfill(
    body=body,
    backfill_id=backfill_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
