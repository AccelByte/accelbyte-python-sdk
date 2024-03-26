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

Example: '{"attributes": {"g66t9LMjb2h2hC29": {}, "Jo9nGveDmSDY8AYz": {}, "Gn2h6jAsYEdzNf8e": {}}, "backfillTicketID": "CBbwqjpG2XrJkIs4", "clientVersion": "pMhk9fLnhLzl9459", "deployment": "ed3zOmTKswxipqOw", "fallbackClaimKeys": ["BjseJAw81xJPPQxX", "K7svwE1rzagLqxtu", "FPlQqx8DFXxLXdOP"], "inactiveTimeout": 83, "inviteTimeout": 9, "joinability": "8SxP6Y0FxLVDNZ2h", "matchPool": "SP92xIYFl99KPvhm", "maxPlayers": 56, "minPlayers": 36, "preferredClaimKeys": ["RkLko4lnFAZaHMrB", "D6GXkZR4YT5B17Fl", "9QLT7ZEWOi8yytmY"], "requestedRegions": ["gsnPX0rYIpYoMxBR", "v8XaOYnGVTaoLg8i", "eTD83uELsSlhQHkK"], "teams": [{"UserIDs": ["qxfzyb70NiU5ex55", "yuZEJVPMA0LdbrX5", "Qg5fiP58AD8644Dn"], "parties": [{"partyID": "SUnCnmXzTFLMRWZ0", "userIDs": ["mLVYNQAcQP8i7Rfa", "YWcIRTxwRHTAv1tV", "xIUn858dm9cCixA9"]}, {"partyID": "FTAQeXh5Uyr18ELG", "userIDs": ["1ViKNqmRMLXzFTxE", "6s6yeD9uO03qQ0qj", "5JOUEtrnY8EYLI3E"]}, {"partyID": "PKfZSK0MWrcc47wj", "userIDs": ["HcY6mzSeEQoP6bDv", "d9oX1QjpiaF1IdVG", "D3swEXDZIjx1Osz4"]}]}, {"UserIDs": ["brQBYqfERAD37jFP", "YRiPka2ZCzUA9dJ1", "B6LrRGCsabR0D2AL"], "parties": [{"partyID": "NqIIW1qcO0qPTg5Q", "userIDs": ["QdpmjQDmLVOuSEBe", "u0CCQ2AXHwFCrPMH", "WDxw4cpO7EJj22Nn"]}, {"partyID": "Nq068f1cfXktmcah", "userIDs": ["m1f4gexgFVAnIjnD", "CzanrS2ZYKyRFRSJ", "j9Qp7sr1EN9YWNua"]}, {"partyID": "R4qaXo4AVtQEEfhD", "userIDs": ["sUcsBwb52qtlHDZE", "fEeOCwmzF5SmqRnM", "UKU41KM7rfufjtmd"]}]}, {"UserIDs": ["Av66lL5arOvP2HLN", "3s03p6nPF5iKQ37a", "aJY9kehP3U5rdXug"], "parties": [{"partyID": "nx3ToCzEoohM7EBl", "userIDs": ["IHskdFzGpmFE7jJV", "afqwnzxWnzCNHttj", "Gs1SzaWnI39nz9V7"]}, {"partyID": "knoWbS6odH3RGVzw", "userIDs": ["0vGkrc7dt3udw2cZ", "DeLNUZnpkj2WkA3L", "kxLFVYf3Wf6ApPN2"]}, {"partyID": "1mgJ0cBSzDYbdbmi", "userIDs": ["tYvIBfmk5H0K8dz8", "OzeKNLGzTLGGVrGq", "nrNpDFaULJhTOopv"]}]}], "ticketIDs": ["6788lSZm4uG8OyC9", "ftEYpk9tNfkpG713", "H18MeNkZFPqOraHU"], "tieTeamsSessionLifetime": false, "type": "BVA0bvmxVql8vLpX", "version": 59}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
