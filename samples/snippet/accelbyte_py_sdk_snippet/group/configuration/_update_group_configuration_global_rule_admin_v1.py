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

Example: '{"ruleDetail": [{"ruleAttribute": "8hYSr18pvGJf6LKE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.555248511963605}, {"ruleAttribute": "F4p8Dnx7IvjrpAPy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.96687922987707}, {"ruleAttribute": "PDprJUpRTLsl86oz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7616115325588262}]}'
"""

result, error = update_group_configuration_global_rule_admin_v1(
    body=body,
    allowed_action=allowed_action,
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
