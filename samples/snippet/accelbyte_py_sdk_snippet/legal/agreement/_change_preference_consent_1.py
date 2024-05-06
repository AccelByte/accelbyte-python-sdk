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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "E28qz0sKvVDJVtyv", "policyId": "RbFGvHkNudKbju3n", "policyVersionId": "fnwP5OtAhEqqjKkS"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Y1woVhkWBqC08XiZ", "policyId": "BFiNzysf7rMzyWFH", "policyVersionId": "7ym0USKF8QFclISB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HragKzami7Gy6WU5", "policyId": "N2jNWWyNzUh5ovQv", "policyVersionId": "sXw3Li1cTHMqS2gq"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
