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

Example: '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iUpKh4P1n0kFszoQ", "policyId": "TX5dKvcghF8Q1zOv", "policyVersionId": "0rg2X55GtYTuMMvf"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7OGPxXCreVji03t1", "policyId": "DFvLyrMcRdcyJXVG", "policyVersionId": "a5IUe1AmJmEKKd6Y"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "w0pxP6Olz5WCuH9M", "policyId": "HZaziudLiHGlA8FR", "policyVersionId": "5vv0Pz2gbNye5yyq"}]'
"""

result, error = bulk_accept_versioned_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
