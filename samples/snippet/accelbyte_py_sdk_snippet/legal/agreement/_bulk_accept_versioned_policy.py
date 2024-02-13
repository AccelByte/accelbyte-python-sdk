import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import bulk_accept_versioned_policy
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import AcceptAgreementResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: List[AcceptAgreementRequest]
is_accepted: bool
is_need_to_send_event_marketing: bool
localized_policy_version_id: str
policy_id: str
policy_version_id: str

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "usegwJQemzfaNshf", "policyId": "pNtduFOReHT5Z2iH", "policyVersionId": "BeI9csEmZCU3ocZq"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tyku5z92aEXBaBT2", "policyId": "nwN1fHjo88BFTnZA", "policyVersionId": "SKY4EY1VYYEPmXMT"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "O6Q0vcsK0CqSzWnA", "policyId": "khtScVyXDyydy6wq", "policyVersionId": "iHUziPe4pLe12uO0"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
