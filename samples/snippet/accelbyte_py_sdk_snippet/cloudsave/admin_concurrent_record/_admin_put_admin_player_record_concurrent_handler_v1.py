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

Example: '{"tags": ["dk64gyDcrRqHLnmm", "v6jwxPM6wbqFSATf", "0RIrtKCsfOnxy7xs"], "updatedAt": "KAt4viY60F9vzFLu", "value": {"XKu906PLhGZ5aNJw": {}, "eHsPRwVkaEJ74UpE": {}, "qlJYrOx2sqIhX8Vz": {}}}'
"""

result, error = admin_put_admin_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
