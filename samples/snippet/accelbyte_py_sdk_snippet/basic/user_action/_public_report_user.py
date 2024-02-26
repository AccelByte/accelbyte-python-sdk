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

Example: '{"category": "Mok6LahCb0rmD2Gl", "description": "SoZRsId96vaU2INg", "gameSessionId": "lTE2E1heR33UzwcY", "subcategory": "P8wb7V9ZC21AG0Vv", "userId": "bqLcNnPQ5wxG8AMB"}'
"""

result, error = public_report_user(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
