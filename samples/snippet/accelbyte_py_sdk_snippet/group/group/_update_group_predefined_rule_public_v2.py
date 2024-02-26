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

Example: '{"ruleDetail": [{"ruleAttribute": "WdzbiPtVV37n20sB", "ruleCriteria": "EQUAL", "ruleValue": 0.6120075148863929}, {"ruleAttribute": "VHjQ0cGyucDxhhQs", "ruleCriteria": "MINIMUM", "ruleValue": 0.1555306031820859}, {"ruleAttribute": "sATmQz8kIYU1g2JH", "ruleCriteria": "EQUAL", "ruleValue": 0.8789209427225869}]}'
"""

result, error = update_group_predefined_rule_public_v2(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
