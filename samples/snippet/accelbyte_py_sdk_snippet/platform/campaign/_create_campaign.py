import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_campaign
from accelbyte_py_sdk.api.platform.models import CampaignCreate
from accelbyte_py_sdk.api.platform.models import CampaignInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CampaignCreate
description: str
items: List[RedeemableItem]
Definition: List[RedeemableItem]
    extra_subscription_days: int
    item_id: str
    item_name: str
    quantity: int
max_redeem_count_per_campaign_per_user: int
max_redeem_count_per_code: int
max_redeem_count_per_code_per_user: int
max_sale_count: int
name: str
redeem_end: str
redeem_start: str
redeem_type: str
status: str
tags: List[str]
type_: str

Example: '{"description": "48DIzUdj9ruFcQYA", "items": [{"extraSubscriptionDays": 49, "itemId": "iLEC5FQgEAPpwUIW", "itemName": "PVxGe46ied08N7w8", "quantity": 27}, {"extraSubscriptionDays": 18, "itemId": "m2URDkIovivX73VM", "itemName": "bWzYzVK4yZmLL8FS", "quantity": 62}, {"extraSubscriptionDays": 55, "itemId": "BM0qfItEqtM4oedG", "itemName": "ojjotcs8sIVgq0r7", "quantity": 97}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 39, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 16, "name": "eUYzX0wv69FGyo4e", "redeemEnd": "1997-07-07T00:00:00Z", "redeemStart": "1972-05-23T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["uB4510zW3X6kTqWf", "cM7eUdlG061Krg2g", "fJwLNzBOAmofcXwG"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
