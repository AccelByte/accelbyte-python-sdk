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

Example: '{"description": "IAJdTHuXfPrErydn", "eventTopic": "dPc88N65dVzrNDUs", "maxAwarded": 63, "maxAwardedPerUser": 79, "namespaceExpression": "L4trutwXMh3APmgV", "rewardCode": "6tDVrdUdHgeIgHmj", "rewardConditions": [{"condition": "NzpDQ3PzvC0yJQG4", "conditionName": "nRDiW2giZ5FOOsNE", "eventName": "es30ydA4EPEO8k3F", "rewardItems": [{"duration": 57, "endDate": "1989-07-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "O8TUGFlORYvkiyL1", "quantity": 16, "sku": "qCIdTMJgfNlUHZ7l"}, {"duration": 6, "endDate": "1986-10-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YCxMNQoGYdB5FCX9", "quantity": 82, "sku": "QugF7Nr6pZdIudKZ"}, {"duration": 82, "endDate": "1977-12-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "dUwIgRJTpmWr6rKX", "quantity": 5, "sku": "3IrEaWtw4jEyPCsz"}]}, {"condition": "qhk5aM8fvFeiByPp", "conditionName": "a1RR6N2HEH2JrKzj", "eventName": "cRhF5jZlpJLQRafx", "rewardItems": [{"duration": 12, "endDate": "1986-12-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nebh0ByPNzULWjZ4", "quantity": 32, "sku": "6vw8JpaegM6E9AIe"}, {"duration": 53, "endDate": "1977-09-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "MRDDBHBptoNlWWg1", "quantity": 91, "sku": "ZkHi4QNRlwfcNCpA"}, {"duration": 51, "endDate": "1985-08-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "59is48cwfZ8RahV6", "quantity": 62, "sku": "GU2c3ZSUD3UoASFj"}]}, {"condition": "Ewm2YARWriF1nRIn", "conditionName": "9DEPtXXAzGXGmF9G", "eventName": "sBdm2i3vzHnXOlCk", "rewardItems": [{"duration": 16, "endDate": "1981-12-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BJ2zjl5UIKjAjVEB", "quantity": 29, "sku": "wRhtuPu4Em8rlhaA"}, {"duration": 24, "endDate": "1980-12-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "wsqr3dfb4ELa32sx", "quantity": 52, "sku": "RPAQikbIhHCYR52l"}, {"duration": 52, "endDate": "1995-01-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ruCpxYQmfzyBEnEw", "quantity": 60, "sku": "sFS6eJ4KkVrEGGP2"}]}], "userIdExpression": "CPIwRQMOP3TzU50y"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
