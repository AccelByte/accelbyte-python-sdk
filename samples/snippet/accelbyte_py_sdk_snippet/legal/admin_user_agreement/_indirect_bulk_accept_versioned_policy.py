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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "w43iD4jHK37gxY9o", "policyId": "imNPw3m0AHBEnP4E", "policyVersionId": "VUsWnGPXIluAiiXu"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "P781hxpcl88LeWub", "policyId": "YzsyCv4Xdve66Tyy", "policyVersionId": "XsgLVhjcwsbhKNlS"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vv1TJN6An2Qz0ecQ", "policyId": "Z5fBwakUJg5ctd2K", "policyVersionId": "k5AbkyS83haapOKv"}]'
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
