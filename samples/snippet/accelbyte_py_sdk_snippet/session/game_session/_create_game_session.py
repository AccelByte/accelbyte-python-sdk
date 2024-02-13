import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import create_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsCreateGameSessionRequest
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsCreateGameSessionRequest
attributes: Dict[str, Any]
auto_join: bool
backfill_ticket_id: str
client_version: str
configuration_name: str
deployment: str
ds_source: str
fallback_claim_keys: List[str]
inactive_timeout: int
invite_timeout: int
joinability: str
match_pool: str
max_players: int
min_players: int
preferred_claim_keys: List[str]
requested_regions: List[str]
server_name: str
teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
text_chat: bool
ticket_i_ds: List[str]
tie_teams_session_lifetime: bool
type_: str

Example: '{"attributes": {"sqOkRLZrKcVY23kw": {}, "qPwQ741g7Le3BR1W": {}, "tiCWalJhtWjbzZCH": {}}, "autoJoin": true, "backfillTicketID": "GecWDqSsdwbfZoLn", "clientVersion": "9rUACEjgmC4FXrqQ", "configurationName": "MNijr2NEprNtus5A", "deployment": "gVDaAK3VWA8B1bzS", "dsSource": "v2r5SkxVmDMx8hfj", "fallbackClaimKeys": ["cNxcnLN4x4ESXMjd", "XWH2ITQ6ymDNWguf", "NZlXAVsWKDtg0c3M"], "inactiveTimeout": 62, "inviteTimeout": 65, "joinability": "DpBMR8HHWqhnAKIC", "matchPool": "YvW6mm7oBgmQOPcd", "maxPlayers": 40, "minPlayers": 22, "preferredClaimKeys": ["WbXD935exmC22FpS", "cerdRQs2CVW7bFPg", "MidkszCdnMuVcckT"], "requestedRegions": ["RSuH3KuY0coiWPyf", "NibUP9h0eBroTvWG", "tIkfnrPPabodj6pv"], "serverName": "MpR45cXfnqN19wHP", "teams": [{"UserIDs": ["wRhsudnXtgFlERX0", "C9tpTH9CLHA2fZjW", "gFRjH3MGd3ss0Z1s"], "parties": [{"partyID": "3L295DQNnJ6eX66t", "userIDs": ["KjmsWMOqK0m3167b", "Ze7kbKv0dJCpmwzf", "YfDQ04MkbEFFSulE"]}, {"partyID": "GZZjCNERqpOEqlkR", "userIDs": ["q98pSaZoGEm555a6", "IWOURwmeQP6oMxwB", "zI8O4r2p73v54gDM"]}, {"partyID": "enwUlj4DUSK7E3zV", "userIDs": ["bE2LkM8iKmzDwb4G", "tABMhtRRue4OfAMe", "pfips02pPaBXwDCt"]}]}, {"UserIDs": ["In6h2wAVRWHfdVdd", "38xtlSlbMKS29UWT", "oPcHJbg9JveEIZCm"], "parties": [{"partyID": "tDEOlmVICxNVtXJt", "userIDs": ["nzHsJn6UsJAj9o19", "h0nd3VDi0cjvA5pj", "NLwjrJY5L4j4vCgr"]}, {"partyID": "RPXlYNaAIpGQRZXd", "userIDs": ["Z8YLmPubifuwqfX3", "nT3PxW9DggSaNDNg", "rddkK0rsV9Rm735F"]}, {"partyID": "FPuQsjhqzcdghRig", "userIDs": ["rU87a3Nl1PHRsHc5", "IU4LGObKjYTiSuKd", "OCwjDob8fy14Nhsi"]}]}, {"UserIDs": ["UNwTcZ4CUAW1iweK", "VnRMsTeEGn8vJjrJ", "UFrmQkP6JjZV6dDn"], "parties": [{"partyID": "3xcHblu2t0zjR3Vv", "userIDs": ["V5LfqsbVVNwwucJN", "CTxRj9R6I7lgLJq6", "aX7ClLhv0inj3NIA"]}, {"partyID": "gYurq7j81nJ06iHf", "userIDs": ["RVehmOrQHS5Qwa9E", "jgc3EsVfvjEBDieL", "WvAx2quPgKiMSibm"]}, {"partyID": "RddKkRb2NH5CgiVC", "userIDs": ["tsVrvcoRB4wCAEuN", "m1TmCpYl3tmnJXjL", "AJpiKFpYURN9xfT6"]}]}], "textChat": true, "ticketIDs": ["AU2dwCn4ZYiJvImB", "a7vc2CQQFt5tjjHi", "1pPHIcdTb6teB65h"], "tieTeamsSessionLifetime": true, "type": "qLZc9zWVbddIrEo4"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
