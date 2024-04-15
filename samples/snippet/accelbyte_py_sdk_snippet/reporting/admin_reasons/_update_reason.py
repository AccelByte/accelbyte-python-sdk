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

Example: '{"description": "rxJ7E2Nl2S3wRCM8", "groupIds": ["uVWfhMfx61ygQtw0", "Ycn3Raycdnlefvqp", "gTO8nRWjeE2IdViL"], "title": "eSAkCTe59rQ4r7hY"}'
"""

result, error = update_reason(
    body=body,
    reason_id=reason_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
