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

Example: '{"description": "z2H6mZn1AUmZ3413", "items": [{"extraSubscriptionDays": 23, "itemId": "1Nq8cFgLJOZPFszu", "itemName": "QY7IgierJBsN6EOZ", "quantity": 27}, {"extraSubscriptionDays": 95, "itemId": "VoudtSqMdrSFb4Kq", "itemName": "F7AZ3bvB461BjpEK", "quantity": 39}, {"extraSubscriptionDays": 49, "itemId": "KDJn4zDzNKxTZjfP", "itemName": "7FF3T3MFFK6b8Wp9", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 11, "maxRedeemCountPerCode": 37, "maxRedeemCountPerCodePerUser": 33, "maxSaleCount": 75, "name": "t8Xh3uIItabQ7kuq", "redeemEnd": "1985-07-17T00:00:00Z", "redeemStart": "1976-03-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["iQGEwf09IlTqGiJ1", "cGk2hhFbzq4q4rK5", "vsYd1Y4zUa2y53sy"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
