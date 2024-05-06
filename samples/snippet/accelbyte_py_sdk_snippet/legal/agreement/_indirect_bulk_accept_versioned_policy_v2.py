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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dwmis1T7reFIedhO", "policyId": "d6oHXG78sY7wKvxz", "policyVersionId": "eM79sDB6J0Gd9FW8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6o0Xqztucev2B3Cu", "policyId": "rpT2c0Yr6zp6XAAu", "policyVersionId": "WmYGqVG2MdNtonap"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2c9bkIERyPtwGdIc", "policyId": "X1plPPCcghr5sAc1", "policyVersionId": "QBhc3umcs50gq0BP"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_v2(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
