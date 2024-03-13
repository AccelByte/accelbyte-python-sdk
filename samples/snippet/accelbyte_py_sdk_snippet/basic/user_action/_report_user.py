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

Example: '{"category": "vQXLE0BGHKxqsFQQ", "description": "eAmTactSK7fa2Ly8", "gameSessionId": "mRVzbcHcm00blte2", "subcategory": "Bl4D0Inv1F8qeTFK", "userId": "m6cmCM2MkPWonKfq"}'
"""

result, error = report_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
