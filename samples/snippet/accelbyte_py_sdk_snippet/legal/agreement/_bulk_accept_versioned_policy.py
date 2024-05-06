import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import bulk_accept_versioned_policy
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import AcceptAgreementResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: List[AcceptAgreementRequest]
is_accepted: bool
is_need_to_send_event_marketing: bool
localized_policy_version_id: str
policy_id: str
policy_version_id: str

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FUYu52Pjkbr5VVVK", "policyId": "4L5F9IQOIULDZzZP", "policyVersionId": "UyqgbX7CCYULornH"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "y1croUdOMnl8kHgp", "policyId": "aiMCRb9hc8DKnNwn", "policyVersionId": "L3bagqn4zomN1eDl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qe3Te0WBrF7b0Zsq", "policyId": "m98qkjp31nMULrer", "policyVersionId": "TyXVJt6OIvjAQgy4"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
