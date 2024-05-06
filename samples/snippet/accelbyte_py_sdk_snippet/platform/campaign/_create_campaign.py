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
type_: str

Example: '{"description": "hO0GkHgBgtDmECgH", "discountConfig": {"categories": [{"categoryPath": "AxBD1zT6DqVFi7pI", "includeSubCategories": false}, {"categoryPath": "e1nj9Xlc2ARkyfwD", "includeSubCategories": false}, {"categoryPath": "p6VPS6XdtYTQMlCd", "includeSubCategories": false}], "currencyCode": "YJEWsVmJdvNjGQta", "currencyNamespace": "mjrTBWDrq2tDi5N8", "discountAmount": 19, "discountPercentage": 37, "discountType": "AMOUNT", "items": [{"itemId": "PpRF365imDOG5Zmy", "itemName": "Y2axZsfKlEBNHnV0"}, {"itemId": "74XeTayomJRjUdoI", "itemName": "PUHWwzM1WgCqv7OV"}, {"itemId": "ledOgb2sT2IQWI8M", "itemName": "nn0DFmEiaHXBDRLi"}], "restrictType": "NONE", "stackable": true}, "items": [{"extraSubscriptionDays": 49, "itemId": "axVmjRqSpVPa5WFN", "itemName": "OykdmshfB6OyJM32", "quantity": 51}, {"extraSubscriptionDays": 88, "itemId": "W97CZfuEANEn2hUD", "itemName": "zAbCCYvM51eqmshB", "quantity": 68}, {"extraSubscriptionDays": 90, "itemId": "gIxamUvAeMpDGdAr", "itemName": "SHHxllY48e7QY4U7", "quantity": 16}], "maxRedeemCountPerCampaignPerUser": 33, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 98, "maxSaleCount": 51, "name": "fwkGbQKfZeKaS4YR", "redeemEnd": "1982-05-18T00:00:00Z", "redeemStart": "1978-05-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["pcJqLbxVreZIIvkS", "UxiQueZ9zGns9ttM", "G8Pj6DJ84Ous7Crf"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
