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

Example: '[{"statCode": "FHJ9jWH9LCBbsujG", "userId": "560V9nXnNIXUimGe"}, {"statCode": "tk65mKmYJj5Vjlxl", "userId": "mn4MdlAcI8UNbvq6"}, {"statCode": "tSMdQiGrxSEDn7V3", "userId": "V0Ovf1A8BbQN1pDc"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
