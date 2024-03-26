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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UtFabsoxtBb6oODy", "policyId": "zLhYOavYPpO35UVP", "policyVersionId": "HjMKLKHtfSghNlPe"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D8LQYsNLuG1bqzqA", "policyId": "B0tp8nEbmMJcTHad", "policyVersionId": "THBAFKWwMIIcJU2t"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2eTHHLZLMYu2A3iK", "policyId": "jd1qCxgBpRglr8ko", "policyVersionId": "G0xYhaQDj6F1i9Cn"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
