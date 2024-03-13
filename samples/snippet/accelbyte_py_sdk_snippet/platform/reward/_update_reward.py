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

Example: '{"description": "flWnBrqROe9boKbL", "eventTopic": "F99QPdaulypKwaPO", "maxAwarded": 26, "maxAwardedPerUser": 25, "namespaceExpression": "ra97syfTJ3FIE0xP", "rewardCode": "2DGhkuB6f3hh2U13", "rewardConditions": [{"condition": "rGfKSSX7T0gb8uRR", "conditionName": "BRpofD3Q1P9rGPZK", "eventName": "prioOCxLfJ3ecPDM", "rewardItems": [{"duration": 15, "endDate": "1993-02-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qmj8YtazmWCe4QXQ", "quantity": 94, "sku": "04BG0BmbwAcNCIu6"}, {"duration": 44, "endDate": "1995-09-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3wB69NeGew6liZIE", "quantity": 17, "sku": "43d9sNTdSzUGJ0NR"}, {"duration": 72, "endDate": "1997-06-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "8wLoZQAoOEQPqFvd", "quantity": 60, "sku": "YhIfXzqyCIfxXVGB"}]}, {"condition": "ftjUfUzsJmwdd9Jb", "conditionName": "QbDNjttZ6Ww6ffyC", "eventName": "mpf5YhacN2zoa6B5", "rewardItems": [{"duration": 83, "endDate": "1990-09-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "QUe60tNv2SpGogoz", "quantity": 64, "sku": "4dX6mYtr6UDnw5js"}, {"duration": 89, "endDate": "1972-02-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3QZ5rCnYaXaMWAiy", "quantity": 64, "sku": "wCYFeYOe4lCGo2mU"}, {"duration": 64, "endDate": "1977-01-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "PhNHqmqZxZdiyxy3", "quantity": 4, "sku": "6VpGFSlm89AzEpMR"}]}, {"condition": "omYNiifD4L6XthB7", "conditionName": "9VyRWdtgZIcfmSgK", "eventName": "UNLubFkGr2YwX5EH", "rewardItems": [{"duration": 30, "endDate": "1991-11-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "6dwdWlpYnh6WiSRO", "quantity": 81, "sku": "U43Qx6sgH8KUtERq"}, {"duration": 50, "endDate": "1987-11-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ktEBtOH8BiqpvuF3", "quantity": 87, "sku": "gHeIDCbiOFS4tXTr"}, {"duration": 17, "endDate": "1988-03-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "NeJDYowqMQHSIaov", "quantity": 84, "sku": "hFmxdjD6VXt3VYlf"}]}], "userIdExpression": "JHuRe9ouylXRDkZs"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
