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

Example: '{"data": [{"itemIdentity": "MapV3bONSODFUNCY", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"FwSEAaNJdHPfOOtL": "96KOE5WrRDyuw8hg", "HwUkHj3XVwIQkwit": "6Oubf43K1w07Ybcs", "nscriLbc16rcK3vM": "nPMd47FUR8lZh54v"}}, {"itemIdentity": "NWojkChGFbuuMau1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"bzoJTiXLbMVhq0ls": "a82aB46XJI4LryQf", "SonU9fYfgNEkAyzp": "7WJ8sqH7sXzLktEm", "m7cCAryWu815ysGH": "I8qEd4PMEtTqQi1X"}}, {"itemIdentity": "uHUPZUTypzLoog4P", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"IgJPh47FrWaQYNNp": "GLoHYQC1gbQZckyh", "3wK6qGMbDhSS8MRG": "5vYQVLuhPiZpp67z", "fwzHOipiHLJjs7jk": "DVYRjJqSwJTvu60U"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
