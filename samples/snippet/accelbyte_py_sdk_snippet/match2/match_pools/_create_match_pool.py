import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import create_match_pool
from accelbyte_py_sdk.api.match2.models import ApiMatchPool
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiMatchPool
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
name: str
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 30, "match_function": "HQpYFGS8LvwSLw0e", "match_function_override": {"backfill_matches": "84CzyN7zN7wPag9L", "enrichment": ["44KJBYzM9UlBzPtB", "lpAoI59uxYxj0Xp4", "1bxuniy3k5rz8EPb"], "make_matches": "O34LgPLhQLD6pbTe", "stat_codes": ["wcYx2YkfOcBF8L3Z", "WyZj7L6zOOjOk1Ua", "fs8FXApPN1pscvQH"], "validation": ["AbBVh4cvs3Vaf70i", "5rf1hejMwOsfraN2", "yosoAmEAkslZ1Cpp"]}, "name": "pdCks5Olp2vIXqpe", "rule_set": "xgREQjY1u6WpH7kd", "session_template": "rvVmcyso1Pgbqg7f", "ticket_expiration_seconds": 93}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
