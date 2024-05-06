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

Example: '{"description": "DsdU8Xmg58pvlulH", "eventTopic": "VFQagFei0i5iFCpS", "maxAwarded": 99, "maxAwardedPerUser": 33, "namespaceExpression": "Uh9OAFthrY1geFFH", "rewardCode": "fTzLM3AyMMFmXp4M", "rewardConditions": [{"condition": "Y1gbrXt3kNKdpTXi", "conditionName": "vG5mGEpFL678hPL5", "eventName": "YxUiV6pST6xZtMHY", "rewardItems": [{"duration": 31, "endDate": "1992-06-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "bnM9J891M009Z5ht", "quantity": 85, "sku": "G3wlfv03g2Us7KEo"}, {"duration": 97, "endDate": "1995-06-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "M3JsFmCqyOvrMJxk", "quantity": 74, "sku": "tMmXfrpjr1fdzqyC"}, {"duration": 50, "endDate": "1972-05-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "tGZkeml5N4ArLBVp", "quantity": 11, "sku": "F6PxhEnsxok2IXQv"}]}, {"condition": "8ptatOKMaoWYz6AG", "conditionName": "iiNsOLeoqLoahrCf", "eventName": "B1ojd2DrrM6LqnYt", "rewardItems": [{"duration": 44, "endDate": "1973-09-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "t72wbMuju4B2YsBe", "quantity": 6, "sku": "QNbD2UUqvdz2KTyD"}, {"duration": 56, "endDate": "1980-05-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "zQzxLc06DJU7ioOh", "quantity": 30, "sku": "5VakhypLdclZu8Io"}, {"duration": 77, "endDate": "1985-01-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "96GTcYDrG4Bm96dg", "quantity": 66, "sku": "SP7tPFQyisbpA1AT"}]}, {"condition": "DZW0qabukP4N3FtC", "conditionName": "EvUo7E5uUjqxuibE", "eventName": "mFtFroiicf26YW5H", "rewardItems": [{"duration": 14, "endDate": "1981-06-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0mpTFslrvIyk9WBu", "quantity": 49, "sku": "KGsvi57uN7697cN2"}, {"duration": 32, "endDate": "1983-08-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "V3sM1klLsNgMEe2i", "quantity": 36, "sku": "AOXqeDOW3V9Rr5DK"}, {"duration": 90, "endDate": "1991-06-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "JuUeHo9d8dAZqfLc", "quantity": 30, "sku": "9yLEpuOllXLCdbHl"}]}], "userIdExpression": "FJoHbYYCfleHQUmj"}'
"""

result, error = update_reward(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
