import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_reward
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RewardInfo
from accelbyte_py_sdk.api.platform.models import RewardUpdate

"""
body:
Definition: RewardUpdate
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

Example: '{"description": "AvV2xWyb9GLk2cEC", "eventTopic": "FZpiTfLaPb4hOHCx", "maxAwarded": 67, "maxAwardedPerUser": 51, "namespaceExpression": "YEhngVqGqB01OFc8", "rewardCode": "EL5Sgn0MCuMCqzE4", "rewardConditions": [{"condition": "AC9SblmaDcKSjv1P", "conditionName": "KgX0rZYNM94y6Gcb", "eventName": "YMCzxRO4NOhCyqZw", "rewardItems": [{"duration": 11, "endDate": "1988-08-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fCScSkKEhZtqYRiT", "quantity": 74, "sku": "R42jlguiVr8yLACH"}, {"duration": 27, "endDate": "1999-05-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "aQFAEyfleUqVlQGW", "quantity": 20, "sku": "6VumH4L2SryFej3y"}, {"duration": 99, "endDate": "1985-09-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "o5F5YFJFPM9jYxki", "quantity": 9, "sku": "PsCVedoWjUFLRbAa"}]}, {"condition": "bfGTxJP3Aj9KQxTS", "conditionName": "2iUia8sm6Xn7HDVl", "eventName": "RhKJC9AHri4Po851", "rewardItems": [{"duration": 52, "endDate": "1971-05-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Kt8zcfT4HYI86twD", "quantity": 64, "sku": "KQVNHbBMArV4Lot6"}, {"duration": 75, "endDate": "1988-10-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7vrqvdB9bvdMM159", "quantity": 13, "sku": "iMQRmTrN98YMldln"}, {"duration": 28, "endDate": "1977-09-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "2WBxNSX3ZMToeqfo", "quantity": 21, "sku": "HQQny7bKXHuTCWts"}]}, {"condition": "H8hVkluVX0gstRpO", "conditionName": "rA3Pe9zyUKvV9sZ7", "eventName": "nwdLr79Jj0ZglejZ", "rewardItems": [{"duration": 80, "endDate": "1977-09-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qPSfkLQlhA2NL8El", "quantity": 75, "sku": "2BAH5T1jVV91hboe"}, {"duration": 17, "endDate": "1996-01-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "akNDcUaFIDBk2ed1", "quantity": 7, "sku": "wJ2UMzMtZhr3cZXA"}, {"duration": 6, "endDate": "1976-09-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ViAY51laGtGfQhzs", "quantity": 21, "sku": "uR7VIXiHDyehAMin"}]}], "userIdExpression": "HprZuH1Xs0X4qz4l"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
