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

Example: '{"description": "799vGJs9ofhuOkFd", "eventTopic": "XdhleXSB55sakn50", "maxAwarded": 78, "maxAwardedPerUser": 17, "namespaceExpression": "qp4E1whyqiOHjSzS", "rewardCode": "yquXk9pWpYjnugtv", "rewardConditions": [{"condition": "t1jT5Bnk4PHrZwM1", "conditionName": "IICftjlDyeWwUj0O", "eventName": "F0DELq4CeiYiWBOv", "rewardItems": [{"duration": 11, "endDate": "1995-01-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8SWtHskYaxZxolcg", "quantity": 88, "sku": "XDNZZuY9DJPpCGhZ"}, {"duration": 14, "endDate": "1976-05-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "Ym06bGdRSGtDbpsM", "quantity": 77, "sku": "zDW119fPMpEycd5a"}, {"duration": 39, "endDate": "1982-11-26T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PA1glgKLTgPsATaB", "quantity": 63, "sku": "LDV7cwCrldqlXw9h"}]}, {"condition": "QUA2dX9s95Ce3W8N", "conditionName": "u5ECoNI1DoEKIX9c", "eventName": "EuZfmZgAOlqJ3Y4W", "rewardItems": [{"duration": 3, "endDate": "1975-11-01T00:00:00Z", "identityType": "ITEM_ID", "itemId": "GLvo4ERTyumT6nbU", "quantity": 90, "sku": "oaWq5eiKVZqraKEb"}, {"duration": 77, "endDate": "1984-09-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "E2wo4pDyRh0ykMG4", "quantity": 65, "sku": "bODzCMp6fEVRyC1i"}, {"duration": 15, "endDate": "1987-04-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hVb9f9JplB3FqZ9n", "quantity": 72, "sku": "OLz2JWFR1314v8jF"}]}, {"condition": "67bb7ygwLkSJGGRZ", "conditionName": "ZhUBMvsbFON1GOjx", "eventName": "vKviKaxo3ZcOd8Hz", "rewardItems": [{"duration": 71, "endDate": "1986-01-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XDQXordvt7KpHjdG", "quantity": 100, "sku": "DnjxzOqm0QFdrUuO"}, {"duration": 92, "endDate": "1980-12-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kwk0Z8TTHfviXzv4", "quantity": 90, "sku": "o73XPzPztqkH2Eib"}, {"duration": 54, "endDate": "1990-05-06T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "EfYn2YFnTxW1L4MX", "quantity": 53, "sku": "3BBr5rTyA1Kz2Wxh"}]}], "userIdExpression": "f8jazao2Nl2ktnHu"}'
"""

result, error = create_reward(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
