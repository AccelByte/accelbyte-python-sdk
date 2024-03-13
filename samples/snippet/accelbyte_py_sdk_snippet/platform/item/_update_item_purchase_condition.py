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

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 90, "comparison": "is", "name": "PqKchidil2qi8P9S", "predicateType": "SeasonPassPredicate", "value": "AlYmTB5jDh3IduTM", "values": ["HKwBKOzjSZwIo7l0", "6Pf0WYfAh3nRw1Ds", "YzL9yV7DRI9QidQL"]}, {"anyOf": 57, "comparison": "isLessThan", "name": "Pn9cj7LPxOxGLwMD", "predicateType": "EntitlementPredicate", "value": "a4laUlmoMGOxucjD", "values": ["7OF7kBKlQBJ9lbfM", "6K2jx4XpQp896TzW", "6Lmpzzu6nuWWjoxv"]}, {"anyOf": 74, "comparison": "is", "name": "3bfDOTMkQbb1cPCX", "predicateType": "SeasonTierPredicate", "value": "xzH2ZeWvBpMgS4TG", "values": ["oqfcOQhubHRmaqLg", "gbSMXoUZmdTm9W7p", "PxGeuxBNCcHNH6jH"]}]}, {"operator": "or", "predicates": [{"anyOf": 53, "comparison": "isNot", "name": "olbJNmA0adGvrs2k", "predicateType": "SeasonTierPredicate", "value": "KAYoojulBtfHgBje", "values": ["nJnaUSmjpEOktSjr", "mj3VAz1FZEEOUUNy", "o3bcUJsabZ1JtpyW"]}, {"anyOf": 78, "comparison": "includes", "name": "cL5vEAKSSLNjwg7M", "predicateType": "SeasonTierPredicate", "value": "Niy5vRDxLp8uoCQ4", "values": ["M5NYHRpnK0OmChYl", "Y1eMkTy8zkNZhQD1", "SLIS9QLHmoeW9UTc"]}, {"anyOf": 99, "comparison": "includes", "name": "1Fm3T9ZhrnIORzNO", "predicateType": "EntitlementPredicate", "value": "idFu3qwCSOvhxNO4", "values": ["hu4d9KlwP3HZ21Mo", "Blrtq1J99vLYQSYs", "3UWu43lnVGclnx3U"]}]}, {"operator": "or", "predicates": [{"anyOf": 23, "comparison": "isLessThan", "name": "t1tXLfhxQobmBtsV", "predicateType": "SeasonPassPredicate", "value": "8sykWdmvxIjmLyl7", "values": ["0TDSCZgZH33pdVih", "rpG0SeYsqbmIStgA", "CmOUS9kh3z8HubNL"]}, {"anyOf": 52, "comparison": "includes", "name": "dZp1yWSirFbIk3Ok", "predicateType": "SeasonPassPredicate", "value": "0801F8tcdrwoG7CB", "values": ["zzSrj00fX1uy5K1W", "7dxywndRKckVlpDh", "lXXrwyyynotOqvcO"]}, {"anyOf": 67, "comparison": "includes", "name": "OA2wunrGuUljdLDk", "predicateType": "SeasonTierPredicate", "value": "S4tZnz2hAuIP1aIw", "values": ["l96qPYb1uRL4PZuc", "U8DyjW1dmxIdeQOa", "hPP08SyB3YkXvnfR"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
