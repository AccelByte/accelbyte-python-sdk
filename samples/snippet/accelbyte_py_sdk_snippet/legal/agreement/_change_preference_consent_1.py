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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b8dasWSuE5uEOtJy", "policyId": "T5vWUYMfDXCQyAGW", "policyVersionId": "rwXbl3qJOJVqJELq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YCDEAraTYJq1r7bF", "policyId": "IEvVOy8UivHEmKif", "policyVersionId": "FBNLJhuzAJ2TlAtf"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "41kudrxmyMzHIRC4", "policyId": "79TmTZlDHIaekKvI", "policyVersionId": "zEWqJuFEWo7UiCMw"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
