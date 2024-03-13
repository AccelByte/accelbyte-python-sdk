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

Example: '[{"customAttributes": {"2hL1NOm0PttbVX4s": {}, "x70JSTvkRZ9h2T2r": {}, "sFx9XcWgmQyVVewd": {}}, "serverCustomAttributes": {"DxQMEwuvG8DkkPJQ": {}, "My45d7d3l0q5mMMk": {}, "Wqy3ioxmZjOJu4HT": {}}, "slotId": "Dhq9JDzUtVA9Z3OV", "sourceItemId": "e0jInpMyFxnCO8J2", "tags": ["sDdwXrzbxIgHc96P", "ypfuMfILgJengRmt", "Nq4jrGr8rvZQafpU"], "type": "M20bVPEbSdOIwPHK"}, {"customAttributes": {"a0TvOEpaLwB5JlaZ": {}, "sA9OflwvJiv0sK5F": {}, "ILYppFG24BqsOL9n": {}}, "serverCustomAttributes": {"GzsKcM8JaXcVter3": {}, "SKnT1s3w7kqhvCSH": {}, "YM27fKxtmfJFkaz5": {}}, "slotId": "EvJQWB1qQTBWZXZ0", "sourceItemId": "Z7CeCzdmQXFgFpGR", "tags": ["33byJMD9MOgPvw74", "Q4nD4oAhzghbIhTz", "LJQHHFHxliAcfCqJ"], "type": "oPSzKKM7w1vpdcB7"}, {"customAttributes": {"s5WXsELf5DKonCVv": {}, "IrhRPg4TjCz0lA0p": {}, "IvPL01K6SIC06Y3s": {}}, "serverCustomAttributes": {"jig4fL7N0mPQ6R2i": {}, "Q7YzLxYIvNc2lLPn": {}, "rIDnPuYncD6UQMUR": {}}, "slotId": "bWZlVVPvcxU1fC2x", "sourceItemId": "NlHmyjl5UsW7TaMA", "tags": ["eL2NVDVKYFXbMyxw", "yiwFPk6ZOxhyTCvF", "jQptiqKA7binhEhT"], "type": "ES9Cli21eybec1NW"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
