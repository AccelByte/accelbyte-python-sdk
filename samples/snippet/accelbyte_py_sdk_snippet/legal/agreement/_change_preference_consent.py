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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Lbmg8zFWIkauOVT9", "policyId": "m2dQz5HIEQVhuyNi", "policyVersionId": "ieR8r86mU0xPIEGP"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zg79Bv7lvT1DDK8H", "policyId": "J5jIz8rSJpz4osfR", "policyVersionId": "NGh0hfNXAfDuhD6a"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZpLzquiBQhC6WaMp", "policyId": "332vPe6UYzZ47bZq", "policyVersionId": "r5IZVgpy6cxOmrIG"}]'
"""

result, error = change_preference_consent(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
