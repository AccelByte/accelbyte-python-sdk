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

Example: '{"category": "FmqNIIPay5BaljFs", "description": "yukylDPqbtegf5YF", "gameSessionId": "2zevyFmrXn3sufQ9", "subcategory": "cg4Ow501gwL8CtWW", "userId": "oiOyf86WvpnyBUlQ"}'
"""

result, error = report_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
