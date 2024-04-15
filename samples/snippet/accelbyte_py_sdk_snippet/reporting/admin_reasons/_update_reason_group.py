import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import update_reason_group
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReasonGroupResponse
from accelbyte_py_sdk.api.reporting.models import RestapiUpdateReasonGroupRequest

"""
body:
Definition: RestapiUpdateReasonGroupRequest
reason_ids: List[str]
title: str

Example: '{"reasonIds": ["ozHVYEw1Z3NkzRHr", "eZAmKWB6uEWuU6kG", "V72kk2uVMRi4pBHN"], "title": "GlTySYFgdwFYTVCb"}'
"""

result, error = update_reason_group(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
