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

Example: '{"category": "TyR2wnszTG8Uukrg", "description": "6rFqXzWaWMTdvZgf", "gameSessionId": "9UShJDbzM6gIhHWn", "subcategory": "5mlvCDckpqAYSTpc", "userId": "GyJfKsWt1zaudZ8e"}'
"""

result, error = public_report_user(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
