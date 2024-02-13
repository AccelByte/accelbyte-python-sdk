import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_item_type_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemTypeConfigInfo
from accelbyte_py_sdk.api.platform.models import ItemTypeConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemTypeConfigUpdate
clazz: str
dry_run: bool
fulfillment_url: str
purchase_condition_url: str

Example: '{"clazz": "s9Kjr4V0NVa5KBZ2", "dryRun": false, "fulfillmentUrl": "edlO21F3JIiDtIg0", "purchaseConditionUrl": "M09kc4uDwAKBdc5S"}'
"""

result, error = update_item_type_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
