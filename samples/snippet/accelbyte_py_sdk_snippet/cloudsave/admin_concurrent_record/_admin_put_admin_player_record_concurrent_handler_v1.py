import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_put_admin_player_record_concurrent_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsAdminPlayerConcurrentRecordRequest,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerRecordConcurrentUpdateResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminPlayerConcurrentRecordRequest
tags: List[str]
updated_at: str
value: Dict[str, Any]

Example: '{"tags": ["b7dj7XlvgX8m7fId", "XcBHA8JmWQD4DDrg", "eJ98jVAp41JbqhB9"], "updatedAt": "b138HWDi7SOy8T7T", "value": {"xN1pSRvgJYHkhZXE": {}, "lbi9kaqpVdUuIR0X": {}, "x8xuYu1a6XwT2vws": {}}}'
"""

result, error = admin_put_admin_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
