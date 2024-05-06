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
platform_group_enabled: bool
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 38, "backfill_ticket_expiration_seconds": 76, "crossplay_disabled": true, "match_function": "Rz2b7LxZC5VtiRyl", "match_function_override": {"backfill_matches": "IWkceP3RPZ53ntv0", "enrichment": ["TSDJ1GHGDOg0xW25", "sOS9xK5Qnwd0GAi5", "c8rRNtny0bDoPmbV"], "make_matches": "uxaonROewOQ6Vspp", "stat_codes": ["MXsClbUpwBEeCIJJ", "3o0z0pdOTdLBbtPE", "Fch94cEf1MfA2FeJ"], "validation": ["OIed60hnFiU7PtZU", "7YEDIVZT8chmOM8P", "TBHxLbqn0Gw0CPHo"]}, "name": "zkrYsjcz4loPRpZ1", "platform_group_enabled": false, "rule_set": "PLxnc0xyFm2aHxiL", "session_template": "2GdqTO24UE0t9Dem", "ticket_expiration_seconds": 32}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
