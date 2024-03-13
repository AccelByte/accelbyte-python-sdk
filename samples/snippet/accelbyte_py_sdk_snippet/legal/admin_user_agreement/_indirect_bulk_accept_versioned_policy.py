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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dwZuaGcSTHUnrrPx", "policyId": "oCPfLq1Nzd1r1yof", "policyVersionId": "j5r6yuqFdFcLhlbD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tfXu4EAtNkeddZWh", "policyId": "Jaym3VaZFnjNzm8k", "policyVersionId": "IK17OPy3rOnFbAKL"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KjJ2s1dWxOMYjnDG", "policyId": "XMxhgeM1ogSjeF7e", "policyVersionId": "s9dmTOmch0Xsw7IK"}]'
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
