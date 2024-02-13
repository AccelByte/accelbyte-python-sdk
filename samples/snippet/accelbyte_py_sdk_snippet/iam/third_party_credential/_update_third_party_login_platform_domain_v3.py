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

Example: '{"affectedClientIDs": ["KIEdSEj7oY8RCoMR", "xGdtTGWzf3aV0ZAc", "olieE530WhNVa4ND"], "assignedNamespaces": ["0hYQFPGZF1TekL2n", "4RwOHvYYvwjdJfky", "rXKDeP1m9bwEEV6w"], "domain": "gFH6CVf6JasHtvsG", "roleId": "iYnnLMMOifCFaOq5"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
