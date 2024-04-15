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

Example: '{"description": "WHjfemo5slDl4qi8", "items": [{"extraSubscriptionDays": 37, "itemId": "J3Fi0duPArhBdTGI", "itemName": "MsLG9OriIzOb6coY", "quantity": 86}, {"extraSubscriptionDays": 73, "itemId": "yfB7AcZIpXaU0URI", "itemName": "Ov7aykXFLR5bjK9K", "quantity": 30}, {"extraSubscriptionDays": 93, "itemId": "Sbv76hAcZCfJ9eiI", "itemName": "vZgUwRzP0pHPE7JF", "quantity": 62}], "maxRedeemCountPerCampaignPerUser": 79, "maxRedeemCountPerCode": 95, "maxRedeemCountPerCodePerUser": 53, "maxSaleCount": 3, "name": "HnhPBmOrNlmx82Rg", "redeemEnd": "1978-03-15T00:00:00Z", "redeemStart": "1998-02-20T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["dwUlmBsfX4D2WfnM", "YauogjDAuptSvLPY", "UdzXoaF7NVIXcB20"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
