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

Example: '[{"customAttributes": {"UHEiTPvYfzCePzyu": {}, "fgBpbUYxyahTbT95": {}, "yjbvuWo7PHzEY1Sc": {}}, "serverCustomAttributes": {"tXCchcls5zemwa1i": {}, "qcKvU09LXV5jNveW": {}, "0yuQFIZooKyQiBtd": {}}, "slotId": "3CtGF6KHu1nH6kj3", "sourceItemId": "XLjq4HaaqNGI0Cp1", "tags": ["Htpue5yUBczZMLCl", "ZJHehLlZ1gMXJ2Qj", "z9oogq92w7LrMr2u"], "type": "3qfdMljWZTXgLxBe"}, {"customAttributes": {"AEIc2oPggtyefctu": {}, "S2S6OTd38wyvp6QI": {}, "EFkc3uOonrM420gN": {}}, "serverCustomAttributes": {"g1f70a8WuqRpECmy": {}, "daLt9GTOf9tr7jXu": {}, "d7LsxtLzzjhWW0vX": {}}, "slotId": "s1djdKEPl138SrG8", "sourceItemId": "W19Lzm3dRe82IANS", "tags": ["A6cJwd0s2RQfErzm", "yedBVmxF2lesta9l", "hBwZkXhSz17cVfTn"], "type": "ET718GGz7KFvjgID"}, {"customAttributes": {"YqRUXfvF3a1MkcFG": {}, "RDh0xfIcQqcxSIzC": {}, "NN5VR31c4XCME0BL": {}}, "serverCustomAttributes": {"xMQ83NNZC0g4rP9o": {}, "lzWZd7eQTcPYBToE": {}, "cMkWCyINbXTCsnrX": {}}, "slotId": "2VltU2z2HiY6DeZV", "sourceItemId": "Xrau9J4LkkyaJYr4", "tags": ["c9LwIlJeGfH4816J", "fZq760pjyZJDxncP", "nHE8PFvucDckpIIQ"], "type": "hI25zRhM1KU0GbZZ"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
