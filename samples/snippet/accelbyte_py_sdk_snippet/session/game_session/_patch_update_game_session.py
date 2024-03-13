import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import patch_update_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsUpdateGameSessionRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsUpdateGameSessionRequest
attributes: Dict[str, Any]
backfill_ticket_id: str
client_version: str
deployment: str
fallback_claim_keys: List[str]
inactive_timeout: int
invite_timeout: int
joinability: str
match_pool: str
max_players: int
min_players: int
preferred_claim_keys: List[str]
requested_regions: List[str]
teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
ticket_i_ds: List[str]
tie_teams_session_lifetime: bool
type_: str
version: int

Example: '{"attributes": {"ksqubo4vif21EpBR": {}, "k5jGYUAwjjplIBKb": {}, "ZAIgqhxrfP3hzcCj": {}}, "backfillTicketID": "XDQwl3iTr5AFo85j", "clientVersion": "nxjZ63M6K5536E0e", "deployment": "08oyMNpNAWBm2urf", "fallbackClaimKeys": ["RfvCpBAozFKmtk3R", "Lcq70nGqBXzjjB5Y", "W3i5xb2aELBLV9Wm"], "inactiveTimeout": 21, "inviteTimeout": 11, "joinability": "CWrmO0A8x0qiOVPB", "matchPool": "XQYz7E1oSNklC0tV", "maxPlayers": 93, "minPlayers": 95, "preferredClaimKeys": ["i2weGI0UKHhHNA9H", "i4kjhOFQFXL7QmxF", "e5XUF0TcpbuZUnIW"], "requestedRegions": ["CHKQrnVfFXyyAGjc", "LjbNkRuK11tvKW6w", "nnTDWXbK7i6yFhFM"], "teams": [{"UserIDs": ["ZXnv7j2O6oZHjttP", "QgqWxWfEwQwCVYWE", "UHIiGpPvz657LwFe"], "parties": [{"partyID": "7Zi2VfQknuwbvy9c", "userIDs": ["ce7Uhe2gy9cCrOZD", "Z6vfBP2shRfop5kh", "WMK3P7zXpACcDbdc"]}, {"partyID": "0EodxsogqDwdxPyq", "userIDs": ["MLHJf23jq9N1NdEv", "gt338tDlQcEMioVg", "L1LNZAKBPJ130Ice"]}, {"partyID": "pJ81aHSSnUahCAT4", "userIDs": ["OF7nsJynlPs2k3Rb", "br1CHBeQBViTv18K", "UsVbbJe3jW3FS3Nr"]}]}, {"UserIDs": ["eqzbYgmkw8iFiWto", "8kseUQoycXGfafkT", "8xfVhNKiOjmZi4PP"], "parties": [{"partyID": "1TJf2wALjjKdcc0s", "userIDs": ["5yUJhjnEwb8JHXB4", "tu96QttPcebCZDtw", "6TaqYMcEDHst333f"]}, {"partyID": "9Asfl3QjFds8jh2J", "userIDs": ["AJRWNqinYBrLxAhe", "9cYjhyIVuehWTf2D", "S5yaD0JiE0OSdKUx"]}, {"partyID": "hq14kqg8Y8mKFlw5", "userIDs": ["5vSUEaKxvWPosCFD", "NDhgnwHrkkU6TVbv", "n7PDIqYRLJxpepRm"]}]}, {"UserIDs": ["ahBjqWwrXZhryogF", "lDYdRRAszUZqo24E", "g6mXNAeOP7XUjlu3"], "parties": [{"partyID": "KiaOVDVK6ySeT3iG", "userIDs": ["tV0dLvMQOdIkkN8y", "BmQH5f4Kw72xeIxs", "IwRcSWC5e2bKmQOo"]}, {"partyID": "ekrvzdC9afRSbJj4", "userIDs": ["GQyYHiY5PYCmWJQh", "H90YCup9aCGgI0lX", "0eDc9awqdsy3XI0J"]}, {"partyID": "flRZ98hvoAyxr22E", "userIDs": ["ZPnvDuXyM5LdmNkH", "ZPbP1r4WqlTB40C8", "2r9IwSUhsTiZJlip"]}]}], "ticketIDs": ["k4M4JvJR0EOjUK5z", "y5zmWSaVP8RlmMK7", "zuO2jRip13SYbI9c"], "tieTeamsSessionLifetime": true, "type": "oJe2ThSRvwAtWeId", "version": 68}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
