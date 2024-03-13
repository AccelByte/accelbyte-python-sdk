import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import change_preference_consent_1
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: List[AcceptAgreementRequest]
is_accepted: bool
is_need_to_send_event_marketing: bool
localized_policy_version_id: str
policy_id: str
policy_version_id: str

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LSM0ZPLoCE4G8IuF", "policyId": "r5B0k8DLKWO4TCCc", "policyVersionId": "SuKopPqN0LEW2VbE"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cZp22sQ9BrS87vZq", "policyId": "V5b4VAZJRIMvnNey", "policyVersionId": "y82mTS52h9UtV8hx"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bbLzWGRuzWIitKoV", "policyId": "w4pP9RWHxYNA52QX", "policyVersionId": "frb9OhThDpb5lgBA"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
