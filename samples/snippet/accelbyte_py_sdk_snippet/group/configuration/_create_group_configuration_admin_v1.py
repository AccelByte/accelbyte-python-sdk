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

Example: '{"allowMultiple": true, "configurationCode": "lbz9XFAwkyaDCAXf", "description": "o0Kbyg2tfd4m5pAR", "globalRules": [{"allowedAction": "pSuqp4M24EN2K9ni", "ruleDetail": [{"ruleAttribute": "piZeeX9Pr1dcPE64", "ruleCriteria": "MINIMUM", "ruleValue": 0.48300874015611783}, {"ruleAttribute": "38AxjbpohleBZQde", "ruleCriteria": "EQUAL", "ruleValue": 0.8016421752843004}, {"ruleAttribute": "VUvnCPQlH7lDvI9R", "ruleCriteria": "MINIMUM", "ruleValue": 0.19066668177714075}]}, {"allowedAction": "Yxw2iVAGeIRFRvGh", "ruleDetail": [{"ruleAttribute": "HoXov8TSqcpF3FwY", "ruleCriteria": "EQUAL", "ruleValue": 0.47939894882594025}, {"ruleAttribute": "eh4pFHsnxCoVmNXj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.80653908442691}, {"ruleAttribute": "ImFZN8wn1BdWA2IC", "ruleCriteria": "EQUAL", "ruleValue": 0.9782337681835587}]}, {"allowedAction": "4yynwsMPCBQvCQ8s", "ruleDetail": [{"ruleAttribute": "hhjJu2XxXqheH8Dn", "ruleCriteria": "EQUAL", "ruleValue": 0.4631513557263425}, {"ruleAttribute": "NMr3f9yFwUddwJGn", "ruleCriteria": "MINIMUM", "ruleValue": 0.8910917438795325}, {"ruleAttribute": "i6n0MCdhBkk9Dego", "ruleCriteria": "MINIMUM", "ruleValue": 0.9539601397196517}]}], "groupAdminRoleId": "ihYBuWDqa6TrwrlK", "groupMaxMember": 22, "groupMemberRoleId": "q70BaFSGHOf1nEzb", "name": "kzxRQKFNO4wB4ti0"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
