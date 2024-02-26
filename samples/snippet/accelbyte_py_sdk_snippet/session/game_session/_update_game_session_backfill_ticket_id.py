import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import update_game_session_backfill_ticket_id
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import (
    ApimodelsUpdateGameSessionBackfillRequest,
)
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsUpdateGameSessionBackfillRequest
backfill_ticket_id: str

Example: '{"backfillTicketID": "4Un59ipQJzHk7AWd"}'
"""

result, error = update_game_session_backfill_ticket_id(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
