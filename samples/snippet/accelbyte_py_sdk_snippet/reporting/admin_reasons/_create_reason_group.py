import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import create_reason_group
from accelbyte_py_sdk.api.reporting.models import RestapiCreateReasonGroupRequest
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReasonGroupResponse

"""
body:
Definition: RestapiCreateReasonGroupRequest
reason_ids: List[str]
title: str

Example: '{"reasonIds": ["2UFpkNdTJNeJeDBL", "gU1POrvHc2KhP8Q7", "YVlyKhFpT4DHZzBj"], "title": "jFAxrjJhZPadJjtX"}'
"""

result, error = create_reason_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
