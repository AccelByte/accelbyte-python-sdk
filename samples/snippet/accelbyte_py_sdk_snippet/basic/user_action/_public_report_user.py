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

Example: '{"category": "tjjmHnaFbmSh0KvQ", "description": "GmD6OJTmW0mIuf5l", "gameSessionId": "Cn5ccGdjPmabb1X4", "subcategory": "hE9zTThGzVqjU5Dx", "userId": "oPnMIPE9VGX3O1Zv"}'
"""

result, error = public_report_user(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
