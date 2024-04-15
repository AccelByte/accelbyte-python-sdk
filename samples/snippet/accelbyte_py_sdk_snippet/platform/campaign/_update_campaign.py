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

Example: '{"description": "WkcUv1q3EbQoVXeP", "items": [{"extraSubscriptionDays": 65, "itemId": "2mQSilcHDgDnGtKo", "itemName": "dYYCW5DCtfmm9gA5", "quantity": 54}, {"extraSubscriptionDays": 78, "itemId": "qRvAtwGdn9Qxweab", "itemName": "ktD4L7BAR1mzMaL9", "quantity": 73}, {"extraSubscriptionDays": 53, "itemId": "ypN7db7jVDxRSrEg", "itemName": "VkhLRGFJdPh1ZzFT", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 40, "maxRedeemCountPerCode": 65, "maxRedeemCountPerCodePerUser": 74, "maxSaleCount": 65, "name": "5oYuIWU9ibFhWOWn", "redeemEnd": "1980-05-26T00:00:00Z", "redeemStart": "1979-07-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["UaixYuaBLW3820vM", "oKL6f37jIUhIPfKj", "F1ffwrD7mGfnsV3R"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
