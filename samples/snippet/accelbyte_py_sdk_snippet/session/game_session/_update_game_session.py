import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import update_game_session
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

Example: '{"attributes": {"WxJPcW7OAe4GZ4df": {}, "tdCFosuy3bpGL1U1": {}, "CR6xzCYH9URIP1Pj": {}}, "backfillTicketID": "aQzXeOUAdvOjSSoJ", "clientVersion": "PVcyFAcSlwrzsPgx", "deployment": "KEnQf5SUXCfe5Ecm", "fallbackClaimKeys": ["MmMH6Wo4zYbjqsgy", "MFlzCWSq2pMvyryO", "GDyS7rM0Jd1PppOc"], "inactiveTimeout": 3, "inviteTimeout": 98, "joinability": "gfKSHwxl7mNEDY1a", "matchPool": "BfN5qUK6lG0jhFAw", "maxPlayers": 16, "minPlayers": 40, "preferredClaimKeys": ["cUHF2Nb9pCifGuv9", "QCV4ZmsaOiNKDVGc", "rjAoS5Sjz9cIulzn"], "requestedRegions": ["AL51cusJRuJvHIbK", "Iwkjp7kfCFRhHF9J", "oeXqZyMA3jbRf0DS"], "teams": [{"UserIDs": ["UOHgq2fFKtsQdug6", "h1NDfyYjiZCnBmlQ", "sKxE2VhYRGrXBwDr"], "parties": [{"partyID": "CarOwV7JtTO6jVBj", "userIDs": ["kFxa0PDG6P9CEV8w", "JjJh3i3r3G5eAULO", "6OIAh3wSdqbSNhNW"]}, {"partyID": "DyDkfupHIg1cJnez", "userIDs": ["R3CLq8zx2OEbhsCb", "g6DVacf27VvQtYkO", "XeypGMogbfwXihHF"]}, {"partyID": "HpGHFWCAGhVu6cy9", "userIDs": ["MC2WF8x86yB7P1rd", "VdVgJG5vyl7TmDlm", "LJCw4mhfQqQujje8"]}]}, {"UserIDs": ["YzEKb5xiB6BUUXaM", "QtKp4e1beR2Y8o7v", "CLQLEth6tR1ZihEf"], "parties": [{"partyID": "YayelhYYgRYBHJPt", "userIDs": ["LOG6AK4MAsMTFgD4", "jTzLjxQNhbJVr4Oi", "xo5DiirI6LtKLQR0"]}, {"partyID": "Nwcq36cQH3nEp9uA", "userIDs": ["UrqFLKcA0iA2zL2B", "HsEANsmKcCLMCA88", "wQZv9flUulHRHVY4"]}, {"partyID": "5exU3glQrLxfOvvj", "userIDs": ["44O63cT40D6LPUp3", "5bGYAXZrYjK4IfGY", "DX2Ny3YJQkDlesjI"]}]}, {"UserIDs": ["a21vmtDssJoslAQH", "mpFcFTb7cUHFgsqk", "5l9R7Ns0vhhroXdy"], "parties": [{"partyID": "BM6sKWC4vgMqzQg8", "userIDs": ["cyLxYCf7kNSukd2w", "MDxQNLbx4GeY4wKK", "ntGTd78XslXGPCNj"]}, {"partyID": "udf74tyHIvxQAYta", "userIDs": ["KZIGUw4I6h1PWp7T", "YiWdRUCrROIi79JV", "jbRKYdNmCOzAUqX6"]}, {"partyID": "kMk79dzbu2QJa3zM", "userIDs": ["PMeb4E8aondTLGVz", "DnaYDvVewmaiikfn", "fImWX6IujGxATOAy"]}]}], "ticketIDs": ["a94hg62l5ikToZoN", "oleuhnGxtgyEEF76", "Ah0RHiyWUrSwy1Kp"], "tieTeamsSessionLifetime": false, "type": "j84C3IwiDnFgM4fT", "version": 74}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
