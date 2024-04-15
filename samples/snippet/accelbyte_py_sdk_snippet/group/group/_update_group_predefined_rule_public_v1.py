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

Example: '{"ruleDetail": [{"ruleAttribute": "a8NAGvdDTsuvSJhQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21313930095121225}, {"ruleAttribute": "ec4D7nqt0Y0QzbPy", "ruleCriteria": "EQUAL", "ruleValue": 0.22769380143289863}, {"ruleAttribute": "69nUfSIpBbkwngDJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5148863360146744}]}'
"""

result, error = update_group_predefined_rule_public_v1(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
