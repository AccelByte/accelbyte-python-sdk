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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "A8ylLXvZS77XZkY1", "policyId": "zzHzAVFZ51dTayJ7", "policyVersionId": "JTvKv7PWkgNrphpS"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2dddHK9crmbfagiH", "policyId": "9FFK6t7Ay3dU6ug6", "policyVersionId": "nboCfLTEsDPMwcAG"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RrupEOvI5KlKud2q", "policyId": "wYcs4QpJa77JgFTd", "policyVersionId": "6TYtqay0X2SP6SyD"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
