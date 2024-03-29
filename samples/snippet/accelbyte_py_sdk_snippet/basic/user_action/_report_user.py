import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import report_user
from accelbyte_py_sdk.api.basic.models import UserReportRequest
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserReportRequest
category: str
description: str
game_session_id: str
subcategory: str
user_id: str

Example: '{"category": "ZM7OshNrWFuw56r9", "description": "MawsUdwH0n4vi6eN", "gameSessionId": "eSjsMYyPD9iiklTJ", "subcategory": "RjCxbspTEEOsPXwa", "userId": "PlmdOOyz7kjlP6nD"}'
"""

result, error = report_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
