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

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 12, "comparison": "isLessThanOrEqual", "name": "A0lOpLyFRTYtp62v", "predicateType": "SeasonTierPredicate", "value": "1RyqlyoPfTFV7C2H", "values": ["uD6Uh4judKkx3VbN", "JvagyBpOxR0SrsSH", "9YeIRWTctsBTMbkt"]}, {"anyOf": 23, "comparison": "isLessThanOrEqual", "name": "zf2Z7nNQcE6kD2TO", "predicateType": "SeasonTierPredicate", "value": "QnlPgwrjsG8VWDg6", "values": ["30vU1Nsj3s0tlLKE", "jZ5gQDAYIXmjgqRh", "qPFYFLs9dnua6fR0"]}, {"anyOf": 5, "comparison": "is", "name": "qxSnxO2LUcZpnpoo", "predicateType": "EntitlementPredicate", "value": "pblFWMTCSBQYE2QR", "values": ["ob4U75ItG8h8EYl1", "rzhxnH8UXfxA1MrP", "Hq7YGc2hXQGPdHl1"]}]}, {"operator": "or", "predicates": [{"anyOf": 37, "comparison": "isLessThanOrEqual", "name": "Q3U0Lw32wahh2O88", "predicateType": "SeasonTierPredicate", "value": "7hl5S1IdObOGE2se", "values": ["hyAMgIoJIhjcOPil", "tuspPYPXtUAmJWP3", "Jnuf1yODtzNTfQ0b"]}, {"anyOf": 22, "comparison": "includes", "name": "SkZkyTTVf2gJhdh5", "predicateType": "EntitlementPredicate", "value": "Grtuw8Hw47cPZ8DU", "values": ["NB8STevKyjH5uz2O", "bRT6tIfXKkTl2wrS", "ZiWolbscHfTDBZxR"]}, {"anyOf": 14, "comparison": "isNot", "name": "YpRFHLQROelhB9uf", "predicateType": "SeasonTierPredicate", "value": "s6KtqCGTAdWIuE5t", "values": ["MS1cW4G2bCXZKQih", "vSRCKFXl6El7vXxa", "avT2OudJMZqd3uo4"]}]}, {"operator": "and", "predicates": [{"anyOf": 33, "comparison": "isLessThanOrEqual", "name": "m677JMWNPlTe0vby", "predicateType": "EntitlementPredicate", "value": "JWeQNois0kNMk2u8", "values": ["af8XcyP3IkShTwnK", "VXbDMW3vPwUWHjH1", "FiGCOmNKPBhGAFMB"]}, {"anyOf": 97, "comparison": "excludes", "name": "1NA0xdVzzYmKltc8", "predicateType": "EntitlementPredicate", "value": "sxT2AM3vjWXVM1i7", "values": ["7BHgiTZZ2RGFcbbn", "iUlMtljsjW2qKk57", "cKaLYqkP1A8vs0Fj"]}, {"anyOf": 93, "comparison": "isLessThanOrEqual", "name": "8RVF4Khwb9j9ANYj", "predicateType": "SeasonPassPredicate", "value": "SBRfOV9kgLIAlDFu", "values": ["2w9lcV0YLUiMwu8k", "kdMlEAixL4HhNNRV", "hXL4LF8SqGt9PH1k"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
