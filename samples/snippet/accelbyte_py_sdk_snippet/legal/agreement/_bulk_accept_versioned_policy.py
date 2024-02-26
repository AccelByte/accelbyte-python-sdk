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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oldcmwkeIJq9tsLS", "policyId": "dMyF1VB0QGKleIsZ", "policyVersionId": "Rd1phb2cnAgS747K"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Y0KyXGKpnGPapebn", "policyId": "0LPYhcyX8jJQixX4", "policyVersionId": "jt0MYtelegH6u0ps"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "y8ZbAZv6Bu29BaZG", "policyId": "RTWssPOfSxEjGeIw", "policyVersionId": "kYo3ksCDEJ2Is4ea"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
