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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gPwLbPDwpkr8crIz", "policyId": "pzao6v05iNxU6VIF", "policyVersionId": "KNzddKHcYuVJvxtT"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZEbTKOO2Mxz8dnmo", "policyId": "lA1y2T40MtYOz8gR", "policyVersionId": "reyor57WkjAFJKm9"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ggFRqkDi61aFs1zq", "policyId": "f1T3CqNcvcDkdiPU", "policyVersionId": "Jf2xwFh7hdU6yTrT"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
