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

Example: '{"allowMultiple": false, "configurationCode": "6rtBfMc3nczXyvn1", "description": "BcwwlPbs5WJsLKou", "globalRules": [{"allowedAction": "JzLRXwXsFoCjxaPa", "ruleDetail": [{"ruleAttribute": "2rrfRvWqzAgC5dxP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18683807122417728}, {"ruleAttribute": "eWRZdM1vO6myk4Q6", "ruleCriteria": "EQUAL", "ruleValue": 0.19648010746082334}, {"ruleAttribute": "ALUkeoR2nnWJFaG6", "ruleCriteria": "EQUAL", "ruleValue": 0.10158132381670848}]}, {"allowedAction": "ezejO1F3cvNuij3x", "ruleDetail": [{"ruleAttribute": "euTT54QUzxeSxafi", "ruleCriteria": "EQUAL", "ruleValue": 0.8105692107274063}, {"ruleAttribute": "5W0Z6yGm1wGeF0RV", "ruleCriteria": "MINIMUM", "ruleValue": 0.561705670570982}, {"ruleAttribute": "TxfvLUivBWpb0xb4", "ruleCriteria": "MINIMUM", "ruleValue": 0.5132124818615244}]}, {"allowedAction": "CHrBsjXp33vL2NlR", "ruleDetail": [{"ruleAttribute": "13B8T7ybyMyvEPIl", "ruleCriteria": "MINIMUM", "ruleValue": 0.19084981242813714}, {"ruleAttribute": "ZcC4HPXwegiw1qu9", "ruleCriteria": "EQUAL", "ruleValue": 0.9126073489760196}, {"ruleAttribute": "r7CZxASdQWrPfmze", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8967508339690902}]}], "groupAdminRoleId": "4gLPhZKLZGEQMIyV", "groupMaxMember": 72, "groupMemberRoleId": "36D64tpbSimJunQR", "name": "y9Wju94n8VZcIdd1"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
