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

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 11, "comparison": "includes", "name": "J2YhtFS7qgg08V39", "predicateType": "SeasonPassPredicate", "value": "qJjGUrzuT2fqseVu", "values": ["6mq3h51rlRbrsFof", "X5VK7wqffp9CUhB9", "pRx0gbb7Op3vpfT9"]}, {"anyOf": 63, "comparison": "isLessThan", "name": "WSbzXjE43Df7XT1T", "predicateType": "EntitlementPredicate", "value": "ffuLxKyDKaLprnMu", "values": ["MozfuVu3aPA9RsT7", "aVeaM9vsKRrIOmIf", "eqm0y5Tjm84WYivb"]}, {"anyOf": 6, "comparison": "isGreaterThan", "name": "MRYdXzWQ58bZAhlh", "predicateType": "SeasonPassPredicate", "value": "NsXjqq6P1IMK01zT", "values": ["QgytgBOVSrXHp3GB", "zONuIasIMlzu2Uqk", "eAzdb9AEb7zkKCCt"]}]}, {"operator": "or", "predicates": [{"anyOf": 24, "comparison": "isGreaterThanOrEqual", "name": "U3IORi65Qyhm7FGC", "predicateType": "SeasonPassPredicate", "value": "MsBPjKciqb1hq4xe", "values": ["TVpdpAMnZFJBrOCl", "RWUuuu7KzNAHIPdw", "IURa3ZFFALsKCsP5"]}, {"anyOf": 12, "comparison": "isGreaterThanOrEqual", "name": "rcYUlJpf5i1B2fP8", "predicateType": "SeasonPassPredicate", "value": "BRqIlwgwLvAlEQSe", "values": ["U16yey40J0VwyhIO", "fW7pXKDSULQPzdD1", "m4nNh8YdxSDu54hR"]}, {"anyOf": 15, "comparison": "excludes", "name": "3cnUkuhUQqbuyuzk", "predicateType": "EntitlementPredicate", "value": "0dMbgK0fJhC9fPqU", "values": ["LJGv2y5rVsMCa84m", "T1OjVwW5ayhFNjV0", "qNb7WE3kPkkWIGQS"]}]}, {"operator": "or", "predicates": [{"anyOf": 85, "comparison": "excludes", "name": "KYAe0BG5zjx9OubY", "predicateType": "SeasonTierPredicate", "value": "EfUYkhj4ztgSgrpQ", "values": ["2CHedydfwEuTqkkC", "TCILbkN2AIMDx7YP", "Oa6c6c8jvgXpkTIV"]}, {"anyOf": 17, "comparison": "isLessThan", "name": "5UcDkp4rdJw5cN14", "predicateType": "SeasonTierPredicate", "value": "BOwG0ZSinrocT9WQ", "values": ["Wh7y4mbv5iLqtEH4", "xJNPfk8aYa9DYt4G", "CT90XyTGKcKCJQuT"]}, {"anyOf": 75, "comparison": "is", "name": "IvuQ7PiX0bXvRspE", "predicateType": "SeasonTierPredicate", "value": "eXSxY7Koa6dgKGEJ", "values": ["7oY1MEkUCsqT4PZG", "JxcZ11VoXtHWRj5L", "bDmmeRfUt7SS8iye"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
