import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_predefined_rule_public_v1
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

Example: '{"ruleDetail": [{"ruleAttribute": "AsS92gDz11jvElqF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7034536360978579}, {"ruleAttribute": "GHmQ5Erujz9FlFNH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8878371926673434}, {"ruleAttribute": "S7d9bvqXyLBgl0eE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4458013691989333}]}'
"""

result, error = update_group_predefined_rule_public_v1(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
