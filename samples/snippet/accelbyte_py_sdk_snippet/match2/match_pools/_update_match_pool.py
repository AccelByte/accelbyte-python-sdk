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

Example: '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 98, "match_function": "MTlvyxnbuaU5hdMh", "match_function_override": {"backfill_matches": "wwclaeI32yoi1atr", "enrichment": ["IrPcTjjAZ9JHGkDi", "DmiQTh4CLs9ktXVV", "xhroC2oUnwqYESu3"], "make_matches": "EJTt3O1DjiEPzSGP", "stat_codes": ["7lJT89EQEBvQz9sX", "iUm6OBU7IiBbyujd", "EuBJP6zfGjrISN3A"], "validation": ["nNntwgXaKl8EBB1t", "8xwZk61Agt9ySRT8", "LUJRP11a3Y3UVDFZ"]}, "rule_set": "Hu6V4hPol6KI6Mhg", "session_template": "oG3FidNCCY43NgzG", "ticket_expiration_seconds": 73}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
