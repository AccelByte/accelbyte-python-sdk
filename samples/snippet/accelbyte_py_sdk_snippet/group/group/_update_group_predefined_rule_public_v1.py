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

Example: '{"ruleDetail": [{"ruleAttribute": "A30u9Lz7vGPSN8m4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4153084683121736}, {"ruleAttribute": "bc0LZoXCjSyGkzZi", "ruleCriteria": "EQUAL", "ruleValue": 0.3134836124487528}, {"ruleAttribute": "GZEtw1foULoiplsB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.30454183072842}]}'
"""

result, error = update_group_predefined_rule_public_v1(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
