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

Example: '{"description": "1igtoNKtgDbI88Xo", "eventTopic": "marWxOM26MQEOZRS", "maxAwarded": 18, "maxAwardedPerUser": 16, "namespaceExpression": "h6h1UMelhsOWzFYp", "rewardCode": "oA4VhGgQddxKX935", "rewardConditions": [{"condition": "I7C6oJia6zl7dhRn", "conditionName": "UKQVAEByFYR9tXKk", "eventName": "sLfWH0VDUxmKu0Cd", "rewardItems": [{"duration": 63, "endDate": "1990-08-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "YkFlk5vg4oHs2Ljf", "quantity": 82, "sku": "HZOzJmlaQGGGoFBw"}, {"duration": 29, "endDate": "1981-09-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NW1uMCRwQjFLzojb", "quantity": 30, "sku": "RvHoHFCikJ6cq1ee"}, {"duration": 83, "endDate": "1997-08-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "26Tx76186pFKyVze", "quantity": 58, "sku": "FHyPUTskJjurTdwM"}]}, {"condition": "YFcgl2QhSB8EkuJr", "conditionName": "vbZPjoBPzo6A1a9w", "eventName": "EyGJD3NLg89vV8EQ", "rewardItems": [{"duration": 21, "endDate": "1982-09-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "CWSIkFpAk47Sm8rK", "quantity": 87, "sku": "ZZSA40lrxKqSvWy8"}, {"duration": 59, "endDate": "1974-01-23T00:00:00Z", "identityType": "ITEM_ID", "itemId": "F0T5deB7EFJW9p8d", "quantity": 49, "sku": "X53rMhD3ktjHkIiJ"}, {"duration": 96, "endDate": "1974-02-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "C3aA2E4pw5Oy4ZwV", "quantity": 6, "sku": "eG95XeVBiNvpjxwF"}]}, {"condition": "sOWbjU13uvrBrhKf", "conditionName": "IPs6mSiPLAbRBtIU", "eventName": "tXUzJabXeR8UUiB4", "rewardItems": [{"duration": 91, "endDate": "1973-07-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FIlP7xclwgejzbqB", "quantity": 70, "sku": "nTbnuCyRXm3B9c9P"}, {"duration": 65, "endDate": "1979-06-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BBuwOtfbQOHM8sI1", "quantity": 34, "sku": "EDIaIkH7SI0iYont"}, {"duration": 58, "endDate": "1997-09-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ErYRwfx1N5QvTCTN", "quantity": 60, "sku": "ZieZC5nnfCl2nQPd"}]}], "userIdExpression": "Mm5PU0imx4Iyd8TK"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
