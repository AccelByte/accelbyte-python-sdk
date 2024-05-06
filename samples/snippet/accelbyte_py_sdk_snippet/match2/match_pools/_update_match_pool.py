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
platform_group_enabled: bool
rule_set: str
session_template: str
ticket_expiration_seconds: int

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 16, "crossplay_disabled": true, "match_function": "ivok7GpLp4ZyzDte", "match_function_override": {"backfill_matches": "4ozXlPTplXqb0vpO", "enrichment": ["Et2NrPwWhwz6TO9e", "JXh5PRbPivNP1iBq", "m0Zj9C3e7UtjSzZi"], "make_matches": "LJUL12debUm3RAKn", "stat_codes": ["LYpiiFPinz1yiNCB", "RGLZO9TE694tGR2W", "4nL0LgTqMoCEuseI"], "validation": ["zrfFHzrjDFLdsdha", "YWLeuoSHGtSiCDC7", "tcn9yvxrn0mfRNUQ"]}, "platform_group_enabled": false, "rule_set": "1Zc1e7K2IrgQRKvv", "session_template": "5cnbUTB0qMcFsqNj", "ticket_expiration_seconds": 93}'
"""

result, error = update_match_pool(
    body=body,
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
