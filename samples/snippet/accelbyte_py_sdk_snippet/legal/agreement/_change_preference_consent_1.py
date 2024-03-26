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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qy4HZ2WUddw1XaI0", "policyId": "CLy9gQX9gmfBLSSU", "policyVersionId": "g2HOq0AFVzIlhSFB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fX89A9opAxSIFyl6", "policyId": "HaXz6ZS0jAnshwxK", "policyVersionId": "1TnwoXkq4uqD99CK"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fKv7AORetyocF6lS", "policyId": "kkGwGwjvY0uSWQBd", "policyVersionId": "XeQNHgoKlXrGn8Dr"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
