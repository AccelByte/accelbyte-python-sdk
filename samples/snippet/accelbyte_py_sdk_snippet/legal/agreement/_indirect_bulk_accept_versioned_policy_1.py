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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hfE9a965gHiP06Nx", "policyId": "QunLfFdtnsLdAqSD", "policyVersionId": "EbTmoOIruUlZcKiI"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aaEJ8SM8qLdFiQnI", "policyId": "XKwQ9ULIKx2WTUAE", "policyVersionId": "vlOzeB63fD25IGdf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1MGPMozqKd7qJq1T", "policyId": "R3oh9XcSumGYy8vS", "policyVersionId": "Z9W3yvMq9n5H9tMu"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
