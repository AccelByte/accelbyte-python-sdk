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

Example: '{"configurationCode": "8Ei1DZtPWEMUASO8", "customAttributes": {"6VPhkhiRPhRpuPxt": {}, "gHs2KCDbBNMZQpFn": {}, "VaYLvs6cik6MX30K": {}}, "groupDescription": "CuasD9N2hU6WPXL6", "groupIcon": "zRzS6GCYs0lSAOHY", "groupMaxMember": 83, "groupName": "UJBrtykR6eZmyCJl", "groupRegion": "NSIyvLYIJUx6IXwq", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "UK1SBThoWn0Fp4yB", "ruleDetail": [{"ruleAttribute": "GOblxF0eL2PA8xUV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7554959126578065}, {"ruleAttribute": "RouwatHSCPXINdIU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2769622229360822}, {"ruleAttribute": "OGIyXhzWUvFoIt5G", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8934004203630096}]}, {"allowedAction": "9o3Glc06INuOPuiq", "ruleDetail": [{"ruleAttribute": "6M5SoyMB9Xf36bcL", "ruleCriteria": "MINIMUM", "ruleValue": 0.3986632182255042}, {"ruleAttribute": "iSMjyCUm0Tl1YKqC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24507007824822058}, {"ruleAttribute": "0uCPpvfRFgW29C7B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4250126678778946}]}, {"allowedAction": "qnYM15mm9LsklsIL", "ruleDetail": [{"ruleAttribute": "itnlsefyjm8CTJxj", "ruleCriteria": "MINIMUM", "ruleValue": 0.21588439473792786}, {"ruleAttribute": "Po6hfAGj8ksW5hYt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7484442450758877}, {"ruleAttribute": "M1pR3ml9ySHhtfMU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23556661043001015}]}]}, "groupType": "OPEN"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
