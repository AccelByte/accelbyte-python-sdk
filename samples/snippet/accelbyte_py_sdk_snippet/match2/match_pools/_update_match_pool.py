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

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 84, "backfill_ticket_expiration_seconds": 2, "crossplay_disabled": true, "match_function": "1uR71xl4S9GSy9UD", "match_function_override": {"backfill_matches": "rcGDAwnjGUZzUCVG", "enrichment": ["fV4QvCiwrt9SqRTa", "ZC9gaQdIIBD4Qczv", "tX637tx7GRQVnVwx"], "make_matches": "G1wQHZCK9VTAdqCQ", "stat_codes": ["TtV6mF8E6gbnF5Dq", "EOQKaQBOA58H6hmA", "pRkYfiKr5he2jScc"], "validation": ["PRQ3MGAAREGQ8pD7", "LATYokRe54WmWyRj", "ArJREN4ioDD0Oc8U"]}, "platfrom_group_enabled": true, "rule_set": "2XVia2XyQxlgOQ0e", "session_template": "qeKrEr4iclDV2d62", "ticket_expiration_seconds": 59}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
