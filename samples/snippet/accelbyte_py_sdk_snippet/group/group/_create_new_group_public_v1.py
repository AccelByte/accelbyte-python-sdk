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

Example: '{"configurationCode": "BOqiXjCCh4GHpRMK", "customAttributes": {"h0jNDtSxcyeEI8AG": {}, "DMpX8nDrVROOAobm": {}, "m67v3TNOEcPUjdRZ": {}}, "groupDescription": "HQL12IM8ujyYqRyC", "groupIcon": "ttWXzhUKeZwzsTLQ", "groupMaxMember": 0, "groupName": "qugUIQvPHPxoxoKo", "groupRegion": "thzoefSvER0zHcr4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "z9W1emOVkpVaXQqp", "ruleDetail": [{"ruleAttribute": "oGUXfzHf8UnrMQhF", "ruleCriteria": "EQUAL", "ruleValue": 0.9057852111821016}, {"ruleAttribute": "V3QYLJBLIPosuH76", "ruleCriteria": "EQUAL", "ruleValue": 0.8103624369003948}, {"ruleAttribute": "FxBS3cmlklMOLNPU", "ruleCriteria": "MINIMUM", "ruleValue": 0.28356608262815863}]}, {"allowedAction": "t5TSW3g2Sao4VvWA", "ruleDetail": [{"ruleAttribute": "JQ6anCU93AudNmYQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32070248556228353}, {"ruleAttribute": "sqBW2B9GO2TJh0Jz", "ruleCriteria": "MINIMUM", "ruleValue": 0.15661134885958872}, {"ruleAttribute": "yq736LMRnJHdeJzd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07917906318185586}]}, {"allowedAction": "R0TgKkszmzUS7lgy", "ruleDetail": [{"ruleAttribute": "lKGqauFKcYNkpbO7", "ruleCriteria": "EQUAL", "ruleValue": 0.5851316884537923}, {"ruleAttribute": "U7sNv4OqSFUeiPXT", "ruleCriteria": "MINIMUM", "ruleValue": 0.7553680361056755}, {"ruleAttribute": "5MPysNCoY5Q6NN0Z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7078615860522804}]}]}, "groupType": "OPEN"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
