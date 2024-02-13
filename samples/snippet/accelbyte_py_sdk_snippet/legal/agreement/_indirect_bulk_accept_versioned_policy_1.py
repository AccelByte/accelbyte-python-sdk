import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import indirect_bulk_accept_versioned_policy_1
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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GvHk257zBO97syjw", "policyId": "ho2tC373FbcZOzn8", "policyVersionId": "V4S7cTDpfq9J0bnG"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Lyu1KBWPppoeLIXl", "policyId": "sG2r0dTJhV7kp4nV", "policyVersionId": "7JrKrK35tYpeJLBF"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HuoIvIFu8ibxg1cj", "policyId": "u6HneIod3eh2VXMw", "policyVersionId": "ce3M1g67lmvG3NWf"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
