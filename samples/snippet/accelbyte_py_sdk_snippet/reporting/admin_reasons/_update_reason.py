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

Example: '{"description": "t6j652671y2idQC5", "groupIds": ["WzyyO3l2dlbRS11D", "yJGmGvhP8YRR0VeG", "Hkt1xkEWqZ6sLqDO"], "title": "hc6ZUm0vUwku9IRy"}'
"""

result, error = update_reason(
    body=body,
    reason_id=reason_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
