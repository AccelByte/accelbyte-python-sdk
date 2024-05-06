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

Example: '{"reasonIds": ["IZqB0lrpaZjZXcTH", "txzQQd51CEBLvasO", "66cdykbNj1H7j1J0"], "title": "e3vQHCRiwWNAb8Eh"}'
"""

result, error = update_reason_group(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
