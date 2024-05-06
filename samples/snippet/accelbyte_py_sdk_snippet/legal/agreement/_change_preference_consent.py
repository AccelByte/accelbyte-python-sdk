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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "awH6CrYIVHoDiMUv", "policyId": "0of1MLcSLjbtS0Yw", "policyVersionId": "Nns4NbGDSf4XOxeo"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DQKmaoBaeDlyCnQ7", "policyId": "CwYsHudpdwi89bWb", "policyVersionId": "BwOw04KcqzzIbD7E"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bWWor6W7qrQ99yJC", "policyId": "FHgSrtU5z3pKBu9D", "policyVersionId": "XRlYA01Qi1Hd4VGT"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
