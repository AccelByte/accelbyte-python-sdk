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

Example: '{"ruleDetail": [{"ruleAttribute": "UXsLbNEwaAfrJj2L", "ruleCriteria": "MINIMUM", "ruleValue": 0.21853507676683104}, {"ruleAttribute": "gFC0qzvJLMKLx4Mz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2011029736903185}, {"ruleAttribute": "qUtxKlJYHECvn9VJ", "ruleCriteria": "EQUAL", "ruleValue": 0.4364292170918249}]}'
"""

result, error = update_group_predefined_rule_public_v1(
    body=body,
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
