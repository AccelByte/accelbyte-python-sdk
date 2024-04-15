import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserCreateRequestV3
password_md5_sum: str
accepted_policies: List[LegalAcceptedPoliciesRequest]
Definition: List[LegalAcceptedPoliciesRequest]
    is_accepted: bool
    localized_policy_version_id: str
    policy_id: str
    policy_version_id: str
auth_type: str
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
reach_minimum_age: bool
unique_display_name: str

Example: '{"PasswordMD5Sum": "CgYPNxsyRONc8GL9", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3rajY4n7rUDRzqUd", "policyId": "Y0YQ7Qg7BzxGWKrW", "policyVersionId": "RKDQ7JJQ20meRU4M"}, {"isAccepted": true, "localizedPolicyVersionId": "PruMZGnZMwb75wqO", "policyId": "KSceLOYJvuihvoaV", "policyVersionId": "cCeJFXSNzYeULg8m"}, {"isAccepted": false, "localizedPolicyVersionId": "SzR1N8qB2C2BGtnW", "policyId": "MEOQf5ViPKHX8SsM", "policyVersionId": "iUqMtnwIOz63fJ9P"}], "authType": "nLlGGtnYd3nIXE14", "code": "EgKL6jbvK6K6eXtP", "country": "EulpHKtZ9WZQo7dS", "dateOfBirth": "XgziGdtlawymbe2W", "displayName": "fcR97gkrRgpZ4qCt", "emailAddress": "pH2sRAXPh01ARC85", "password": "Z94HCd9IByluSWAY", "reachMinimumAge": false, "uniqueDisplayName": "dWII59FYUFVAV8RV"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
