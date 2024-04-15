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
crossplay_disabled: bool
match_function: str
match_function_override: ApiMatchFunctionOverride
Definition: ApiMatchFunctionOverride
    backfill_matches: str
    enrichment: List[str]
    make_matches: str
    stat_codes: List[str]
    validation: List[str]
platfrom_group_enabled: bool
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 37, "backfill_ticket_expiration_seconds": 19, "crossplay_disabled": true, "match_function": "8mX9OFzwLyxpauuB", "match_function_override": {"backfill_matches": "5rIrWSXXqQq4ykKU", "enrichment": ["wHkHA5O8xWPKDx4f", "vt2x69ldO17m5keS", "h0JpOBasgtVf1s6Q"], "make_matches": "31HmZV29KDOpUoSQ", "stat_codes": ["nhvfqgwSXSxjyKBF", "MQS4q9pLkhZw5e4S", "gKESWROyspPaytF2"], "validation": ["9QVtkyky6l2gi4Qj", "z64FsAGfuytsf0lG", "QZxCEHkMVSKtilAa"]}, "platfrom_group_enabled": false, "rule_set": "GqdKFlFekKPGyCN6", "session_template": "1f37Gqw0YpYDhOn1", "ticket_expiration_seconds": 40}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
