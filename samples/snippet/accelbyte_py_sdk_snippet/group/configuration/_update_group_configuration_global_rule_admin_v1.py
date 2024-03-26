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

Example: '{"ruleDetail": [{"ruleAttribute": "1Iaa2oRQybr8JEPa", "ruleCriteria": "EQUAL", "ruleValue": 0.46096168197970755}, {"ruleAttribute": "QIWREQhY72Wfnrzg", "ruleCriteria": "MINIMUM", "ruleValue": 0.629335752622754}, {"ruleAttribute": "poNfPyMz1pqpaHkW", "ruleCriteria": "MINIMUM", "ruleValue": 0.5200389145833587}]}'
"""

result, error = update_group_configuration_global_rule_admin_v1(
    body=body,
    allowed_action=allowed_action,
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
