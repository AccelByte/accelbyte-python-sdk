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

Example: '[{"customAttributes": {"x2HfZEewmvmMBQ6v": {}, "8Ji2OYUKdPMaFCgd": {}, "e2HPRX43Qs5A6a2u": {}}, "serverCustomAttributes": {"Br589IJqMKjQR3DO": {}, "n6ljIE0LLc9Fhg5X": {}, "IUmxlAiKougIJ7Hp": {}}, "slotId": "U5dUDifBOqSr6iQD", "sourceItemId": "HQLM4D4HcgT4WVkw", "tags": ["CzUDGh2Pu25AaA95", "kDB2qXzb9ps84y7n", "06bGrce6sM5Imm9g"], "type": "oW7TAvi7aHXAQBN4"}, {"customAttributes": {"2FxyHgCiJC4U7DjG": {}, "VrEbUXJzMTlDhm4M": {}, "HLz3gx9nZwzNNDId": {}}, "serverCustomAttributes": {"FwQ7dJC3Eex9EuoQ": {}, "JOcJfivGSXlnbupa": {}, "Ys7A9Jb3lNPC2Cpg": {}}, "slotId": "cedVBzWKOBQFqLLB", "sourceItemId": "JXASx7LiHpO3qVxT", "tags": ["qYCcMzaMPPvvMOTn", "sMiE9PYAeD1QJm8R", "WHIR4ramrohvrmqb"], "type": "T1yHODjxjSo2ADHC"}, {"customAttributes": {"3OxL9YJtE1sqVdel": {}, "TA7zhuUOYfdoPgeD": {}, "mZ6LRS47WTFaKZxO": {}}, "serverCustomAttributes": {"2MU2qIl1xWufJnwk": {}, "ukUvemposIvRIdGT": {}, "a3EmIaW3VKLdM4pc": {}}, "slotId": "q5sHXpaGCZVtVAw5", "sourceItemId": "fxCtWSuSurmmMrIo", "tags": ["lwRUl9vAlQjBSxiC", "kYqM7BziUNG3L1c7", "PApmblVMg992ZFyX"], "type": "GRav2pTwMiSzGv94"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
