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

Example: '{"description": "5sOfUdm2BWC7sg6I", "items": [{"extraSubscriptionDays": 54, "itemId": "UJDHQd0tjcjdeLI3", "itemName": "u8yjP1rH9EmD3M5x", "quantity": 10}, {"extraSubscriptionDays": 2, "itemId": "WuR6qfgKF9AiU9dy", "itemName": "n7Ca6T3bXFvRdmMr", "quantity": 57}, {"extraSubscriptionDays": 24, "itemId": "iKSZhgD7DJBV30Tk", "itemName": "dphqbOH1hOJ5EYGV", "quantity": 57}], "maxRedeemCountPerCampaignPerUser": 86, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 55, "name": "59rUniO2UJhE34gt", "redeemEnd": "1996-04-26T00:00:00Z", "redeemStart": "1980-03-11T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["TfIkYBN2G8UGpecv", "xHPDJNdHIszBIi56", "SNfMts3x9lBe08l9"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
