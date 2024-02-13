import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import get_backfill_proposal
from accelbyte_py_sdk.api.match2.models import ApiBackfillProposalResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = get_backfill_proposal(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
