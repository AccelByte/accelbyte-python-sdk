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

Example: '{"category": "8kePCjjUZZq3f6bW", "description": "L8M3XAayiiyobIaJ", "gameSessionId": "QUQDYnbIR4CVIc55", "subcategory": "y0no681lxm8wUB9o", "userId": "98OWX8Jf5IHgW7hM"}'
"""

result, error = report_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
