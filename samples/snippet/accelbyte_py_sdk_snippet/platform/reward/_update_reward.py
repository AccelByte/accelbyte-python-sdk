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

Example: '{"description": "wA0UvhhP0zI0FQqy", "eventTopic": "UDHsx0Ei1IMnNFwk", "maxAwarded": 59, "maxAwardedPerUser": 61, "namespaceExpression": "I2N3D1twQYe8c6Ra", "rewardCode": "9HU6twM7fmL2Rfr7", "rewardConditions": [{"condition": "wyWnLPiZUVrvpcw1", "conditionName": "NZGsBZl4g4lflvJf", "eventName": "zVk9kgERlvmEKK4f", "rewardItems": [{"duration": 1, "endDate": "1988-01-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VOxq45lxHVy7myGg", "quantity": 42, "sku": "BUrQBsj2Gru3pLXr"}, {"duration": 100, "endDate": "1974-12-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PxN1MFBibkMgkabT", "quantity": 82, "sku": "yWvEkxBuzzdnuK5M"}, {"duration": 33, "endDate": "1998-01-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PFkyA0AmjRyyX11B", "quantity": 15, "sku": "FGXV9ixtanpHeJUV"}]}, {"condition": "gn614AvB6gwQQMpi", "conditionName": "oi0FiJhd4n3yEgZ8", "eventName": "TOYiI4Wx2RJfrjuO", "rewardItems": [{"duration": 24, "endDate": "1997-02-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "yZKKD1CU1OfNJ3fM", "quantity": 24, "sku": "vditjokXT8Sh5cZa"}, {"duration": 16, "endDate": "1974-07-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YFc4tK8e4tNshy3E", "quantity": 71, "sku": "C5tp61oWzdAbhG9k"}, {"duration": 34, "endDate": "1983-05-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "eLwpoIXLQFsfuQAF", "quantity": 69, "sku": "8am7097o0mp2EJ0j"}]}, {"condition": "oIoLb7ULemtQ5rGZ", "conditionName": "ab5gFouwkxxYOSnb", "eventName": "NaIPtITcrUt2brkc", "rewardItems": [{"duration": 13, "endDate": "1995-04-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "QqBmV6rvb3Z4ksaP", "quantity": 46, "sku": "AqodJKJOagMJcysL"}, {"duration": 87, "endDate": "1989-01-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "V2rYsXq9ZUvMFSVF", "quantity": 97, "sku": "UjGLrM4VkGn6F81F"}, {"duration": 13, "endDate": "1995-04-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vgfZ8NyY0bzLfwrK", "quantity": 16, "sku": "AECzIdZoItgExBCt"}]}], "userIdExpression": "nPd5musmlpF3ur09"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
