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

Example: '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 55, "backfill_ticket_expiration_seconds": 15, "match_function": "dpOhWVsk7X9WsLz0", "match_function_override": {"backfill_matches": "chfJMNxoClzsYyIn", "enrichment": ["SDkwDQ60qjEweJ8U", "eqj2g3AE3C06Wwh8", "MU2MjSvoxkgRSO0U"], "make_matches": "XItb2mQIJYFWBBRj", "stat_codes": ["nXhhKdCAXdajNEau", "V9muBlVMlKlmYzYR", "LGcF3Vw8XJGITlCb"], "validation": ["O6uwXDQDM7EgsYVB", "g7W2QTd2qk704jre", "Xf3Ca3HHW3LtPIh5"]}, "rule_set": "AAQ32JfCrb60Kctc", "session_template": "1YLD2oL4PHuxBbWi", "ticket_expiration_seconds": 1}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
