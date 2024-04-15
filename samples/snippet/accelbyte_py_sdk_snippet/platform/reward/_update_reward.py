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

Example: '{"description": "9BaXHgI1egljYO3V", "eventTopic": "dJDPXqM3Am5utzY5", "maxAwarded": 81, "maxAwardedPerUser": 2, "namespaceExpression": "r2aKvC4aTjIsdjOF", "rewardCode": "Fj4kN0MiTQNBzlJz", "rewardConditions": [{"condition": "d3joQvQFgV2pcysJ", "conditionName": "hhO0YylCUSeahKL9", "eventName": "llR9ADywdXwhtXEL", "rewardItems": [{"duration": 67, "endDate": "1996-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MZHQTizhD1XDDQXZ", "quantity": 58, "sku": "RB8QE3T8knbiP7gz"}, {"duration": 54, "endDate": "1991-08-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "c2W4PI667eQB1a0W", "quantity": 19, "sku": "v2qQdyt5v4ZXgQfR"}, {"duration": 90, "endDate": "1978-03-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GJjaTN4wwm5nKS3b", "quantity": 76, "sku": "XAAkelwlnrdMKvgb"}]}, {"condition": "xjfIWXmt6Gr6rRdn", "conditionName": "9VSzGJVMpqMl5DHD", "eventName": "A03ElKd9ES9WUBYj", "rewardItems": [{"duration": 30, "endDate": "1994-06-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rFfmtFNfXGaRJFFJ", "quantity": 1, "sku": "zNDSNrPZSPQok0l2"}, {"duration": 37, "endDate": "1997-08-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "B29aRx2A2hXC976D", "quantity": 36, "sku": "4CqWqxDMy5wOE3Gk"}, {"duration": 34, "endDate": "1999-05-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hnAN4w3TvrTCLoEz", "quantity": 54, "sku": "5jrD19a6hRJ9CG2N"}]}, {"condition": "BShS8ns3l94nsYjI", "conditionName": "fSTlfSBAiwlNU8nt", "eventName": "asdPJMg3ZpcjfCkV", "rewardItems": [{"duration": 85, "endDate": "1981-06-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "LoC9NQd0knyTh1Mw", "quantity": 11, "sku": "EMtygYkILRRvQZJ2"}, {"duration": 9, "endDate": "1992-10-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Tl0MtQuSXhIRKBE5", "quantity": 98, "sku": "BYYlNnANr2w99f7O"}, {"duration": 19, "endDate": "1975-08-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "sdeBgPuMZoH7BhVZ", "quantity": 72, "sku": "lafc01fIS0lwmOYq"}]}], "userIdExpression": "bJ8ulA8e5V7h45RW"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
