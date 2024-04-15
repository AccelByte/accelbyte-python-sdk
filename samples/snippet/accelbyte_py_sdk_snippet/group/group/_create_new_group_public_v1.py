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

Example: '{"configurationCode": "cMdSPIon6Lw7PDAS", "customAttributes": {"zvBo60irfTCGMYXk": {}, "NDECIBPLpTllSQme": {}, "Fjc7j6vdkUT5kh6W": {}}, "groupDescription": "D1Pui0JgjhZpjwxr", "groupIcon": "wa5X0cSMjX896EG7", "groupMaxMember": 91, "groupName": "dLWlGeMMDmwjS5Bm", "groupRegion": "TD2fHcA1kDzbWLUY", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "chzuWJEjcNq6T6Ku", "ruleDetail": [{"ruleAttribute": "B9rcFBKPxHBZPgwt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5280045796759574}, {"ruleAttribute": "H3OtyoacdFmuoX0F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.776932941730442}, {"ruleAttribute": "BA1qFDiEUrFqgAKx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08667596882296247}]}, {"allowedAction": "ha9jgoVf2oTnaBRA", "ruleDetail": [{"ruleAttribute": "FtmFF4hcKgpbORY0", "ruleCriteria": "EQUAL", "ruleValue": 0.7956998123408966}, {"ruleAttribute": "4J0TpeNONOnn0gHp", "ruleCriteria": "EQUAL", "ruleValue": 0.9881552794737988}, {"ruleAttribute": "ufyu9PKSSjuMCjWp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9538182629280979}]}, {"allowedAction": "jmBTo1HnTuGb8uvG", "ruleDetail": [{"ruleAttribute": "25yR4gocdUFWfD29", "ruleCriteria": "MINIMUM", "ruleValue": 0.6812836786675526}, {"ruleAttribute": "tBRSsAb0JzK9jgeE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14499811556742526}, {"ruleAttribute": "51jkcDjTxDrGaTnT", "ruleCriteria": "EQUAL", "ruleValue": 0.5717217818152898}]}]}, "groupType": "PUBLIC"}'
"""

result, error = create_new_group_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
