import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_report_user
from accelbyte_py_sdk.api.basic.models import ErrorEntity
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

Example: '{"category": "1NHWm0tr1DN9WAn5", "description": "QptXVHitXVOxhCs8", "gameSessionId": "xs6foAqsYCPM0OiZ", "subcategory": "N5UkIRNM2XgpoICD", "userId": "dkkHIMKx7gqFcQyD"}'
"""

result, error = public_report_user(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
