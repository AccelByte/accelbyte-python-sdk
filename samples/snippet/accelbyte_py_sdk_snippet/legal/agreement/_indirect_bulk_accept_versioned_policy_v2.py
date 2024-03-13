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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5vKQZXAw37g1SFz6", "policyId": "p207WTTBE8yXfhbZ", "policyVersionId": "2R4wI8Cmy8gbFEit"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aAUazsSZzvh3QGMi", "policyId": "SU2nCNn608Z9mXea", "policyVersionId": "zTu4gtqoZo82uYV3"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qAeoxVidi2vZR1XD", "policyId": "lsw2pGOjSQRYMAUv", "policyVersionId": "hhyhvIhaVOVESzML"}]'
"""

result, error = indirect_bulk_accept_versioned_policy_v2(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
