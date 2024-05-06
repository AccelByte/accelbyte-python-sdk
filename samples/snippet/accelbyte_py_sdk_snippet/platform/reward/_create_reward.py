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

Example: '{"description": "a6QvWnJLAq4kj0SJ", "eventTopic": "4ylIlnPPeAUm6gY5", "maxAwarded": 8, "maxAwardedPerUser": 87, "namespaceExpression": "teQCEWD7T0wuRETT", "rewardCode": "779Cvs0QStbNpf2t", "rewardConditions": [{"condition": "VjPZknWMlNmA8nha", "conditionName": "WMjuPrWT6okhjerk", "eventName": "Z5wTtLv3zkttRF3e", "rewardItems": [{"duration": 15, "endDate": "1974-03-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Okm4GcKVAeV6tzwt", "quantity": 73, "sku": "GcRUMTSco72rEl0R"}, {"duration": 12, "endDate": "1975-07-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "UCH8p0ajY3gQ9p1l", "quantity": 92, "sku": "66C9BKkIG52mLYTa"}, {"duration": 49, "endDate": "1973-02-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "VwAK99xlXCEjPj0o", "quantity": 46, "sku": "ljWroqVkEZ8K6Mbx"}]}, {"condition": "QZ9MQXDGGu5LToqs", "conditionName": "sOYQPMrQd073TnKL", "eventName": "w2IEnMtOYVTShNmX", "rewardItems": [{"duration": 39, "endDate": "1982-07-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CmLwt51ZZNM8EzX4", "quantity": 89, "sku": "puBau24E1ILtVo2K"}, {"duration": 18, "endDate": "1975-11-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AmiwoQ8TUVA91u7k", "quantity": 78, "sku": "Fms4dhGvn6WrbSsD"}, {"duration": 81, "endDate": "1987-08-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Iv2LZHLSAJRyQTN2", "quantity": 4, "sku": "UOCPgAKvzYgYdCyz"}]}, {"condition": "g5LSx4TvksAQJ8ac", "conditionName": "aKIvgIPrjF0fjfXa", "eventName": "8UOO9yyYMKAwnfqo", "rewardItems": [{"duration": 76, "endDate": "1993-02-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5VIHfsHVfWSnkjEv", "quantity": 29, "sku": "u9JdkYX6C6BUMf8G"}, {"duration": 32, "endDate": "1973-10-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jxQbRP9ESIRmGqaP", "quantity": 1, "sku": "e84VHdfWnIBIOAy5"}, {"duration": 97, "endDate": "1983-07-08T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "BKOHTkMy4nD8ZcQ0", "quantity": 75, "sku": "5FQKjYcnVcxZoydK"}]}], "userIdExpression": "QoGB2zYA32Ys7vRH"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
