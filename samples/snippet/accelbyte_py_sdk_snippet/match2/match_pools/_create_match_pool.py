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

Example: '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 11, "backfill_ticket_expiration_seconds": 60, "match_function": "RNVOJ8of7FeGgzX3", "match_function_override": {"backfill_matches": "30XWAWyefV1ahx3K", "enrichment": ["XyMZefFVA4EoHveI", "qWtUg2HbUZ005xF2", "ANbYQMLDweLIvLG2"], "make_matches": "no9RfPyQOF59yyRS", "stat_codes": ["JUTss07uQxjax2LN", "8ptmjeiqQqAFkdvU", "pO9DWBojy69LJItu"], "validation": ["5NxT3b87KP0D4vYw", "E6tS1RcHBIjWjK9r", "xPD3QMBfkYkb7pzq"]}, "name": "oi0thTTsCUiIZQfY", "rule_set": "b2p04GuFJQabjb7a", "session_template": "4bTdMpQIWcTSJZRq", "ticket_expiration_seconds": 37}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
