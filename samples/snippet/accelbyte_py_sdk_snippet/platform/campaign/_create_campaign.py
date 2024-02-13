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

Example: '{"description": "95eQzdlRJiuavOCn", "items": [{"extraSubscriptionDays": 95, "itemId": "gPutAZq9dhizTUGZ", "itemName": "lcJ8pJCi28IraadU", "quantity": 63}, {"extraSubscriptionDays": 98, "itemId": "XmTjPqtVc0Tsb0Dd", "itemName": "tRGyDVEbQ2NTOd7d", "quantity": 48}, {"extraSubscriptionDays": 38, "itemId": "zyU9Va6r8vMITevD", "itemName": "WAWvJlCI4iWQTUKl", "quantity": 22}], "maxRedeemCountPerCampaignPerUser": 64, "maxRedeemCountPerCode": 30, "maxRedeemCountPerCodePerUser": 40, "maxSaleCount": 100, "name": "MQbkjpTeda3FW4m3", "redeemEnd": "1993-02-13T00:00:00Z", "redeemStart": "1991-08-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["ka8YKlbcRzJCqeUA", "j6A44pLIMicDPpjT", "7eNPqNpUz3OYDGJW"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
