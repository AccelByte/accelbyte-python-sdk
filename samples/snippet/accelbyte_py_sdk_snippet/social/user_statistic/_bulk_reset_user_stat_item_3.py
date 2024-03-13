import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_3
from accelbyte_py_sdk.api.social.models import BulkStatItemReset
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemReset]
stat_code: str

Example: '[{"statCode": "sybJToHdrfTkaPH2"}, {"statCode": "zEBuRk25GtEPIjyr"}, {"statCode": "nkoYUluXLWV66cFH"}]'
"""

result, error = bulk_reset_user_stat_item_3(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
