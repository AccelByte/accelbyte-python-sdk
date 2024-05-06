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

Example: '{"configurationCode": "uXeogVTYfQcvaryJ", "customAttributes": {"5zCAMy9r9ncDCd5J": {}, "iE02XKqAOwJre83X": {}, "eMeLJKkPuvJCEUpr": {}}, "groupDescription": "Z7lebgQXabR3JEhh", "groupIcon": "JkAWLKfXm8YcPajd", "groupMaxMember": 0, "groupName": "oauXqW0PIa8xYdWf", "groupRegion": "3ONl0tm167YV0bMM", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Gd56TeKhIrKJJHhy", "ruleDetail": [{"ruleAttribute": "7d8PMu6GyS3WROcj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10464808660035518}, {"ruleAttribute": "ngBg72kIeMpTBRfg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36141989038528743}, {"ruleAttribute": "O2LvumKlGPaKHiWF", "ruleCriteria": "EQUAL", "ruleValue": 0.11350602610008353}]}, {"allowedAction": "lQ2VkX5FaBOJIsZT", "ruleDetail": [{"ruleAttribute": "rzgxW0kENt6eJfJa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0719421216666234}, {"ruleAttribute": "8ScE2KJv7Yp9ROF8", "ruleCriteria": "EQUAL", "ruleValue": 0.9524661541258902}, {"ruleAttribute": "ppTmJTSOCwzLqWht", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5108206830266595}]}, {"allowedAction": "c4sRARcfjMJLlqXB", "ruleDetail": [{"ruleAttribute": "UStS5JgKxfS8T7My", "ruleCriteria": "MINIMUM", "ruleValue": 0.315702628077019}, {"ruleAttribute": "BLmz4I6gxbqOOZcM", "ruleCriteria": "MINIMUM", "ruleValue": 0.08381337459234339}, {"ruleAttribute": "eKNtQ76JQn3FQcSr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.44870790383561854}]}]}, "groupType": "PRIVATE"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
