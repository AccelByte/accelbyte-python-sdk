import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_iap_item_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import IAPItemConfigInfo
from accelbyte_py_sdk.api.platform.models import IAPItemConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: IAPItemConfigUpdate
data: List[IAPItemEntry]
Definition: List[IAPItemEntry]
    item_identity: str
    item_identity_type: str
    platform_product_id_map: Dict[str, str]

Example: '{"data": [{"itemIdentity": "0imERqOSeq66Qimd", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"wrF8ydX0BehxZtwM": "sXyVWrJXVAbdfAD8", "iSr1v3NKVr9xbnZt": "0lXznCY9Et4pREOO", "ieCkvLQsvkvAMIai": "vyTRY4nSlvZFkJaL"}}, {"itemIdentity": "daWdLQQLF89nXxtn", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ucavsTNJzQDjNm12": "2Fcc8rgQhzGrLpxD", "frCps2idjkRGw8EP": "VJzCxVr3mC6QZmh7", "JlhFbMmPRUsJxjs0": "sHApzy3jZrBo7J7s"}}, {"itemIdentity": "7cnwozyOFBjoAVCD", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"lwZ3nrqlVnfzFMUr": "6r1kKQ40AJVZm0ea", "OvxDcFHmArj9BypY": "PAtowNKgg4vCqx6p", "asSOkY8o35rwHPKm": "6WgaOCHosvh7gcKw"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
