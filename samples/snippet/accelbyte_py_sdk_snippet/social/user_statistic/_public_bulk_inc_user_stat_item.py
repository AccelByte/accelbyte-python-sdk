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

Example: '[{"inc": 0.6676967428883178, "statCode": "peWe4w4jEXMkXg5c", "userId": "gxfBKGknOvGYNyyn"}, {"inc": 0.9860741539659947, "statCode": "tNB9ItGAknuTIzph", "userId": "aujLoio05Kn5WzxP"}, {"inc": 0.6671939159174982, "statCode": "dj23MwRAm5RH2uPk", "userId": "vgdjxKHBCgFyK2gG"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
