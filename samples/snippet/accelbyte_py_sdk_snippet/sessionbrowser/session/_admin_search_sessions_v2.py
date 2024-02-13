import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import admin_search_sessions_v2
from accelbyte_py_sdk.api.sessionbrowser.models import (
    ModelsGetSessionHistorySearchResponseV2,
)
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorV1

result, error = admin_search_sessions_v2(
    limit=limit,
    offset=offset,
    channel=channel,
    deleted=deleted,
    match_id=match_id,
    party_id=party_id,
    session_type=session_type,
    status=status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
