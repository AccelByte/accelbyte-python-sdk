import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_create_user_stat_items
from accelbyte_py_sdk.api.social.models import BulkStatItemCreate
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemCreate]
stat_code: str

Example: '[{"statCode": "FXEEbCKopu9grKG6"}, {"statCode": "ZBL6yRzBD8ljiiSH"}, {"statCode": "6UHW6y2fLQsGl7cT"}]'
"""

result, error = public_bulk_create_user_stat_items(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
