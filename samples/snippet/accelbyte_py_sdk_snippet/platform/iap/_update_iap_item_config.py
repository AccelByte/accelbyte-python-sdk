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

Example: '{"data": [{"itemIdentity": "BK0xcKaUXM1Edfgq", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"O30VqvXiu4zQdjyu": "hm3HTnH4BZvZU9k5", "o8oJyrasEGseTMQK": "Eq2iPU1w1EeQWdeL", "uvFsE8Y1XTxeRDlG": "oGDjZLe0OCbA3t7k"}}, {"itemIdentity": "Ml79NhMdNBicNPJo", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aeUG90npwSENNCJj": "BnGQiPEcVAHDo7vt", "eykZX6thmZQ66knc": "SsiL753AhNMM8wo7", "6bP6lQMBVvX5TTyV": "RsXBlF7Pu6CAsGkJ"}}, {"itemIdentity": "D1yLUCUlvFxnRTEb", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"zC72rvkSR9Kfl6Bu": "idjVwkz9AWioAOBs", "8jPIiVMEgIrXU148": "jWaT79tOrDGIF5wF", "DysTk4zHUP4Evsak": "FTg8YRVA5zoN3Hek"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
