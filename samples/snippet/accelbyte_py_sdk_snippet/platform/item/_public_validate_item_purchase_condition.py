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

Example: '{"itemIds": ["v9e1KuTjQE3KMwzQ", "NoV9ikw3kUS1uc5H", "QE1UPuYKHAC0EL0p"]}'
"""

result, error = public_validate_item_purchase_condition(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
