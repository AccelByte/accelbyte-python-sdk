import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_predefined_rule_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupPredefinedRuleRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupPredefinedRuleRequestV1
rule_detail: List[ModelsRuleInformation]
Definition: List[ModelsRuleInformation]
    rule_attribute: str
    rule_criteria: str
    rule_value: float

Example: '{"ruleDetail": [{"ruleAttribute": "UEgFTROrdETtOaw6", "ruleCriteria": "MINIMUM", "ruleValue": 0.6942368518122436}, {"ruleAttribute": "IRAgiSMxHkAUPpEc", "ruleCriteria": "MINIMUM", "ruleValue": 0.0868146675008028}, {"ruleAttribute": "eh5jEVoThbZ4a2kb", "ruleCriteria": "MINIMUM", "ruleValue": 0.8240639912213119}]}'
"""

result, error = update_group_predefined_rule_public_v2(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
