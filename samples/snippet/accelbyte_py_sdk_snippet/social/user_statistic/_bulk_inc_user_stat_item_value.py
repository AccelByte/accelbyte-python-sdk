import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value
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

Example: '[{"inc": 0.34030969658011856, "statCode": "4T8zjJxZiDlOYgEG", "userId": "DAw8dJoJdynz8YY3"}, {"inc": 0.4564411253509445, "statCode": "mnw6FGPrWdsVN86K", "userId": "F50aREmk82yuSE7L"}, {"inc": 0.3906527329043513, "statCode": "hWORgBy723xdpcAs", "userId": "UvHAkLOgzujqBSTn"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
