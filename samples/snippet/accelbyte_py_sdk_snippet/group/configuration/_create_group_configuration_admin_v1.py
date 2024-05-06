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

Example: '{"allowMultiple": false, "configurationCode": "QXjIqGxTWj3Fc2k2", "description": "Idi1yCvgXtsKRDAc", "globalRules": [{"allowedAction": "EBeIK1PhoLwtGi3o", "ruleDetail": [{"ruleAttribute": "YhCFOdpoSnXnOdZU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34391563752344945}, {"ruleAttribute": "ufrVyXDcgGTFdbFg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5221873432965817}, {"ruleAttribute": "eFzKNeIxXtwL0cF9", "ruleCriteria": "MINIMUM", "ruleValue": 0.9533703118157602}]}, {"allowedAction": "7umkD5NXCErRp3Q9", "ruleDetail": [{"ruleAttribute": "iiF4PgLTZzJCyeAL", "ruleCriteria": "MINIMUM", "ruleValue": 0.41190854395996335}, {"ruleAttribute": "nKp9iX780KUaANFR", "ruleCriteria": "EQUAL", "ruleValue": 0.49622624938088433}, {"ruleAttribute": "ajlLFCzW7JjFaCgP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06389268206832055}]}, {"allowedAction": "j8uajHhW5LJID40c", "ruleDetail": [{"ruleAttribute": "FG0dPg7g4zAR1sNJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8948028281849298}, {"ruleAttribute": "B6ZDKFUugcUTbSyA", "ruleCriteria": "MINIMUM", "ruleValue": 0.19950913110785073}, {"ruleAttribute": "0oo3GHtaIPz8y8jY", "ruleCriteria": "MINIMUM", "ruleValue": 0.5453359746912608}]}], "groupAdminRoleId": "dqrgenyNlQfhnTrP", "groupMaxMember": 16, "groupMemberRoleId": "QmqTFvxsov3l3D2R", "name": "qrPcRfUBrGzodJGA"}'
"""

result, error = create_group_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
