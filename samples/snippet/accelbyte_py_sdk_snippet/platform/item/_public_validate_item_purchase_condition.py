import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_validate_item_purchase_condition
from accelbyte_py_sdk.api.platform.models import ItemPurchaseConditionValidateRequest
from accelbyte_py_sdk.api.platform.models import ItemPurchaseConditionValidateResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemPurchaseConditionValidateRequest
item_ids: List[str]

Example: '{"itemIds": ["xJuc8PvOtlAjui1O", "LSL9PQ0VbaPJd1Cd", "eB6fiDJ0YyaeaGIw"]}'
"""

result, error = public_validate_item_purchase_condition(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
