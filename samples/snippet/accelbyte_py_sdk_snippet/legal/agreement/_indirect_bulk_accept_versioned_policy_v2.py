import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import indirect_bulk_accept_versioned_policy_v2
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import AcceptAgreementResponse

"""
body:
Definition: List[AcceptAgreementRequest]
is_accepted: bool
is_need_to_send_event_marketing: bool
localized_policy_version_id: str
policy_id: str
policy_version_id: str

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4Chr4O6sfIYwU3U9", "policyId": "ouPlazzCQJgLvVXf", "policyVersionId": "iCDOeNImKbvXRpVR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ao4NU95DuhuVYmam", "policyId": "vd5JmG9YfQQ9CzHi", "policyVersionId": "bGJW3BsJB2LclcAW"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "91yqAZH2pG7oWqhp", "policyId": "b1aITZ4LX4sW41ro", "policyVersionId": "1dT46ZLugZYiSbRz"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_v2(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
