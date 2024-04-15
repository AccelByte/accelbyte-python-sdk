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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HALeRrdyAajIPBpa", "policyId": "6K2d1FpFur5AB8Tk", "policyVersionId": "MEFwzZB0grym1AG8"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZKgTOU18lBx3RBec", "policyId": "rRvOrWW8HP8Wewd7", "policyVersionId": "XinuI6GCWWnT72ls"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PZ5AIOARrKOi9vQE", "policyId": "I0Q4sviIXPAVGKLP", "policyVersionId": "snzI1fjLVqxb2czP"}]'
"""

result, error = change_preference_consent_1(
    body=body,
    x_additional_headers=x_additional_headers,
)
