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

Example: '{"data": [{"itemIdentity": "BMBN7gdb7HvLZsaZ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"sGH4NPuC9FvfzUr7": "lBCyI0E1E5xPReOp", "OsYk2An328c8WVSg": "NpXj8dmkA7mshh3m", "40y35yrUIUujQ4jm": "ZCKGf7raikvGcxVN"}}, {"itemIdentity": "mYLNv9GqXX0aYpv2", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"UNSC7ofQ8GSUNOUM": "VBwAHOD0CDhfe6KF", "1FDEtCUV1RC9Mjzp": "t66vlgLcoW0Bl99A", "kDPJ2z2kBlu0znXC": "KvcjMSFEC4zsPyzT"}}, {"itemIdentity": "Uzy4AlwQziEOeM8s", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"kZRoNCB5zJp08Vyh": "C4pud2AbIp9PEPep", "jiCFVOzjLHz4RktH": "Uv8eWFtw3FnacH6n", "OAFO7IrzaSKExh1U": "gSzXp4BGVSwat7ww"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
