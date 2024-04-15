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

Example: '{"clazz": "ETtN6YRivGuRiIqn", "dryRun": true, "fulfillmentUrl": "kF9MpcsDU6PbA4B4", "purchaseConditionUrl": "u9iNrLYzYYqR6fXt"}'
"""

result, error = update_item_type_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
