import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_item_purchase_condition
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo
from accelbyte_py_sdk.api.platform.models import PurchaseConditionUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PurchaseConditionUpdate
purchase_condition: PurchaseCondition
Definition: PurchaseCondition
    condition_groups: List[ConditionGroup]
    Definition: List[ConditionGroup]
        operator: str
        predicates: List[Predicate]
        Definition: List[Predicate]
            any_of: int
            comparison: str
            name: str
            predicate_type: str
            value: str
            values: List[str]

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 63, "comparison": "isGreaterThan", "name": "GBTxvRtWzNAjexhf", "predicateType": "SeasonPassPredicate", "value": "MQRKhZmS2qARDA1l", "values": ["38TXBcZtrWZPOWI3", "EKFo8eTmNGSJFcAb", "WnSemi4d2eoBd3fj"]}, {"anyOf": 5, "comparison": "is", "name": "xC95qaGHek78erXt", "predicateType": "SeasonPassPredicate", "value": "0GvkrRhABNLWcWiR", "values": ["6TlIIa8PfSejO0rY", "zcIu7kClEU6Nd9L6", "ePsQtKyQFDNHe8mm"]}, {"anyOf": 23, "comparison": "isLessThanOrEqual", "name": "H29CuBUqQWukzPH9", "predicateType": "SeasonPassPredicate", "value": "ApvXlWa7pxeF60jT", "values": ["keLDJepTON3rQKrH", "oLBOdtegXrgI4xx8", "sD6wDiAbesxh8Dw1"]}]}, {"operator": "or", "predicates": [{"anyOf": 6, "comparison": "excludes", "name": "ZRibs242Oggd0gdr", "predicateType": "EntitlementPredicate", "value": "Q32JuHhjtKsCKMkm", "values": ["34eKsgDcWpE82uKT", "wLjXYTWfEmjfxqJf", "ioZaQOBwf9YKo8Eg"]}, {"anyOf": 62, "comparison": "includes", "name": "3fjcsZPokoZSvaj3", "predicateType": "SeasonTierPredicate", "value": "NfmeriY9z9UbzmGo", "values": ["gP9sZCm390DG62m1", "1FYaXZqT0Iidnm5j", "Tmi8zctytEFTReb7"]}, {"anyOf": 27, "comparison": "isLessThanOrEqual", "name": "k8PtsLsvgMVr5dwW", "predicateType": "SeasonPassPredicate", "value": "XPtsR1bjJFNKKB6K", "values": ["14lXPdM56pCEiO1D", "QwIrcPoaMl9ulVe7", "cLsgxO52OY94z1k4"]}]}, {"operator": "or", "predicates": [{"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "8C1YsLNSSOVjiGZ1", "predicateType": "EntitlementPredicate", "value": "OaIimoRCTNNUEs6P", "values": ["FoZqWhTdrelZmBhH", "aMxnhbH0768i0GAY", "QKR4HPKdBkWXN9LV"]}, {"anyOf": 27, "comparison": "is", "name": "i3IUlNGuJFp1pYl7", "predicateType": "SeasonTierPredicate", "value": "34VybsL8frBXXdbY", "values": ["VZKPAsCbLFcR0C7w", "FGoU6qRqlpSJRfQ2", "gnpTImykSRlZtGTc"]}, {"anyOf": 55, "comparison": "isGreaterThanOrEqual", "name": "b4oHzoufA6nYKc8z", "predicateType": "EntitlementPredicate", "value": "SUSl427CxO2OSmYL", "values": ["tdsFz36v0pHBiw9E", "VKQe3BZfDcirTHhX", "DQuhWyBlb7A2A23k"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
