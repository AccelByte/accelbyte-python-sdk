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

Example: '{"configurationCode": "F2utFwChEcFzQO0h", "customAttributes": {"sRRJHayJhv5taRJ7": {}, "VeoAfNoKtJOFkU6b": {}, "2gI8Ywv52ZxHBC5X": {}}, "groupDescription": "7aYXYHzLTflqPeFF", "groupIcon": "6nOyQA7KDM63e4aw", "groupMaxMember": 38, "groupName": "GoMYp8jmzHtFU86U", "groupRegion": "4qJ0fZGM3CqJ2wAI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "nG5dzM3r9MUTRtuz", "ruleDetail": [{"ruleAttribute": "ja3W7AJrHbR9820W", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9694919358202042}, {"ruleAttribute": "Fo4ciUSTcTjVU0Ne", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6086561396756889}, {"ruleAttribute": "uOEq9NMqfS2bybRH", "ruleCriteria": "EQUAL", "ruleValue": 0.6278845523390771}]}, {"allowedAction": "5Cx4W5ocLJmsuR0Z", "ruleDetail": [{"ruleAttribute": "L5mShySk9r17vT6B", "ruleCriteria": "MINIMUM", "ruleValue": 0.2713722202325195}, {"ruleAttribute": "h39M6xzZS1yCEV0X", "ruleCriteria": "MINIMUM", "ruleValue": 0.9998054604667262}, {"ruleAttribute": "pMlYRaQTXjUXxWFk", "ruleCriteria": "EQUAL", "ruleValue": 0.8040984011707052}]}, {"allowedAction": "jShMtY9Szd4N203Q", "ruleDetail": [{"ruleAttribute": "ZuTo3l2DEe2yYPQJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6217498035337533}, {"ruleAttribute": "p7CbBHjfhEQVN9NY", "ruleCriteria": "MINIMUM", "ruleValue": 0.6702325388261414}, {"ruleAttribute": "Tvbh5HAajAPfplOE", "ruleCriteria": "EQUAL", "ruleValue": 0.482597889323649}]}]}, "groupType": "OPEN"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
