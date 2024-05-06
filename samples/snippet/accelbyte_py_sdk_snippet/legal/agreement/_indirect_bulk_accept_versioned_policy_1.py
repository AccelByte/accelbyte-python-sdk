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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Yjw3DkGoYRaIepMG", "policyId": "qTRmw9orTwoz2eOr", "policyVersionId": "wPoCfiEe8tkS9p0F"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FeQTcNJ3vDzQgtsj", "policyId": "xHjNQiLhxee1Xqzq", "policyVersionId": "ZdI7ETCmjm3OsURG"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RoUdlnOaPO7zC9Zl", "policyId": "RgiricUr8rxh8nmW", "policyVersionId": "3Oyv3q2xdDhbpUtO"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_1(
    user_id=user_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
