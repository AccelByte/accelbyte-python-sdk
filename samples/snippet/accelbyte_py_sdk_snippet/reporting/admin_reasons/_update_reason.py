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

Example: '{"description": "SsTMlEOL5Rp2stO4", "groupIds": ["POVMjUNTIKk0sGBX", "hOk651VI1XrFQpU4", "BxqS4dvWY3Y29FVj"], "title": "acrplycFn5shfJ1G"}'
"""

result, error = update_reason(
    body=body,
    reason_id=reason_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
