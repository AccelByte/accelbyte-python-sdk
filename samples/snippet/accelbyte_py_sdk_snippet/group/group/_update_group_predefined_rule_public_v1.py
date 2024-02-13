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

Example: '{"ruleDetail": [{"ruleAttribute": "MUBbQUBgYtSilHY0", "ruleCriteria": "MINIMUM", "ruleValue": 0.5917043465324227}, {"ruleAttribute": "TPOAevXjBDnlQIFa", "ruleCriteria": "EQUAL", "ruleValue": 0.13295693235195183}, {"ruleAttribute": "xIKHCZsQv0rzEUlf", "ruleCriteria": "EQUAL", "ruleValue": 0.35612139935834664}]}'
"""

result, error = update_group_predefined_rule_public_v1(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
