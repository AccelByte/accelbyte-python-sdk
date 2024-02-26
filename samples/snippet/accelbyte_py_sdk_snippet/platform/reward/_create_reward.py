import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_reward
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RewardCreate
from accelbyte_py_sdk.api.platform.models import RewardInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: RewardCreate
description: str
event_topic: str
max_awarded: int
max_awarded_per_user: int
namespace_expression: str
reward_code: str
reward_conditions: List[RewardCondition]
Definition: List[RewardCondition]
    condition: str
    condition_name: str
    event_name: str
    reward_items: List[RewardItem]
    Definition: List[RewardItem]
        duration: int
        end_date: str
        identity_type: str
        item_id: str
        quantity: int
        sku: str
user_id_expression: str

Example: '{"description": "EdLR36MwRlWbsmkW", "eventTopic": "j44Ckcsz1I6PiQVU", "maxAwarded": 76, "maxAwardedPerUser": 54, "namespaceExpression": "fFJu5k7DswaRu86r", "rewardCode": "h6jHCVe6dqFEjoKC", "rewardConditions": [{"condition": "S0Ciz0EmKcsdcFBO", "conditionName": "7zodnUyqQ3yNWHzI", "eventName": "ca3Tmx3pwhHIvDl4", "rewardItems": [{"duration": 88, "endDate": "1975-03-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MVD4BA3Zv0WNx51W", "quantity": 68, "sku": "93m64e0lMUSoArsS"}, {"duration": 31, "endDate": "1985-01-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "oxYxFYrhx9KvoZyb", "quantity": 81, "sku": "qiU40J7LpBwNW8Yv"}, {"duration": 10, "endDate": "1991-10-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "lzbl8dvFTxnlev3B", "quantity": 2, "sku": "3ZymgrC9S7RqcNhW"}]}, {"condition": "L65CqGBn0KqIVXus", "conditionName": "JHWc1qSBsS7u9CYb", "eventName": "W5XpLyLnJfYLQz4Z", "rewardItems": [{"duration": 31, "endDate": "1993-01-19T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "C7bEjIuVG7PA299i", "quantity": 95, "sku": "POiC2bkAI2IRk3dj"}, {"duration": 91, "endDate": "1976-05-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZubQwDvFb9KRKCkv", "quantity": 48, "sku": "TEVzgelstaMBQzct"}, {"duration": 87, "endDate": "1981-04-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NVNeNuHEdFnmMgHw", "quantity": 86, "sku": "jvzFtWz7pNxbFJqd"}]}, {"condition": "48kl9utoNbQmHFaG", "conditionName": "b6SkyKEFZhZ7qufe", "eventName": "WwjQzzmzXfL360m3", "rewardItems": [{"duration": 14, "endDate": "1998-10-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "W6TDnaOrMApRuIXo", "quantity": 55, "sku": "2bS3bkr39bMeUPs5"}, {"duration": 52, "endDate": "1971-11-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5JUaK5hZzE6cGD31", "quantity": 85, "sku": "QPh4enD3D0iBsLr5"}, {"duration": 88, "endDate": "1995-11-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "U7m7L9TgByUx8fFg", "quantity": 59, "sku": "Dd84DxbhhtuBIPbB"}]}], "userIdExpression": "Zd1l5MSEBAsBknxU"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
