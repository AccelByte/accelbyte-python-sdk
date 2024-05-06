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

Example: '{"ruleDetail": [{"ruleAttribute": "k1aqzyWICg5ZpMVR", "ruleCriteria": "EQUAL", "ruleValue": 0.9694256739477283}, {"ruleAttribute": "OqRJP9Ms7f2czzr1", "ruleCriteria": "EQUAL", "ruleValue": 0.11214050467330017}, {"ruleAttribute": "VHazxid1hyw47Ami", "ruleCriteria": "MINIMUM", "ruleValue": 0.7513541328999715}]}'
"""

result, error = update_group_configuration_global_rule_admin_v1(
    body=body,
    allowed_action=allowed_action,
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
