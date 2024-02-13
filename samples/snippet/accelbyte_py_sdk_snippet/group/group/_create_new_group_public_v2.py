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

Example: '{"configurationCode": "uiA4EFCS7AdbdZaf", "customAttributes": {"kbX6X0ZcOMj0VVpk": {}, "9nzo3WraAOeYb7MN": {}, "5PPVFjhRnObLV1aW": {}}, "groupDescription": "qNcFz3dejIEFeMjA", "groupIcon": "PuCExBddv5K8vrNM", "groupMaxMember": 71, "groupName": "nJAFvtj5zvC7ZR4p", "groupRegion": "qxBm7f03sQx7Bsua", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "hSXdmXtbjNdqjFnJ", "ruleDetail": [{"ruleAttribute": "TzaGubuj14yw1Cpz", "ruleCriteria": "EQUAL", "ruleValue": 0.8403618185681366}, {"ruleAttribute": "ayEM24VoWtfNMgBN", "ruleCriteria": "MINIMUM", "ruleValue": 0.6768219693259756}, {"ruleAttribute": "9c0Jg7a7WLFoBlvY", "ruleCriteria": "EQUAL", "ruleValue": 0.6821118565749994}]}, {"allowedAction": "xBVyGmXFTvO9x8ze", "ruleDetail": [{"ruleAttribute": "ozTg3nUsRwRBzbR8", "ruleCriteria": "EQUAL", "ruleValue": 0.4728656857678123}, {"ruleAttribute": "APnf7VQvJ0Jkt9To", "ruleCriteria": "EQUAL", "ruleValue": 0.11818456602407501}, {"ruleAttribute": "D5tsnVvE54HuEhGM", "ruleCriteria": "EQUAL", "ruleValue": 0.6343046047766705}]}, {"allowedAction": "nwq0xbhVJUsYxUNM", "ruleDetail": [{"ruleAttribute": "Q2NklkRFv2MG0XV0", "ruleCriteria": "EQUAL", "ruleValue": 0.3987292190303291}, {"ruleAttribute": "JmMulnNnKhSLkMuK", "ruleCriteria": "EQUAL", "ruleValue": 0.8548128402198396}, {"ruleAttribute": "zlhj8GfoEjsPC51k", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8861145930776465}]}]}, "groupType": "PRIVATE"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
