import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_configuration_global_rule_admin_v1
from accelbyte_py_sdk.api.group.models import (
    ModelsUpdateGroupConfigurationGlobalRulesRequestV1,
)
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupConfigurationGlobalRulesRequestV1
rule_detail: List[ModelsRuleInformation]
Definition: List[ModelsRuleInformation]
    rule_attribute: str
    rule_criteria: str
    rule_value: float

Example: '{"ruleDetail": [{"ruleAttribute": "2fy3ZuuLr1rDGzgn", "ruleCriteria": "EQUAL", "ruleValue": 0.5192097882856898}, {"ruleAttribute": "QwGZOsl7gjeX8VYr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8880426864513048}, {"ruleAttribute": "FMMnudDcJkE25jyl", "ruleCriteria": "EQUAL", "ruleValue": 0.3856098860486592}]}'
"""

result, error = update_group_configuration_global_rule_admin_v1(
    body=body,
    allowed_action=allowed_action,
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
