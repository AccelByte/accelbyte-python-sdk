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

Example: '{"clazz": "MFgHn4WyI5nAlGKY", "dryRun": true, "fulfillmentUrl": "hekhWkliIXXL5sQj", "purchaseConditionUrl": "IIJImFBCKHrcgocw"}'
"""

result, error = update_item_type_config(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
