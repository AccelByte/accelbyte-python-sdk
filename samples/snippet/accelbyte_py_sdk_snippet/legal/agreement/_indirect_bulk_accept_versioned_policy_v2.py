import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import indirect_bulk_accept_versioned_policy_v2
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import AcceptAgreementResponse

"""
body:
Definition: List[AcceptAgreementRequest]
is_accepted: bool
is_need_to_send_event_marketing: bool
localized_policy_version_id: str
policy_id: str
policy_version_id: str

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mWVoCE7e6Grl9C9o", "policyId": "cy6OBSzjpCBhZUxM", "policyVersionId": "y00WIjC5nEHSYNjz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nKTdc7Oslxjya8an", "policyId": "W09F4a5WMUDAetoq", "policyVersionId": "MAov5mUhH6i9rUG2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hIVAhOI90jVIc6nk", "policyId": "1cDdUUOV7YzetKeO", "policyVersionId": "BoGCGOBUlYFyxypD"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_v2(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
