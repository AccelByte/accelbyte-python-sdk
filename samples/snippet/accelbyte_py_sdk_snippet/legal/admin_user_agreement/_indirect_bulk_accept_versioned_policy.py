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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sv0AfsGJh6rB7lYW", "policyId": "cD8dBEFvYgjucYD5", "policyVersionId": "zGTu5goPri8kCPVc"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CYPQBoYHD99pnoyA", "policyId": "SgUEBmP6Gl9JLNUH", "policyVersionId": "98pUWHMbA1v9z2xI"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BpTyQsBb5GkvIC0A", "policyId": "L8xGOMyQko1AsDHj", "policyVersionId": "wMUrYcwaLFsCHz6M"}]'
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
