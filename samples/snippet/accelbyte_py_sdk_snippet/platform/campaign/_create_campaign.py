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

Example: '{"description": "7DVcnGZIgxPvhsyr", "items": [{"extraSubscriptionDays": 14, "itemId": "b2rULQoIwXGATYv2", "itemName": "yJiXIE7AFnKIY4Sb", "quantity": 28}, {"extraSubscriptionDays": 68, "itemId": "kSNArQ9Rklh6gt1S", "itemName": "TBM4Zt9dMRswCSKa", "quantity": 12}, {"extraSubscriptionDays": 38, "itemId": "7Hxrad8XH0Nvfarv", "itemName": "fgMLCJJ8v7MdaEwn", "quantity": 8}], "maxRedeemCountPerCampaignPerUser": 78, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 15, "maxSaleCount": 98, "name": "XzqU3elvnPkb9h9a", "redeemEnd": "1977-06-17T00:00:00Z", "redeemStart": "1980-06-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["RfLOH2ymjKEFWhSR", "UPP01NDTckSN3zyi", "OZ6qu1F9uy2V8a0i"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
