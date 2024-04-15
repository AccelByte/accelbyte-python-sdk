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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PKm1TtMStJfBdxkt", "policyId": "eaekyJ1bmOmVExLN", "policyVersionId": "hOWV5Csx8rIVo3dG"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bTKUzDcCLOeCpVoI", "policyId": "Cp9AFd1yJ7HVoo3q", "policyVersionId": "FRbD8RSngy485McF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GwDGYFgMLxWWC4wz", "policyId": "UKs8WnhmqvGn1dVz", "policyVersionId": "DSHayy46Robwxh42"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
