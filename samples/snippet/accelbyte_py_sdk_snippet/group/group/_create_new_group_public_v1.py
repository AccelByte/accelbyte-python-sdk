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

Example: '{"configurationCode": "gtJzrBpGefpNiTez", "customAttributes": {"V61E9xs0EM8OE5jz": {}, "0BxDR7CgnpCSkoB8": {}, "66hb6516pQjzgAZX": {}}, "groupDescription": "q7tKJgpLzpbB30yc", "groupIcon": "U4B0nmFEIZqpRG0t", "groupMaxMember": 84, "groupName": "g3O2k9jlsBArc9Mf", "groupRegion": "Ywo7nXyaPCBQyqPi", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "H0Nkzm9WLEdPyPhm", "ruleDetail": [{"ruleAttribute": "urbneuxjcqDHBlZf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8268929339510479}, {"ruleAttribute": "ZhFazGngmulfcCQF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22016733414589373}, {"ruleAttribute": "IoDE97p7XTXEJ6i1", "ruleCriteria": "MINIMUM", "ruleValue": 0.23607633034632958}]}, {"allowedAction": "58Ad7lAQjh2JnJH0", "ruleDetail": [{"ruleAttribute": "QMtI2gaOOeBaFikT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7944578666158076}, {"ruleAttribute": "Fpk1BjAxzX3IodL6", "ruleCriteria": "MINIMUM", "ruleValue": 0.9511154242702758}, {"ruleAttribute": "FbuaP5kmEKmDoiCx", "ruleCriteria": "EQUAL", "ruleValue": 0.05387115452645175}]}, {"allowedAction": "hIn7RB28NumejhnJ", "ruleDetail": [{"ruleAttribute": "2Mq2LYrcEUzrOiSa", "ruleCriteria": "MINIMUM", "ruleValue": 0.6629152660967621}, {"ruleAttribute": "kTs69V02yFtQV0o0", "ruleCriteria": "EQUAL", "ruleValue": 0.473074263360593}, {"ruleAttribute": "R1ZIxtShwcj1crGu", "ruleCriteria": "EQUAL", "ruleValue": 0.41837125200685366}]}]}, "groupType": "PRIVATE"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
