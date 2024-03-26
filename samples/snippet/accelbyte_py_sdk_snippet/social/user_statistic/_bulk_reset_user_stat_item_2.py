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

Example: '[{"statCode": "Es5Ry1dF8n0o7UF4", "userId": "wjo9UBtAOoy83BBR"}, {"statCode": "TwZsTiK4wVNkHHpA", "userId": "8HbnNeh7MmKEfRwc"}, {"statCode": "QWssNOuCwtvx5twX", "userId": "3lRaR1VQ6kz2GHtb"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
