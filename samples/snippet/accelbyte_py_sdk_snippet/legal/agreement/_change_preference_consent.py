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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gCus0ULbEPJ2qly5", "policyId": "OQ2d6ZIsl0Q8U854", "policyVersionId": "vpTw82bupf2g8MOF"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nxAAuok6ckgKsHMV", "policyId": "A653VaYX1JnEVc4F", "policyVersionId": "hO7jOzOFpXycENJA"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CheBrhntNQYmhMKX", "policyId": "ww48GTzZqxBphNZP", "policyVersionId": "RZWdg5qTIM6RTDZC"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
