import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemInc
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemInc]
inc: float
stat_code: str
user_id: str

Example: '[{"inc": 0.9357062199842963, "statCode": "PqvaKgSKJSD6dlcG", "userId": "nlNoecTXNzTCDkSr"}, {"inc": 0.11348321275630857, "statCode": "WFgOGvZwGZPl1U59", "userId": "S8ud5K7jtbw0V0OR"}, {"inc": 0.2281378026664872, "statCode": "84G6lXo6kJoXfHci", "userId": "dIAFtJFxnddu4nN9"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
