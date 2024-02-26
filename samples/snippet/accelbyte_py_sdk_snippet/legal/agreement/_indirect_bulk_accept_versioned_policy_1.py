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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "atwYw4rKIdavfsNw", "policyId": "t78k8ySG7YcOOjJy", "policyVersionId": "1JwBe8uppPnGf2o7"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Yqn3CPrYKkLe4epR", "policyId": "bpfyWt4eOJkMXmUy", "policyVersionId": "FnOHvGxA1aUC9gM7"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Eiae3SXcqxgUsEfm", "policyId": "s9LpoM0l0rgtp2cO", "policyVersionId": "1dVQkCxoQC4yrKKw"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
