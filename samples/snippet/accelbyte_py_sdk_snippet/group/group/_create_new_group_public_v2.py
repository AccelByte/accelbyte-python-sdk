import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_new_group_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsPublicCreateNewGroupRequestV1
configuration_code: str
custom_attributes: Dict[str, Any]
group_description: str
group_icon: str
group_max_member: int
group_name: str
group_region: str
group_rules: ModelsGroupRule
Definition: ModelsGroupRule
    group_custom_rule: ModelsGroupRuleGroupCustomRule
    Definition: ModelsGroupRuleGroupCustomRule
    group_predefined_rules: List[ModelsRule]
    Definition: List[ModelsRule]
        allowed_action: str
        rule_detail: List[ModelsRuleInformation]
        Definition: List[ModelsRuleInformation]
            rule_attribute: str
            rule_criteria: str
            rule_value: float
group_type: str

Example: '{"configurationCode": "rBu4ZvkuJfkqcolW", "customAttributes": {"sASm1oDEGqMLG7s5": {}, "IZzTrq0niXvLrWFn": {}, "eWmBdIwpquLDYWOp": {}}, "groupDescription": "NowQkXMR6MAS4MdX", "groupIcon": "LdYLpQQKAceIIlzQ", "groupMaxMember": 54, "groupName": "kBvyvWP4UB3SgyWx", "groupRegion": "Ftc7lBhEJbs4Iz0e", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "6FE3UtnynIznVE0Q", "ruleDetail": [{"ruleAttribute": "A9obPR5OQrqSQraQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.64656814689653}, {"ruleAttribute": "ZBtqZW95aCgVhNA7", "ruleCriteria": "EQUAL", "ruleValue": 0.2897892688926311}, {"ruleAttribute": "qH7s8zohwA8ByqDa", "ruleCriteria": "EQUAL", "ruleValue": 0.7994361300426404}]}, {"allowedAction": "jYqfemn5f8c5Oq83", "ruleDetail": [{"ruleAttribute": "0JTwzmjp6mEczX7P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19114573291382042}, {"ruleAttribute": "CyvEeeYBmIL5n7c5", "ruleCriteria": "EQUAL", "ruleValue": 0.3199684301227359}, {"ruleAttribute": "pDFEGWLumabA7fbd", "ruleCriteria": "MINIMUM", "ruleValue": 0.16060017603592458}]}, {"allowedAction": "jQrTxn1spKlcH3SE", "ruleDetail": [{"ruleAttribute": "MRFF0v32kuzSzWjH", "ruleCriteria": "EQUAL", "ruleValue": 0.563112580950785}, {"ruleAttribute": "VdTD77Vn5PH6U3f8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7471456199631943}, {"ruleAttribute": "xXs59WaPQOXQBKEf", "ruleCriteria": "EQUAL", "ruleValue": 0.779161256876643}]}]}, "groupType": "PUBLIC"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
