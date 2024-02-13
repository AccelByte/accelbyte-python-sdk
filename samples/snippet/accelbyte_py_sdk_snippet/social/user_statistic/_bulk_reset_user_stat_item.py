import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemReset
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemReset]
stat_code: str
user_id: str

Example: '[{"statCode": "J5I9HmF1J2sbiaxM", "userId": "1Sukr1zYyOcms55o"}, {"statCode": "AxStI8vaEOmweVDY", "userId": "J5Tbk2hAzOySuhTN"}, {"statCode": "bXAsmfwADRFZKXQb", "userId": "Z51h6gKdAVhGoDNS"}]'
"""

result, error = bulk_reset_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
