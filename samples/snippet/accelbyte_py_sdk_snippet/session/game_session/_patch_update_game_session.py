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

Example: '{"attributes": {"EtrpWqtx425s33Dr": {}, "4Lfz1YnDLJXVLu0g": {}, "xF3kdZvQdBUnRonY": {}}, "backfillTicketID": "UkpnzTTtqKxpiFJu", "clientVersion": "kQJnCqPksEWTjs2B", "deployment": "j85HObfnGZm24Li2", "fallbackClaimKeys": ["f6NSetQc8YCyjgkU", "AaftzED0gtWfrREl", "lgX8HjgcxrMyxEb1"], "inactiveTimeout": 17, "inviteTimeout": 56, "joinability": "sW27w0quj7qes3BC", "matchPool": "O8iL8ichmoCc8k0y", "maxPlayers": 45, "minPlayers": 60, "preferredClaimKeys": ["MJB3HeeoWoFyXmCA", "Plm4uWBJHjZxYMLy", "Mrkue8BNRWLPb2et"], "requestedRegions": ["S2qCCQ84v8eLPDCG", "E5bBLhK9vc4hwiJ7", "GBzimjEPR9vXi2DS"], "teams": [{"UserIDs": ["FhmUIOeMDk4eWLOw", "CErn022fzzLSJeWO", "yLqdH7Ftb112X4W3"], "parties": [{"partyID": "bSgl4qyLEKJsA4zn", "userIDs": ["zIKqSsUPAYIlQM9Z", "Rch1gd4bHQLybv4z", "ipbEfl2b2hlkm9zh"]}, {"partyID": "GfBxdyogewhS46v7", "userIDs": ["9vnxskQZKmis5OL3", "LZfGAdzLe7fonH9D", "veZLHoty8zjfLgHn"]}, {"partyID": "rIYEqvleq5Rdm5UF", "userIDs": ["YBWz2bsEF08rF0sq", "LgDfW9Y7QPvvNRwI", "WxgSTfdnKpxHX1Tj"]}]}, {"UserIDs": ["TPM50rHqnIeImtHg", "PYRafIgCMTtFVAbS", "g0KAWTMolg3gQoYe"], "parties": [{"partyID": "4B00ifhYk91Wn5Xn", "userIDs": ["OEd24VQeVnAv4FRm", "r3noXHbU0Obb2WWY", "WkFXnd18Nc00WS1j"]}, {"partyID": "xz7aABvRc1l9bSJY", "userIDs": ["RftoPUzxv5DZz1oH", "4UeBC2hQN0EgubMe", "kf74bLyL5WjUP1zC"]}, {"partyID": "VKNO2XLJriXqfPmY", "userIDs": ["3779HILl37LnRJy5", "scNYeSGm0PX59QI4", "shsPvAjixA3RjsS6"]}]}, {"UserIDs": ["utRo8N8tMrwDaZQU", "jNFOAz2JHYGjFzPV", "IiGLUEBJHJy3ObxG"], "parties": [{"partyID": "UyMXIloqGhyeAgo4", "userIDs": ["K3AEOsx6T7tkLPcb", "ndcgXc5ak1FUWSW4", "VR2OFzhxFNtvDONt"]}, {"partyID": "kB32vy5fSqFU6UX8", "userIDs": ["AneTtEp68DRz04Gw", "zz2nEcKEENupV180", "q0QBb54EOlaLww6O"]}, {"partyID": "3em4qIcBgAGzDK2M", "userIDs": ["lNV3B0kFclSUZ0SF", "CyRQF1xp69i8SeZe", "TkCfzSG868tojebx"]}]}], "ticketIDs": ["PAJrflcyCWfkATOJ", "cgFr8H6hkwKnD3AB", "gmczYklWnJ22245U"], "tieTeamsSessionLifetime": true, "type": "Xzf7TEBriN0SeJwu", "version": 98}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
