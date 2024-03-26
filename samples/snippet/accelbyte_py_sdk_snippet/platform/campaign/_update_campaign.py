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

Example: '{"description": "Y0nKDkB7REjAhL5k", "items": [{"extraSubscriptionDays": 44, "itemId": "YyC3EwuxniHAf9DQ", "itemName": "ThjdUAUBmW3fXeYe", "quantity": 87}, {"extraSubscriptionDays": 32, "itemId": "x3EUe2LneDj8LNrM", "itemName": "yxoYtav7Dvm3N2Jh", "quantity": 69}, {"extraSubscriptionDays": 82, "itemId": "xkyghvz9FQG5ADTR", "itemName": "RuHHtAZhFEyjIiJp", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 85, "maxRedeemCountPerCode": 91, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 7, "name": "dzvxLkR7zHDyC85r", "redeemEnd": "1986-11-25T00:00:00Z", "redeemStart": "1998-07-04T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["DJNGGySRMySnmKro", "7KNOAvZwl86URH4s", "i8F419GoCyTiKlYD"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
