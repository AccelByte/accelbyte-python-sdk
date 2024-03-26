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

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 54, "backfill_ticket_expiration_seconds": 11, "crossplay_disabled": true, "match_function": "rJFDKHGGC71kBarX", "match_function_override": {"backfill_matches": "NM8CpNZ9dSgN5xBQ", "enrichment": ["TTDOD4x46XpdQhEe", "2vdOEUNL98qvGu19", "ogICqGsg12r1Fb4t"], "make_matches": "vplrnkqUnzAjfAPX", "stat_codes": ["f43Q9t350sBvDn2P", "V3CreDPqlMOh24Ya", "EodHEwZaxtiYhiD7"], "validation": ["UAgWAHlY7BjkFOOQ", "QzST3EV37AO9KZhq", "IwhTOjsNJqdUz9AL"]}, "name": "ft7ZkJZvR1Mx4t0P", "platfrom_group_enabled": true, "rule_set": "GAWGxFUVBTeB0LXb", "session_template": "DOsGkQG7ENpjvv7O", "ticket_expiration_seconds": 14}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
