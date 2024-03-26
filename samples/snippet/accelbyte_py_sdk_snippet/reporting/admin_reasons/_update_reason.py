import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import update_reason
from accelbyte_py_sdk.api.reporting.models import RestapiAdminReasonResponse
from accelbyte_py_sdk.api.reporting.models import RestapiCreateReasonRequest
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

"""
body:
Definition: RestapiCreateReasonRequest
description: str
group_ids: List[str]
title: str

Example: '{"description": "6rexP7UtTmJtku18", "groupIds": ["jiZ8I57EaBW2Ry2G", "KQo7p9GBw5yeQYfl", "9eIKiehzlc53dasF"], "title": "NmUd9EJWbITmfOZL"}'
"""

result, error = update_reason(
    body=body,
    reason_id=reason_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
