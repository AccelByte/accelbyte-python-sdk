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

Example: '{"description": "MazLwV7oEhQEiusp", "groupIds": ["4ONUOkX0DOAr4IKe", "1hPsyMRZ9xUiSjiN", "sZhIMZVF0Lq0qfMt"], "title": "lT14MFYNuJqaULHg"}'
"""

result, error = create_reason(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
