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

Example: '{"tags": ["Fqoyqz1tr4AOfzoz", "JHJHujIL7vRGekl8", "AWJ9t4YOXAWCiShR"], "updatedAt": "cCs0tJG3kKUF0vlI", "value": {"EsVXuN3byvAT8dqt": {}, "3KF0ufnABoEDwFP3": {}, "jfFwV8nfbvlQWYpA": {}}}'
"""

result, error = admin_put_admin_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
