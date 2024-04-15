import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_new_group_public_v2
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

Example: '{"configurationCode": "2tlncNFaSKIJN9tf", "customAttributes": {"nJmGTDwWnRcn5EBn": {}, "Y8UkO7fsqLXo6ugj": {}, "Dybroe6DyERWRAFe": {}}, "groupDescription": "svOpgKQzjJf836bI", "groupIcon": "AtBpEf7g7uVCzvpy", "groupMaxMember": 5, "groupName": "ppm1ZMAeFVoIvrp8", "groupRegion": "HmSUmO0n1Pmj9POC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "LsDieOqdpv3alEqH", "ruleDetail": [{"ruleAttribute": "VLgQM2JV2Gogl72O", "ruleCriteria": "EQUAL", "ruleValue": 0.8380448127544128}, {"ruleAttribute": "Czz7CTGYB2wG1GsH", "ruleCriteria": "EQUAL", "ruleValue": 0.8818408025984946}, {"ruleAttribute": "AGyzUroOWmx9XvBd", "ruleCriteria": "MINIMUM", "ruleValue": 0.5626499818058189}]}, {"allowedAction": "d9gYOis99F16xKio", "ruleDetail": [{"ruleAttribute": "svTRpCveQkq6Bbnt", "ruleCriteria": "MINIMUM", "ruleValue": 0.9708827707815652}, {"ruleAttribute": "pzSbdDYUgsU1Tx5y", "ruleCriteria": "EQUAL", "ruleValue": 0.6029688053652916}, {"ruleAttribute": "WND5o73V8eWHIpUw", "ruleCriteria": "EQUAL", "ruleValue": 0.2988456733785625}]}, {"allowedAction": "qzV4BBRIIHiYSo6q", "ruleDetail": [{"ruleAttribute": "iAhPdtfo4YzYcSG4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22169117374456004}, {"ruleAttribute": "IoMp3haYOS0CN7W9", "ruleCriteria": "MINIMUM", "ruleValue": 0.5116074812906092}, {"ruleAttribute": "ZVGSs6V7Tr0DlM9b", "ruleCriteria": "MINIMUM", "ruleValue": 0.025417095482623164}]}]}, "groupType": "PUBLIC"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
