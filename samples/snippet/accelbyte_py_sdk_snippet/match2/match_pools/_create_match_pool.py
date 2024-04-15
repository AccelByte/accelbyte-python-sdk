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
crossplay_disabled: bool
match_function: str
match_function_override: ApiMatchFunctionOverride
Definition: ApiMatchFunctionOverride
    backfill_matches: str
    enrichment: List[str]
    make_matches: str
    stat_codes: List[str]
    validation: List[str]
name: str
platfrom_group_enabled: bool
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 33, "backfill_ticket_expiration_seconds": 83, "crossplay_disabled": true, "match_function": "95mFdR869fWik2u3", "match_function_override": {"backfill_matches": "x938SratTkVql4a9", "enrichment": ["2Wa8dUuz8GJWPvE9", "Z6u68qO5EEN5eoK9", "COaGpp4gO72XQOb7"], "make_matches": "KkDYgqn5rLqv5tu1", "stat_codes": ["IWhxBI3BAoFfwJXR", "PW90uHh2UL0hgIrU", "jXfInAL0c9o9wTvr"], "validation": ["j1yyY0oaWpLDRjDv", "cBG2iNjPbhdRJWP7", "47pp1aeOZhnGHMz5"]}, "name": "3LQTPLtw6e6XSeEU", "platfrom_group_enabled": true, "rule_set": "NNwSXEgkN44MzmEs", "session_template": "DioMupmQkvehSfPD", "ticket_expiration_seconds": 55}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
