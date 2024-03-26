import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_claim_by_keys
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimByKeysReq
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetClaimByKeysReq
claim_keys: List[str]
regions: List[str]
session_id: str

Example: '{"claimKeys": ["3gnAxh47XeuRg9vf", "Nqczh3bOsv2YjJHH", "g2dAOvXjJnzuTCUW"], "regions": ["a62m6cGzJoekytVz", "WjBAyaRVrGQqodZp", "jX381OAYz7Vi3E3r"], "sessionId": "NanA8XDrcit08FTe"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
