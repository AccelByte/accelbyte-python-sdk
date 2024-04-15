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

Example: '{"category": "LXVuUgHTrlvhzR6n", "description": "dvj723Qw4t0b1KYg", "gameSessionId": "E4YvjTJwvl8nfenq", "subcategory": "qix7msXSkpOFMqy8", "userId": "BTSzu5TpL3dXPFIN"}'
"""

result, error = report_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
