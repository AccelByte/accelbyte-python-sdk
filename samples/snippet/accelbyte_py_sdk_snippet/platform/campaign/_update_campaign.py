import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_campaign
from accelbyte_py_sdk.api.platform.models import CampaignInfo
from accelbyte_py_sdk.api.platform.models import CampaignUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CampaignUpdate
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

Example: '{"description": "zoQugANEJmp1oPZM", "items": [{"extraSubscriptionDays": 69, "itemId": "WcJ5b8BL8nU3VeZe", "itemName": "2BZs0PqWUicvN7UC", "quantity": 60}, {"extraSubscriptionDays": 81, "itemId": "oMCcxja2gpwiBhzn", "itemName": "8h0aQHhihbX1MG7x", "quantity": 92}, {"extraSubscriptionDays": 76, "itemId": "gc3LssGkqT7YKvNm", "itemName": "lERv9mWHJiXlzeBd", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 8, "maxRedeemCountPerCode": 78, "maxRedeemCountPerCodePerUser": 72, "maxSaleCount": 51, "name": "OYVp9bTCTnb9IBjc", "redeemEnd": "1978-06-12T00:00:00Z", "redeemStart": "1974-07-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["YpA8V81zMmdWIHzp", "WlnksDdWuk3h91fp", "wHAnoiWp3wZYYDwL"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
