import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_group_configuration_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsCreateGroupConfigurationRequestV1
from accelbyte_py_sdk.api.group.models import ModelsCreateGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsCreateGroupConfigurationRequestV1
allow_multiple: bool
configuration_code: str
description: str
global_rules: List[ModelsRule]
Definition: List[ModelsRule]
    allowed_action: str
    rule_detail: List[ModelsRuleInformation]
    Definition: List[ModelsRuleInformation]
        rule_attribute: str
        rule_criteria: str
        rule_value: float
group_admin_role_id: str
group_max_member: int
group_member_role_id: str
name: str

Example: '{"allowMultiple": false, "configurationCode": "vIMRscNCUIHybKv4", "description": "Zf2fQk9zu6RmXnyj", "globalRules": [{"allowedAction": "fjWKXQL4A9aqFv3V", "ruleDetail": [{"ruleAttribute": "LlyaHGSZODsNrC5C", "ruleCriteria": "MINIMUM", "ruleValue": 0.7788094421193004}, {"ruleAttribute": "9MzWLDrt3tfhErdY", "ruleCriteria": "MINIMUM", "ruleValue": 0.9787085669747134}, {"ruleAttribute": "TTuQ9UoCgakB7Uwg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.972389102017344}]}, {"allowedAction": "IkFZu67hL3sAwpuu", "ruleDetail": [{"ruleAttribute": "a5eFIVoXwkOj2y5F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6058246007003374}, {"ruleAttribute": "52DCYRXCwyDcrelk", "ruleCriteria": "MINIMUM", "ruleValue": 0.01929636272926527}, {"ruleAttribute": "ejaLDJSxxVLLQcSR", "ruleCriteria": "EQUAL", "ruleValue": 0.17859414417435293}]}, {"allowedAction": "bzGOiEpULuvbDIv0", "ruleDetail": [{"ruleAttribute": "ONzTLMXKsMO2jomJ", "ruleCriteria": "EQUAL", "ruleValue": 0.4795615664312546}, {"ruleAttribute": "FSJhnrTfq5LzcEyd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6676107589452388}, {"ruleAttribute": "Ij9CQkA8kUIyWCEI", "ruleCriteria": "EQUAL", "ruleValue": 0.07571068918677404}]}], "groupAdminRoleId": "r3K6HSLXWM7P4JBU", "groupMaxMember": 48, "groupMemberRoleId": "ovpivo8L1W3zh6VD", "name": "F4Jon6ZtA0Gjnjjf"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
