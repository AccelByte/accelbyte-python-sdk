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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Lsir78rhYcPvvT4N", "policyId": "OZSUQXhD7ydYPSVA", "policyVersionId": "trXJIMnublYzviKp"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "o6gc6yMYIYDDTL9U", "policyId": "aTJYSd49Pu1oShaw", "policyVersionId": "qZXMZhShlvypXEM9"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kYusFgSOmmIXBmBP", "policyId": "ULt0r56o0q4cxJxh", "policyVersionId": "m7lOYGbF7uYF2VEY"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
