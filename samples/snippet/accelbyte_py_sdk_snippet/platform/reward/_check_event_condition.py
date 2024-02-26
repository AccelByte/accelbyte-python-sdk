import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import check_event_condition
from accelbyte_py_sdk.api.platform.models import ConditionMatchResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import EventPayload

"""
body:
Definition: EventPayload
payload: Dict[str, Any]

Example: '{"payload": {"loGnYuqnV2Q79PLj": {}, "it2Ae2cDHmJEFp9g": {}, "fJWUtnq3U1hVuaR8": {}}}'
"""

result, error = check_event_condition(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
