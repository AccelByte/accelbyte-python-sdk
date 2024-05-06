import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import validate_item_purchase_condition
from accelbyte_py_sdk.api.platform.models import ItemPurchaseConditionValidateRequest
from accelbyte_py_sdk.api.platform.models import ItemPurchaseConditionValidateResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemPurchaseConditionValidateRequest
item_ids: List[str]

Example: '{"itemIds": ["Li3dw788fVIjvsJr", "qPMqtDgpPPDuptEY", "loWOnWIGsRNoXyM2"]}'
"""

result, error = validate_item_purchase_condition(
    user_id=user_id,
    body=body,
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
