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

Example: '{"allowMultiple": true, "configurationCode": "EyGhDoOhzZBmJv3S", "description": "JrR1IljDBHX8RrCq", "globalRules": [{"allowedAction": "x8ibA0yNPUVKjwm9", "ruleDetail": [{"ruleAttribute": "X5lje7jZVvlq5cka", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7839400904187551}, {"ruleAttribute": "oAbPY9pniSW9Ht9R", "ruleCriteria": "MINIMUM", "ruleValue": 0.5121227017294495}, {"ruleAttribute": "kxTWtsPC7QnaibCW", "ruleCriteria": "EQUAL", "ruleValue": 0.4468353489361794}]}, {"allowedAction": "uSHvOErpIMwd9VNP", "ruleDetail": [{"ruleAttribute": "D5r1f4uBoGE1dY6r", "ruleCriteria": "MINIMUM", "ruleValue": 0.8916168266298512}, {"ruleAttribute": "LnH2KAbmapGBc3Dh", "ruleCriteria": "MINIMUM", "ruleValue": 0.6668401801863026}, {"ruleAttribute": "GvJLiWoTuNXo2AEC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6498083606532957}]}, {"allowedAction": "1ZjzRBVBL6WdmJ1e", "ruleDetail": [{"ruleAttribute": "tPa1bS0arzO8FbNO", "ruleCriteria": "EQUAL", "ruleValue": 0.671957698861913}, {"ruleAttribute": "bt8UUIHfueg7mCh0", "ruleCriteria": "EQUAL", "ruleValue": 0.5498024499539903}, {"ruleAttribute": "m5y8vM0S0Qt8EiJT", "ruleCriteria": "EQUAL", "ruleValue": 0.49060341572173805}]}], "groupAdminRoleId": "S7ljbn7UlU7h00Ts", "groupMaxMember": 97, "groupMemberRoleId": "e1cdUxm6ZNKDFRlR", "name": "XT3nKUr1AqHhvYgI"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
