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

Example: '{"description": "SAQ7tCau9dYdaXSs", "groupIds": ["xfvytqGaPOAtooPU", "dHbQUEKUHUmWGxey", "Fxz3w1l5I8XQ546c"], "title": "rwAGjTFLdqpok5am"}'
"""

result, error = create_reason(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
