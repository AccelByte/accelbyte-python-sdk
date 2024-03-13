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

Example: '{"ruleDetail": [{"ruleAttribute": "bF5rucoFzwFp8lgT", "ruleCriteria": "MINIMUM", "ruleValue": 0.34003263575862763}, {"ruleAttribute": "14XD6M0dG1pSM2wf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5572791725294415}, {"ruleAttribute": "cAk4PZpova76Pa19", "ruleCriteria": "MINIMUM", "ruleValue": 0.5466105246469469}]}'
"""

result, error = update_group_predefined_rule_public_v2(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
