import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_new_group_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsPublicCreateNewGroupRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsPublicCreateNewGroupRequestV1
configuration_code: str
custom_attributes: Dict[str, Any]
group_description: str
group_icon: str
group_max_member: int
group_name: str
group_region: str
group_rules: ModelsGroupRule
Definition: ModelsGroupRule
    group_custom_rule: ModelsGroupRuleGroupCustomRule
    Definition: ModelsGroupRuleGroupCustomRule
    group_predefined_rules: List[ModelsRule]
    Definition: List[ModelsRule]
        allowed_action: str
        rule_detail: List[ModelsRuleInformation]
        Definition: List[ModelsRuleInformation]
            rule_attribute: str
            rule_criteria: str
            rule_value: float
group_type: str

Example: '{"configurationCode": "knysDuIlGECi2CaQ", "customAttributes": {"nDKIZJ8wKkXS45tl": {}, "h9zuQ02c2HYWGSnY": {}, "GPzoNh9naiN5nD3d": {}}, "groupDescription": "FgSEkTvKYL1ZzOII", "groupIcon": "wqFvHeZRJqZkAS2g", "groupMaxMember": 82, "groupName": "saKLaqs3ipLGeKvJ", "groupRegion": "84bFHgEUcVsa8FAL", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "SQ8ZmE91ESklkjLu", "ruleDetail": [{"ruleAttribute": "LWwJBOhZYQNj6PQG", "ruleCriteria": "MINIMUM", "ruleValue": 0.3839154531949649}, {"ruleAttribute": "pXxAWnNa0Vle4LFw", "ruleCriteria": "EQUAL", "ruleValue": 0.8831531083476185}, {"ruleAttribute": "zk3KquGRwYlyfFuu", "ruleCriteria": "EQUAL", "ruleValue": 0.9339323118200544}]}, {"allowedAction": "yjycnfRRNwwIIhC0", "ruleDetail": [{"ruleAttribute": "cXuDtJsn1Uqisg8u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1183429089986664}, {"ruleAttribute": "JkIQ2nEjm2Bc1lLn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47808927037901205}, {"ruleAttribute": "I4hXk26AxvlQDXNq", "ruleCriteria": "EQUAL", "ruleValue": 0.19527410581088478}]}, {"allowedAction": "GhXXLyXiM6K9neiB", "ruleDetail": [{"ruleAttribute": "5NkaF52gNtcqwwnG", "ruleCriteria": "MINIMUM", "ruleValue": 0.5673941928362974}, {"ruleAttribute": "hfurrA3lkWfLzYQT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5732759701759107}, {"ruleAttribute": "xdm1sb9XhDekWi5I", "ruleCriteria": "MINIMUM", "ruleValue": 0.18782762970942568}]}]}, "groupType": "PRIVATE"}'
"""

result, error = create_new_group_public_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
