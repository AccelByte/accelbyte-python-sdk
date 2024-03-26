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

Example: '{"payload": {"SJ04GXnFw10PDD0X": {}, "0AWua5G7TyeafuNC": {}, "1HLRCD7eU5rPKELZ": {}}}'
"""

result, error = check_event_condition(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
