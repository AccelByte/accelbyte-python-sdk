import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import search_sessions_v2
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1
from accelbyte_py_sdk.api.matchmaking.models import (
    ServiceGetSessionHistorySearchResponseV2,
)

result, error = search_sessions_v2(
    limit=limit,
    offset=offset,
    channel=channel,
    deleted=deleted,
    match_id=match_id,
    party_id=party_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
