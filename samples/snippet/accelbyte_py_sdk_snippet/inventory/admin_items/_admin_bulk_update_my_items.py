import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_bulk_update_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsAdminUpdateItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsAdminUpdateItemReq]
custom_attributes: Dict[str, Any]
server_custom_attributes: Dict[str, Any]
slot_id: str
source_item_id: str
tags: List[str]
type_: str

Example: '[{"customAttributes": {"N7Iq5RnGZZVRKYen": {}, "vHdRkMD0OXGbQUUi": {}, "iT6NZ5ZOFUah4E0e": {}}, "serverCustomAttributes": {"tpyb2WCASHChYtNG": {}, "Ado9Qeexxv8RfaRo": {}, "jWwbS75ZsdcccKS1": {}}, "slotId": "S7pyZkiOCTi5CJtu", "sourceItemId": "NAdkQhbDV79QDhrn", "tags": ["AyjRo0QQpp7KQDFO", "QVGaegLRBMIyij8V", "aVsSnxyvx0mQY0Nf"], "type": "SfDTmtl4C7pEvB8W"}, {"customAttributes": {"c8FqBN2X5ymivChr": {}, "n8P9hh1QGt6P3Qso": {}, "Q3mOIN9DOUtmA1hh": {}}, "serverCustomAttributes": {"aEWD2kBvGASITJKQ": {}, "Hw68sPt3bmtw0dCd": {}, "ecUdNFDUq6tjec74": {}}, "slotId": "XNRehzri7msErj35", "sourceItemId": "xC6RpRq2iI8tXTbX", "tags": ["Dz0jdYGB2mrwVVhH", "xtkCnEaL6BddTJhw", "TdUTAEBusJtogGtj"], "type": "pJTp9QfOYumS64CI"}, {"customAttributes": {"s37YMyCaCAjdEOOC": {}, "eDs4OSVz6GcjNLMx": {}, "S9rDdSs8CsUx4l03": {}}, "serverCustomAttributes": {"0qdWDM7tLgz432KB": {}, "lAPLmO1Wo6X7A3xt": {}, "gVXzbuv9O6DylBDP": {}}, "slotId": "aJzujEHys6O5s2qP", "sourceItemId": "8fG4eLP4DL7RWavF", "tags": ["QbcHlxVK7Rhbmv8G", "4KhqCKx92NCwQt39", "QmdwuGJi0MrKGnDU"], "type": "QvaCYAaXUSHY7CaV"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
