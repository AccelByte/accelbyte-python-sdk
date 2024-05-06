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

Example: '[{"statCode": "gOPl1XUvzNLO0tKe", "userId": "GWXY9TqaHS6pMgGA"}, {"statCode": "6oenCJsEsrLHhRjn", "userId": "8K3Rbe5vNtr7VnAI"}, {"statCode": "vaT2kW8V1FYQuJfD", "userId": "Dp6NNj8CRGf5NNIL"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
