import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_item_type_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemTypeConfigCreate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemTypeConfigCreate
clazz: str
dry_run: bool
fulfillment_url: str
item_type: str
purchase_condition_url: str

Example: '{"clazz": "eBZNzGXV4xyrgyr2", "dryRun": true, "fulfillmentUrl": "0bXYce2XAdOz0qqs", "itemType": "COINS", "purchaseConditionUrl": "iRA3UlElMcy3OZSd"}'
"""

result, error = create_item_type_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
