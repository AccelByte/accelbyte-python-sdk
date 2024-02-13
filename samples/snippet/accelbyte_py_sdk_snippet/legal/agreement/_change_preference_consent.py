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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NC72HAOtUWzvh795", "policyId": "JiTNhs46IagswsoL", "policyVersionId": "xBItEoHvzLmXr7ZI"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HIkxEer2552S6SOc", "policyId": "jRJNhEH1RsUrwr3O", "policyVersionId": "9PtEhFgcmMz9dd1G"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qfaYeLrBySwcHOg0", "policyId": "2ZtypjwD3csW6ZWn", "policyVersionId": "77h9WM2I5PZnB5WE"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
