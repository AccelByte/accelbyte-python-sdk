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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EzfpoXbBwE7shmXH", "policyId": "kpAmSXWtz58dGN4s", "policyVersionId": "j5nzYdO1rkBl5nKG"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gsYrkj7YdVumCQxV", "policyId": "HpTbV8fBn8TAZwOX", "policyVersionId": "nTvu9vacSZNHLmOw"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3ZKHVYERhSEOwzN0", "policyId": "7wxKW4H3XHIqHYaQ", "policyVersionId": "dGm0gyT99A6xhqKf"}]'
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
