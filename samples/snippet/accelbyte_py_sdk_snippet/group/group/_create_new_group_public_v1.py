import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_new_group_public_v1
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

Example: '{"configurationCode": "ZbQ9llUzgOX2Rk39", "customAttributes": {"R4oRMhhiTqB6S6RC": {}, "FfnwdASZJjSqH7Dp": {}, "aB09sfrUX85NEv26": {}}, "groupDescription": "E28F2o7z8qJRqpUz", "groupIcon": "ckTEb05bMuX9hrLa", "groupMaxMember": 41, "groupName": "Z8Xgr0BRLvyQD69C", "groupRegion": "obuJ50Yaofo9TyIK", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "vsHoScbexAfnRuGf", "ruleDetail": [{"ruleAttribute": "yX0my32FnMY6C9Lu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8392805986362041}, {"ruleAttribute": "B2lK70aGsGjaKS5N", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06184978125555696}, {"ruleAttribute": "egznaF0cZxCpzNoC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48791305139580343}]}, {"allowedAction": "oD9b45TT8LWYo0yf", "ruleDetail": [{"ruleAttribute": "zn8ULnQ8tX4vu5fb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8417496740092902}, {"ruleAttribute": "UkrTXjRIgi9a5CUA", "ruleCriteria": "EQUAL", "ruleValue": 0.7357066837995829}, {"ruleAttribute": "8W0AQ8pWnViiDd2r", "ruleCriteria": "MINIMUM", "ruleValue": 0.0432716682850971}]}, {"allowedAction": "XoiYzrzwI9vtey0E", "ruleDetail": [{"ruleAttribute": "0WEQzdNLIPZkkU1k", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24623263614071822}, {"ruleAttribute": "aran9ab5BZtqciyG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7035815038195592}, {"ruleAttribute": "zIPO7rVTG93GPjQz", "ruleCriteria": "EQUAL", "ruleValue": 0.7343416481209963}]}]}, "groupType": "PRIVATE"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
