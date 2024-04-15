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

Example: '{"description": "okszYoBHU0lO6YQC", "eventTopic": "S4NtItaoVueybDlf", "maxAwarded": 30, "maxAwardedPerUser": 6, "namespaceExpression": "Ftgdtwts2jfPcP5V", "rewardCode": "DWSIkaAEHBoEVDvQ", "rewardConditions": [{"condition": "wARMObxD7IXvlzR8", "conditionName": "vGiEDe02gNnFeokm", "eventName": "AMefcndNcuzzLCBQ", "rewardItems": [{"duration": 28, "endDate": "1976-03-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "O5Y5JMn6aZUVWRUW", "quantity": 37, "sku": "UoFQ8A3hREBVJzC6"}, {"duration": 29, "endDate": "1971-10-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5p7s2ZdLh9f1OW3N", "quantity": 31, "sku": "pboO4mAQW84UMTNd"}, {"duration": 12, "endDate": "1985-06-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qlCIkG2UuVavpEm6", "quantity": 68, "sku": "cv5uwwIFZPEdyfQ0"}]}, {"condition": "kgnkOy36jJ0XAwgd", "conditionName": "DmEWl9SUli6kYyqi", "eventName": "AY0OONoKjI9UO3HV", "rewardItems": [{"duration": 45, "endDate": "1976-08-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "6GCF2RDYd8R0p82W", "quantity": 45, "sku": "pN96j8QaYzITs1MJ"}, {"duration": 99, "endDate": "1977-05-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AGCM2taM6NPozfoz", "quantity": 67, "sku": "YG9DY7Btql1xDyYF"}, {"duration": 99, "endDate": "1987-11-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "nn4BR929gaErjUVm", "quantity": 89, "sku": "25qrM4EaCyfyRF5I"}]}, {"condition": "E0WdSsucosLa4JgR", "conditionName": "8uqz4X6BEuM6sg9y", "eventName": "XAoQvkmh6Ibrg5Hi", "rewardItems": [{"duration": 99, "endDate": "1984-08-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BL7UE17RiSriN8kh", "quantity": 44, "sku": "BnlatTs19eteLCv6"}, {"duration": 89, "endDate": "1981-02-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NEgkuXFxnfiijRGw", "quantity": 80, "sku": "5tAI6azvFGUiiqPu"}, {"duration": 4, "endDate": "1980-02-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "uBKM01Cp7zKnFbyM", "quantity": 18, "sku": "exkv2140BfzpYzSY"}]}], "userIdExpression": "2iLBvr2uLgoPFJ8b"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
