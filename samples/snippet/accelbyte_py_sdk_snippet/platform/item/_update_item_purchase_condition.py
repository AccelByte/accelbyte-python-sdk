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

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 83, "comparison": "isNot", "name": "Lr0ucPLfOSDIeuYF", "predicateType": "SeasonTierPredicate", "value": "PedjFx9eI0RR667F", "values": ["qPLGLMcNhcP0qCyj", "qFelGI5qsZc9UBGQ", "pBArOWXBY96CVtLc"]}, {"anyOf": 9, "comparison": "isGreaterThanOrEqual", "name": "Aarm7MyoELghRyMJ", "predicateType": "SeasonTierPredicate", "value": "LVLQ2izyIpmXf8xF", "values": ["M4uBDwNjGnMpjmGB", "dWA03wkUn4DnRynE", "aFuAF0tOVJLLWCCr"]}, {"anyOf": 45, "comparison": "isGreaterThanOrEqual", "name": "SoYag2f95A1tblIc", "predicateType": "SeasonTierPredicate", "value": "dvycL5nX2PxoXI39", "values": ["1HhIcc1I3gLg3bXj", "5Ru5ZYErVvyncpjm", "syf6dSccIi1cmvIY"]}]}, {"operator": "or", "predicates": [{"anyOf": 18, "comparison": "isGreaterThan", "name": "2TfItUmDFd70vEYe", "predicateType": "EntitlementPredicate", "value": "E1qSawPtWeqfxq53", "values": ["vjMeVOR5xtXRI4W3", "uKhErMHu6U38QWon", "ZsEI4MSqCdoQmc4c"]}, {"anyOf": 17, "comparison": "isNot", "name": "SJPa7UCjGPODHHBg", "predicateType": "SeasonTierPredicate", "value": "3JXjAHL0Sk6prKhi", "values": ["r9cBBKCbcOhma9uE", "Uw9HLR0LI5PEsAvZ", "VAOBheYrWDekn0lC"]}, {"anyOf": 17, "comparison": "isLessThanOrEqual", "name": "vAMyyg9F4w7q90YL", "predicateType": "SeasonPassPredicate", "value": "4vNFFq5Q7OMuA37w", "values": ["RD0kURqDd9szK8Rd", "HwKB4iKdCiFlIjDi", "KYl74stxkxhgojDz"]}]}, {"operator": "and", "predicates": [{"anyOf": 53, "comparison": "isLessThanOrEqual", "name": "MC1iPPhqhtGFQDIc", "predicateType": "EntitlementPredicate", "value": "P3izM6eEV9PWtjH1", "values": ["ACk1m3IKgCkrg2wa", "ay3chTde6YCjpLSw", "4RSowPUsMvaGmWkT"]}, {"anyOf": 9, "comparison": "isNot", "name": "gEsWsTUhYKub7lt0", "predicateType": "EntitlementPredicate", "value": "I15ZkhS7W65TPaaw", "values": ["cCFMg7dlGhh8j8lj", "MhQ0nDu04edUul45", "GPPOnokRgjIrr1vx"]}, {"anyOf": 56, "comparison": "includes", "name": "Hwl3tv9YZPnIOAM8", "predicateType": "SeasonPassPredicate", "value": "qMu6vimPnIYqUidh", "values": ["r7Ysml2yuG7TqBUJ", "wytSrhClZ5JvEz3e", "UvbI8y0UxDKDLR6o"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
