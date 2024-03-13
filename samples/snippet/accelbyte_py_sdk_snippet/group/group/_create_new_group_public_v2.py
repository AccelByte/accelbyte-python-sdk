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

Example: '{"configurationCode": "bJZWpbRMlhLWVfdT", "customAttributes": {"EFc9F9ujfETAGVj6": {}, "6vM0zb4yFnlPqsZQ": {}, "pEqYeqthU0Bzuubk": {}}, "groupDescription": "UJoWqxdaWg25kYr2", "groupIcon": "ZOLZdXttyxIpYc4n", "groupMaxMember": 28, "groupName": "9TF85camovbKHGmZ", "groupRegion": "8RYqpibhw6h2VDzS", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "gHsGqa8V7a5uqwbL", "ruleDetail": [{"ruleAttribute": "rTebe47gouYEykr6", "ruleCriteria": "MINIMUM", "ruleValue": 0.7167860787574576}, {"ruleAttribute": "Kcsw1Nb45xjVp8ih", "ruleCriteria": "MINIMUM", "ruleValue": 0.015577271190871711}, {"ruleAttribute": "3iY9uoBECvC9rOUF", "ruleCriteria": "EQUAL", "ruleValue": 0.924558078342745}]}, {"allowedAction": "pd77qH51V6YHSjvI", "ruleDetail": [{"ruleAttribute": "jdoCj7gDI6p3aOO9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07338096342784373}, {"ruleAttribute": "JcPROaMxZUJ5grdk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02735770187324249}, {"ruleAttribute": "ODSNDRg6SgrVYH8J", "ruleCriteria": "MINIMUM", "ruleValue": 0.23692930915578703}]}, {"allowedAction": "tI8ZHGarjHLJmxxt", "ruleDetail": [{"ruleAttribute": "y7vM6g2afCUz2XyU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7784110950029841}, {"ruleAttribute": "3kD0dvRNaQOx0MjD", "ruleCriteria": "EQUAL", "ruleValue": 0.4438019686817364}, {"ruleAttribute": "UDX8e27CohgfYCBh", "ruleCriteria": "EQUAL", "ruleValue": 0.0015604934535196069}]}]}, "groupType": "PUBLIC"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
