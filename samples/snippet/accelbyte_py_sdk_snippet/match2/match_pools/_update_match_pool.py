import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import update_match_pool
from accelbyte_py_sdk.api.match2.models import ApiMatchPool
from accelbyte_py_sdk.api.match2.models import ApiMatchPoolConfig
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiMatchPoolConfig
auto_accept_backfill_proposal: bool
backfill_proposal_expiration_seconds: int
backfill_ticket_expiration_seconds: int
match_function: str
match_function_override: ApiMatchFunctionOverride
Definition: ApiMatchFunctionOverride
    backfill_matches: str
    enrichment: List[str]
    make_matches: str
    stat_codes: List[str]
    validation: List[str]
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 62, "backfill_ticket_expiration_seconds": 2, "match_function": "j01I0u9DRKhTJhcY", "match_function_override": {"backfill_matches": "vtT69IQvGLAqmuXl", "enrichment": ["rHsiGp0Hydh8WNeh", "knxWNrDX3CpyHgIV", "4mCXW7I4jJnqS1Yk"], "make_matches": "hJvjDWQYUTXVtQef", "stat_codes": ["zy6KmObE8sbJn8VP", "jVgD4TangyMHwXLU", "w4ORByfMevuDAqwD"], "validation": ["GO4fzT97WCViDCxs", "VUcrdH5Ej8LKVCYD", "NQvCiCppbXjCJO4b"]}, "rule_set": "v1ykAYJBGyoWud90", "session_template": "9c3mQ9JFps7D3Bmk", "ticket_expiration_seconds": 55}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
