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

Example: '{"payload": {"Irb6sDt4CuEkx3O1": {}, "djphm8PI8f43uKA3": {}, "FYNAj3rhpTaCSerY": {}}}'
"""

result, error = check_event_condition(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
