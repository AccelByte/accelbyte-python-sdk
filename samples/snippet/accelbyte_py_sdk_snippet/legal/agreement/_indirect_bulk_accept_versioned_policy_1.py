import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import indirect_bulk_accept_versioned_policy_1
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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7AXQUSI0EsfdX3dj", "policyId": "ar8M40msnSYkWBCe", "policyVersionId": "FeOazKgKXgEQRQzr"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "U6eVQOweaYf6M3a7", "policyId": "X37MqAki7e1ClyVl", "policyVersionId": "DiZTfbcfykmWjpNq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lh6PNygwb2pukdaB", "policyId": "deQ6eueyCcmfN4uC", "policyVersionId": "KO6jF27KYNzwdtKE"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
