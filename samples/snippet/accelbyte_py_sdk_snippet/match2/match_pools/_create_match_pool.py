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

Example: '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 45, "backfill_ticket_expiration_seconds": 80, "match_function": "YBX6Zw2nQmd9di3e", "match_function_override": {"backfill_matches": "GIFFHHtEAdiJaTpH", "enrichment": ["xxyVdZqEz9L2uPvb", "yF4f0cYMRNbwpsOV", "nzqE12BwWR2U8hxM"], "make_matches": "klcXcDsIyXXXBUuQ", "stat_codes": ["Tej2AMzwzUSMhaiK", "OnvOG1MQAU2LZJAZ", "TyONPhtCaEtvTzpI"], "validation": ["CakUPcNJoywUUvhW", "EQmMS096IlUmhq2I", "24Psp7PxjKKmcolX"]}, "name": "IWQaRV2UrZ1PF1VR", "rule_set": "ueH73FneoNuPU8gN", "session_template": "oHVzl0qnMlns5iYh", "ticket_expiration_seconds": 84}'
"""

result, error = create_match_pool(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
