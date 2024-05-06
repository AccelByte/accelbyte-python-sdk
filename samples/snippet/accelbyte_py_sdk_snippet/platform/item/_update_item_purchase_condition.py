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

Example: '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "XcPUhld01DHue5jt", "predicateType": "SeasonPassPredicate", "value": "elg0OrhGIGOrmAf0", "values": ["0vTUQnzhKoFUzTMZ", "3xtwXvya0PJOdbkJ", "vLeGDtIK16p9j41n"]}, {"anyOf": 49, "comparison": "includes", "name": "c5l16iqMberifbcd", "predicateType": "SeasonTierPredicate", "value": "3mouZJJOI3URNfFb", "values": ["1NVcKqQgLt88eAag", "frIqPt4oRcea7Kaj", "KQoxPperBjYmIlbd"]}, {"anyOf": 82, "comparison": "isGreaterThanOrEqual", "name": "T4OPRevaTlBOyYyJ", "predicateType": "SeasonPassPredicate", "value": "W88tRBqn3Nh1cPHJ", "values": ["QInanNlzXAx8dS58", "dsLC02pCHbW3BHP5", "rvZZZxTCJXCCG8IC"]}]}, {"operator": "or", "predicates": [{"anyOf": 25, "comparison": "isGreaterThan", "name": "h54Tx8MWNfPkbovD", "predicateType": "EntitlementPredicate", "value": "bYsPORoWzNuEAwcU", "values": ["qYBMmwGMNvx5gPcR", "zL46bMTCWwsuEzzo", "itxdz0qy444PLXzp"]}, {"anyOf": 12, "comparison": "excludes", "name": "CEWAfmxpgKbmVC2V", "predicateType": "EntitlementPredicate", "value": "jGQf1VlzIO8kAXoa", "values": ["mdDr8bVIPYGP5IjU", "7gCSfpmPgeAOpHkT", "OWoAnfoq9apRSwfy"]}, {"anyOf": 2, "comparison": "includes", "name": "g53SuNaXQG6HVuR6", "predicateType": "SeasonTierPredicate", "value": "BXxnpq6q0PT9aS23", "values": ["gMUIgEUDUUKG7uEy", "I9DBCOfgAIYRTNAP", "1jvbi2z7B4gioGVw"]}]}, {"operator": "or", "predicates": [{"anyOf": 56, "comparison": "isNot", "name": "SQpVEykar6Tfdc3W", "predicateType": "SeasonPassPredicate", "value": "BwFeSSkeasNqILHq", "values": ["CxgO1DZqXun5hb0g", "Ca0aOU8E0glrqi4L", "pGXroqJcqkiaAjoD"]}, {"anyOf": 39, "comparison": "isLessThan", "name": "JofJ6RSgUvxcbIC3", "predicateType": "SeasonTierPredicate", "value": "9dtEVXHfrc6o9LSh", "values": ["FMHzV6tpwxvw32zy", "S7mXLluENXJeUjIY", "0yEMLaiSSQIIeK6K"]}, {"anyOf": 22, "comparison": "isGreaterThan", "name": "iEXL9spagfbZ6N1X", "predicateType": "SeasonTierPredicate", "value": "5GVnCrARNUnPWPiz", "values": ["tN5KnRIvzIPTE1MO", "nuxB7ZqQ13iQkDw7", "1mmdiCJT0F9dKYfb"]}]}]}}'
"""

result, error = update_item_purchase_condition(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
