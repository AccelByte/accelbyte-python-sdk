import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import change_preference_consent
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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "eQCyBUw9BwXCe7LD", "policyId": "vkvmPaRBW5QySH5l", "policyVersionId": "gWuDZYRDZvXf6C4m"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "97G5bkVfFbAUsnZr", "policyId": "mZCwTrrEeaEMwjur", "policyVersionId": "WsxDV6j8G0572jFR"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "djPgTXEjKQGmcy6D", "policyId": "1e0CCtZsRBhUO9Uy", "policyVersionId": "eqPxtf9gWKtuc4RW"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
