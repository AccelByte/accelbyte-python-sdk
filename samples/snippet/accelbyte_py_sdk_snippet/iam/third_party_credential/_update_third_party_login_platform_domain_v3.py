import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_third_party_login_platform_domain_v3
from accelbyte_py_sdk.api.iam.models import ModelPlatformDomainResponse
from accelbyte_py_sdk.api.iam.models import ModelPlatformDomainUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPlatformDomainUpdateRequest
affected_client_i_ds: List[str]
assigned_namespaces: List[str]
domain: str
role_id: str

Example: '{"affectedClientIDs": ["nCVda84jdgk8d1EP", "kKkCSE93kOW2iiig", "c8OhVa1iOObAeIOB"], "assignedNamespaces": ["mxksxtB4LShrDXV3", "o1In3JzgBErpas6r", "m3FG6eKoeImY0fBG"], "domain": "tbdKS8isqhfQiYXC", "roleId": "mWsndigRGesmZzKt"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
