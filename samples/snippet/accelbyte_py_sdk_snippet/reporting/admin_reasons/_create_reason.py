import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import create_reason
from accelbyte_py_sdk.api.reporting.models import RestapiAdminReasonResponse
from accelbyte_py_sdk.api.reporting.models import RestapiCreateReasonRequest
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

"""
body:
Definition: RestapiCreateReasonRequest
description: str
group_ids: List[str]
title: str

Example: '{"description": "48TcTDNKiqBA5LHk", "groupIds": ["rnJPWFPG4wgQVONN", "Qt3IGhBp1gFTk6b8", "HDV6LFGloEIXw0hq"], "title": "V4SS4N7FeBmkV1FX"}'
"""

result, error = create_reason(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
