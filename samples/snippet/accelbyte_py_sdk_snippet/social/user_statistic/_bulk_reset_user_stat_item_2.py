import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemReset
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemReset]
stat_code: str
user_id: str

Example: '[{"statCode": "8qjgNqv21AKIdwcn", "userId": "S3FvqR71pY9b1RnR"}, {"statCode": "sXN8jDSnL16ALHaj", "userId": "0VRSSC7WwDRI41Au"}, {"statCode": "bWCVYhXAi8Z16vfi", "userId": "ZJxOCHT5wQcqdHgn"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
