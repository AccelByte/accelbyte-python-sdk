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

Example: '{"description": "7Ttt5uiELzlcZPzO", "eventTopic": "CRYlvPs78jKwyeG6", "maxAwarded": 4, "maxAwardedPerUser": 29, "namespaceExpression": "VBrJRayPYatOODP9", "rewardCode": "tqm6o35zXyZsHfXB", "rewardConditions": [{"condition": "ZgcJ8iloQBLsTYFG", "conditionName": "a7DZWN0sExMOWAlT", "eventName": "j3JIXaLUDb4GdXkp", "rewardItems": [{"duration": 56, "endDate": "1973-03-27T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JL4FIdqldPmwBGuB", "quantity": 84, "sku": "9oty9ZhFVfZtQjep"}, {"duration": 64, "endDate": "1993-08-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VhcmAKJoXmWe9jme", "quantity": 90, "sku": "k6rdtqvotfcYnNT7"}, {"duration": 43, "endDate": "1980-05-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Y8ORml3K1wKM2a8D", "quantity": 52, "sku": "yKywm7dRuwCx9OJx"}]}, {"condition": "MivBNutjUlFDFSpa", "conditionName": "xgjAVOKUXj6wkWS5", "eventName": "PPBYdimJ1P0gug8o", "rewardItems": [{"duration": 67, "endDate": "1971-10-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HJTZKJFMxVNICbej", "quantity": 22, "sku": "wGd05jUrX0emxhTE"}, {"duration": 79, "endDate": "1972-12-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "jsViMMGhBql4SD70", "quantity": 93, "sku": "gJV6KKEA2daW7ZAf"}, {"duration": 54, "endDate": "1987-09-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "3GsrqMqHIQy25ATM", "quantity": 86, "sku": "y2NistHFTqcosssO"}]}, {"condition": "2FNPfmPGjBN5WMud", "conditionName": "y71aIX6dOo5jLTC4", "eventName": "z2YdXxp4QPgyQFnG", "rewardItems": [{"duration": 61, "endDate": "1984-01-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "rDag3sCU8xVv2pSR", "quantity": 89, "sku": "IwowvKIvDeEetYOT"}, {"duration": 89, "endDate": "1979-08-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "e0D9yESv0K8k3RdR", "quantity": 20, "sku": "MlRk9HWvOIVMzB0N"}, {"duration": 32, "endDate": "1988-04-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "JHaCrh7fhLjtGU0P", "quantity": 77, "sku": "21O60BsorIq9EvQh"}]}], "userIdExpression": "gxd59Uhfj7dF36Ta"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
