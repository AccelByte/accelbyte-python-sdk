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

Example: '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FKizqLjBJDmjw5Mp", "policyId": "C7mUOvfgUUDjs3cx", "policyVersionId": "SeqhjtOuJtF7slFa"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1YH03Jf3nRGqFb5G", "policyId": "LEkkR5AiUmJUbzPM", "policyVersionId": "t7bkjo9CClNfuAGE"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aEKHDf4Cn30V2uUA", "policyId": "krsThma9o50zMgMZ", "policyVersionId": "MYsALqi08qJNfyjT"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_v2(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
