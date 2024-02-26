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

Example: '{"affectedClientIDs": ["F6XNq8Uk8EwR940Z", "G3cvm4srNA7JEvRy", "oXLIR9QjVNcgF1mw"], "assignedNamespaces": ["nMZvA9dQbZwhdZX8", "1fBReO1m8zhVeXeq", "0P2iJORMhmmFzR7M"], "domain": "HEJ6uPTgOyGErHkG", "roleId": "78sU1d2P0HSyIcnF"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
