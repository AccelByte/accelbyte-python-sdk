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
discount_config: DiscountConfig
Definition: DiscountConfig
    categories: List[DiscountCategory]
    Definition: List[DiscountCategory]
        category_path: str
        include_sub_categories: bool
    currency_code: str
    currency_namespace: str
    discount_amount: int
    discount_percentage: int
    discount_type: str
    items: List[DiscountItem]
    Definition: List[DiscountItem]
        item_id: str
        item_name: str
    restrict_type: str
    stackable: bool
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

Example: '{"description": "tHgjOWYPLiNn19Yn", "discountConfig": {"categories": [{"categoryPath": "a1bqY1HBA60Maa5a", "includeSubCategories": false}, {"categoryPath": "34LiXN2KODyD3sPi", "includeSubCategories": false}, {"categoryPath": "HcIGsOFLaQYnmi67", "includeSubCategories": false}], "currencyCode": "Wye59NvhH1MST1hZ", "currencyNamespace": "HEK24QsYAKlosur8", "discountAmount": 2, "discountPercentage": 100, "discountType": "PERCENTAGE", "items": [{"itemId": "r8kw5ujzZXwLkEvF", "itemName": "2a4u5wRgmwOXlhcJ"}, {"itemId": "Q00BIfaiI1xU5KTP", "itemName": "d7S0q0fndegNOW4u"}, {"itemId": "m0FYh9CpsrJK9F0x", "itemName": "5p9zOuMT4DeZkMTN"}], "restrictType": "NONE", "stackable": false}, "items": [{"extraSubscriptionDays": 92, "itemId": "wcv9qv6EINmVADzK", "itemName": "5vZ1zlK60fAPv4Qf", "quantity": 89}, {"extraSubscriptionDays": 96, "itemId": "jjzdY5KJL7RBgRT1", "itemName": "3KbfqPS1lyHHgROD", "quantity": 74}, {"extraSubscriptionDays": 62, "itemId": "tAA3lIB8Dc9CCSuW", "itemName": "1Qc0LBpFdXxlnaPx", "quantity": 55}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 70, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 94, "name": "l2tStsstIC1eiVlS", "redeemEnd": "1986-11-20T00:00:00Z", "redeemStart": "1987-10-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["k68ib0TbTxM31pMY", "OtbeivlfuwfVgxr1", "aJGWtlx5l0y7xUYG"]}'
"""

result, error = update_campaign(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
