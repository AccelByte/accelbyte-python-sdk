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

Example: '{"allowMultiple": true, "configurationCode": "lhlpR2qIX4AZchY2", "description": "3h7U9PDxk2Gwn1f6", "globalRules": [{"allowedAction": "thmclhHf0qmhOC1m", "ruleDetail": [{"ruleAttribute": "eipQeDOinBX44rNV", "ruleCriteria": "MINIMUM", "ruleValue": 0.9100670009611987}, {"ruleAttribute": "OFrSzzVuWGl3k8uj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4312713560793108}, {"ruleAttribute": "azievSbnGljI3Mv9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5649549315206477}]}, {"allowedAction": "Ce1n52L30jiv7m5J", "ruleDetail": [{"ruleAttribute": "3WFIN5Cn8sCKQPyk", "ruleCriteria": "MINIMUM", "ruleValue": 0.48175992433067194}, {"ruleAttribute": "kXHIhnWSfVsZmOai", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6203116168097912}, {"ruleAttribute": "ASPb7dd0k5az9zML", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6825066471053226}]}, {"allowedAction": "lWMU43MGqNH1fJ8F", "ruleDetail": [{"ruleAttribute": "cktKMLuy6MXTTZBw", "ruleCriteria": "MINIMUM", "ruleValue": 0.6820128707375264}, {"ruleAttribute": "WYgD2J6Tmle97Lvi", "ruleCriteria": "EQUAL", "ruleValue": 0.05895763016127298}, {"ruleAttribute": "BHSKzit7gw9WRoMv", "ruleCriteria": "MINIMUM", "ruleValue": 0.2726394416539999}]}], "groupAdminRoleId": "l9fom8sAi4448yEX", "groupMaxMember": 30, "groupMemberRoleId": "qJg78o8sxzzx1WMA", "name": "lC7HxBrDNEc2CYtX"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
