import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import indirect_bulk_accept_versioned_policy
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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CtMAdpgs38nKbo80", "policyId": "xMikyG6Z2SnA6nGB", "policyVersionId": "cpAqks4RLHOQF8tD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RJTb8DKOdN52xmDF", "policyId": "qI7lGmx16qssT6l0", "policyVersionId": "elmc8x5C6ZyKWRn8"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fN89O7gULPeS2ONa", "policyId": "t0DCOagfeoAtPMr7", "policyVersionId": "p7G2gxBGueUdsw5a"}]'
"""

result, error = indirect_bulk_accept_versioned_policy(
    user_id=user_id,
    client_id=client_id,
    country_code=country_code,
    body=body,
    publisher_user_id=publisher_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
