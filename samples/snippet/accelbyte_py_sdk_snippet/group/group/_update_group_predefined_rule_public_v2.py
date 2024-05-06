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

Example: '{"ruleDetail": [{"ruleAttribute": "BjRO9G4aQnyFWaEq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5876545183345284}, {"ruleAttribute": "5NgOiqPQC2LOk4VN", "ruleCriteria": "EQUAL", "ruleValue": 0.4861167722691977}, {"ruleAttribute": "7tGTXNVXx6ahzmFQ", "ruleCriteria": "EQUAL", "ruleValue": 0.5329197615406737}]}'
"""

result, error = update_group_predefined_rule_public_v2(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
