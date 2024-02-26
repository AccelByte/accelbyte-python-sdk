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

Example: '{"data": [{"itemIdentity": "KgeONnrLdeyXnO3K", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Qcqs4a9IViJL9KIs": "eyeLOpYXyX7RkDXs", "i18u5YUsXnfv4VbH": "KI8xYVFsXZhc5Pn4", "UvcpPBkkg0Zx1R8f": "OZDFYVGr0gh7OSZ8"}}, {"itemIdentity": "itLhmJdlbs1PBcLl", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"UdhvAFObU2RN1QMY": "eSeaGdbqJY3CkQXK", "hqQ52i1mYyh6Fist": "yJHCQnI1w3Yb8GoI", "JijRn2266I6pTGM6": "EetXVfA3cVyUf21b"}}, {"itemIdentity": "ysuXMFNsVpah3Uou", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"KYTc5sOBn6scgMhO": "t2H6eKvw85ga9WVx", "DcOH4khSkIKKnB5j": "0M5G7qtqEywh2o4J", "mTxTqtien1rpz0C0": "vk3y9no7nfFD3uNw"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
